@{

# Script module or binary module file associated with this manifest.
RootModule = '.\pspoe.psm1'

# Version number of this module.
ModuleVersion = '1.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'c0e00b87-c48f-46ca-86a8-b7fbde70e0a8'

# Author of this module
Author = 'Joshua Mangold'

# Company or vendor of this module
CompanyName = 'Joshua Mangold'

# Copyright statement for this module
Copyright = '(c) 2024 Joshua Mangold. All rights reserved.'

# Description of the functionality provided by this module
Description = 'A PowerShell module for interacting with Poe.com LLM bots, featuring JSON parsing and AI-driven chat capabilities.'


# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'ConvertFrom-UglyJsonString',
    'Invoke-PoeQuery'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{
    PSData = @{
        LicenseUri = 'https://github.com/jmangold23/pspoe/blob/main/LICENSE'
        ProjectUri = 'https://github.com/jmangold23/pspoe'
        Tags = @('Poe.com', 'AI', 'Bots', 'Chat', 'Automation', 'Scripts', 'JSON', 'Parsing', 'Tech', 'AI Chat', 'Data Clean', 
                 'Bot API', 'PowerShell', 'AI Interact', 'Chatbot', 'Text Gen', 'Poe Bot', 'ChatGPT', 'AI Tools', 
                 'Bot Talk', 'Data Process', 'Text Parse', 'AI Response', 'PowerShell AI', 'Poe Script', 'AI Query', 
                 'Text Clean', 'Bot Script', 'Bot Commands', 'AI Utility', 'Poe Platform', 'Tech Script', 'AI Dialog', 
                 'Bot Chat', 'AI PowerShell', 'Data Automation', 'AI Tech', 'Scripting Tool', 'AI Helper', 'Bot Query', 
                 'AI Chatbot', 'PowerShell Bot', 'AI Talk', 'Text Automation', 'Chat Response', 'Bot Scripting', 'Poe Tech', 
                 'AI Automation', 'AI Bot', 'Script Bot', 'AI Conversation', 'Poe Interaction', 'Bot Communication', 
                 'AI Text', 'PowerShell Script', 'Poe Integration', 'AI Data', 'Bot Integration', 'Text AI', 'AI Module', 
                 'Script Automation', 'AI Interface', 'Chat Bot', 'Tech Bot', 'AI Parsing', 'Bot Text', 'AI Code', 
                 'Poe Chat', 'AI Script', 'Bot Utility', 'PowerShell Tool', 'AI Command', 'Chat Tech', 'Tech Automation', 
                 'AI Process', 'Script AI', 'Bot Tech', 'AI Interaction', 'Tech Integration', 'PowerShell AI', 'AI Tool', 
                 'Chat Utility', 'Bot Automation', 'AI System', 'Poe API', 'Tech Chat', 'AI Scripting', 'Bot Tool', 
                 'AI Utility', 'PowerShell Chat', 'Bot System', 'AI Chatbot', 'Tech Scripting', 'Poe Bot', 'AI Response', 
                 'Bot Code', 'AI Chat', 'PowerShell AI', 'Chat Bot', 'Tech Automation', 'AI Process', 'Script AI', 
                 'Bot Tech', 'AI Interaction', 'Tech Integration', 'PowerShell AI', 'AI Tool', 'Chat Utility', 'Bot Automation', 
                 'AI System', 'Poe API', 'Tech Chat', 'AI Scripting', 'Bot Tool', 'AI Utility', 'PowerShell Chat', 'Bot System', 
                 'Claude-3-Opus', 'Claude-3-Sonnet', 'Claude-3-Opus-200k', 'Claude-3-Sonnet-200k', 
                 'Claude-instant-100k', 'Claude-2', 'Claude-2-100k', 'Claude-instant', 'ChatGPT', 
                 'GPT-3.5-Turbo', 'GPT-3.5-Turbo-Instruct', 'ChatGPT-16k', 'GPT-4', 'GPT-4-128k', 
                 'Google-PaLM', 'Llama-2-7b', 'Llama-2-13b', 'Llama-2-70b', 'Code-Llama-7b', 'Code-Llama-13b', 
                 'Code-Llama-34b', 'Solar-Mini', 'mixtral-8x7b-Groq')
    }
}


# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

