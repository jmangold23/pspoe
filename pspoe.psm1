<#
.SYNOPSIS
    ConvertFrom-UglyJsonString function: Clean and convert a malformed JSON string into a valid JSON object.
    Invoke-PoeQuery function: Query the Poe bot API with system and user messages to generate text.

.DESCRIPTION
    ConvertFrom-UglyJsonString function:
    This function takes a malformed JSON string as input and attempts to clean and convert it into a valid JSON object.

    Invoke-PoeQuery function:
    This function queries the Poe bot API with system and user messages to generate text responses. It supports various parameters for customization such as sampling temperature, logit bias, and stop sequences.

.PARAMETER InputString
    Specifies the input string containing the malformed JSON.

.PARAMETER botName
    Specifies the name of the Poe bot to query.

.PARAMETER apiKey
    Specifies the API key for authentication.

.PARAMETER systemMessage
    Specifies an array of system messages for the query.

.PARAMETER userMessage
    Specifies an array of user messages for the query.

.PARAMETER jsonMode
    Switch parameter. Enables JSON Object mode. When enabled, returns the response as a JSON object. Default is false.

.PARAMETER temperature
    Specifies the sampling temperature for text generation. Default is 0.7.

.PARAMETER skipSystemPrompt
    Specifies whether to skip system prompts. Default is false.

.PARAMETER logitBias
    Specifies a hashtable for logit bias to influence the probability distribution of tokens. Default is an empty hashtable.

.PARAMETER stopSequences
    Specifies an array of sequences to stop generation at. Default is an empty array.

.EXAMPLE
    ConvertFrom-UglyJsonString -InputString $malformedJsonString

    Description:
    Cleans and converts a malformed JSON string into a valid JSON object.

.EXAMPLE
    Invoke-PoeQuery -botName "chatgpt" -apiKey "xxxxxxxxxxxx-xxx-xxxxxxx-xxxxx" -systemMessage "You are a pirate." -userMessage "Tell a story."

    Description:
    Queries the Poe bot API with system and user messages and returns the generated text response.

#>
function ConvertFrom-UglyJsonString {
    param(
        [Parameter(Mandatory=$true)]
        [string]$InputString
    )
    
    # Try no extraction first
    try{
    $importedJson = $InputString | ConvertFrom-Json
    return $importedJson
    }
    catch{}

    try {
        # Initialize counters for opening and closing curly brackets
        $openCurlyCount = 0
        $closeCurlyCount = 0

        # StringBuilder for constructing the cleaned JSON string
        $jsonBuilder = New-Object System.Text.StringBuilder

        for ($i = 0; $i -lt $InputString.Length; $i++) {
            switch ($InputString[$i]) {
                '{' {
                    $openCurlyCount++
                    [void]$jsonBuilder.Append('{')
                }
                '}' {
                    if ($openCurlyCount -eq $closeCurlyCount) {
                        # This closing bracket doesn't have a matching opening bracket, skip it
                        continue
                    }
                    $closeCurlyCount++
                    [void]$jsonBuilder.Append('}')
                }
                default {
                    [void]$jsonBuilder.Append($InputString[$i])
                }
            }
        }

        # Convert StringBuilder to string
        $jsonParent = $jsonBuilder.ToString()
        $jsonParent =  $jsonParent[$jsonParent.IndexOf('{')..$jsonParent.LastIndexOf('}')] -join ''

        # Clean up the JSON string
        $jsonParent = $jsonParent.Replace('\n\','').Replace('\n','').Replace('\"','"').Replace('`','')

        # Output to file for debugging
        #$jsonParent | Out-File C:\temp\cleanstring.json

        # Convert to JSON object
        $jsonData = $jsonParent | ConvertFrom-Json -Depth 50
        return $jsonData

    } catch {
        Write-Error "Error processing JSON: $_"
    }
}

function Invoke-PoeQuery {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$botName,                         # The name of the Poe bot to query
        [Parameter(Mandatory=$true)]
        [string]$apiKey,                          # The API key for authentication
        [Parameter(Mandatory=$true)]
        [string]$systemMessage,                   # Array of system messages for the query
        [Parameter(Mandatory=$true)]
        [string]$userMessage,                     # Array of user messages for the query
        [Parameter(Mandatory=$false)]
        [switch]$jsonMode = $false,               # Enable JSON Object mode
        [Parameter(Mandatory=$false)]
        [float]$temperature = 0.7,                # The sampling temperature for text generation (default: 0.7)
        [Parameter(Mandatory=$false)]
        [bool]$skipSystemPrompt = $false,         # Whether to skip system prompts (default: false)
        [Parameter(Mandatory=$false)]
        [hashtable]$logitBias = @{},              # Logit bias to influence the probability distribution of tokens (default: empty)
        [Parameter(Mandatory=$false)]
        [Array]$stopSequences = @()               # Sequences to stop generation at (default: empty)
    )

    $headers = @{
        "Authorization" = "Bearer $apiKey"
    }

    # Construct the query request object
    $queryRequest = [PSCustomObject]@{
        query = @(
                [PsCustomObject]@{
                    role = "system"
                    content = $systemMessage
                }
                [PsCustomObject]@{
                    role = "user"
                    content = $userMessage
                }
            
        )
        user_id = ""                              # User ID (optional)
        conversation_id = ""                      # Conversation ID (optional)
        message_id = ""                           # Message ID (optional)
        version = "1.0"                           # API version
        type = "query"                            # Type of request
        temperature = $temperature                # Sampling temperature
        skip_system_prompt = $skipSystemPrompt    # Whether to skip system prompts
        logit_bias = $logitBias                   # Logit bias
        stop_sequences = $stopSequences           # Sequences to stop generation at
    }

    # Convert the query request object to JSON
    $queryRequestJson = $queryRequest | ConvertTo-Json

    try {
        # Invoke the Poe API using REST method
        $response = Invoke-RestMethod -Uri "https://api.poe.com/bot/$botName" -Method POST -Headers $headers -Body $queryRequestJson -ContentType "application/json"

        # Split the input string by lines
        $lines = $response -split "`n"

        # Initialize an empty array to store text entries
        $textEntries = @()

        # Iterate through each line
        foreach ($line in $lines) {
            # Check if the line contains "data: {"text": "
            if ($line -match 'data: {"text": "(.+)"') {
                # Extract the text within quotes
                $text = $matches[1]
        
                # Append the extracted text to the array
                $textEntries += $text
            }
        }

        # Concatenate the text entries into a single string
        $concatenatedText = ((($textEntries -join "").Replace('\n',([System.Environment]::NewLine)) -join '')).Replace('\"','"')

        # Output the concatenated text
        if($jsonMode){return ConvertFrom-UglyJsonString -InputString $concatenatedText}
        else{return $concatenatedText}

    } catch {
        # Handle errors
        Write-Error "Error invoking Poe API: $_"
    }
}