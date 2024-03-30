@{
    RootModule = 'pspoe.psm1'
    ModuleVersion = '1.0'
    Author = 'Joshua Mangold'
    Description = 'A PowerShell module containing functions to clean and convert malformed JSON strings and query the Poe bot API.'
    FunctionsToExport = @(
        'ConvertFrom-UglyJsonString',
        'Invoke-PoeQuery'
    )
    PrivateData = @{
        PSData = @{
            LicenseUri = 'https://github.com/jmangold23/pspoe/blob/main/LICENSE'
            ProjectUri = 'https://github.com/jmangold23/pspoe'
        }
    }
}
