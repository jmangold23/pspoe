@{
    RootModule = 'pspoe.psm1'
    ModuleVersion = '1.0'
    Author = 'Joshua Mangold'
    Description = 'A PowerShell module for interacting with Poe.com LLM bots, featuring JSON parsing and AI-driven chat capabilities.'
    FunctionsToExport = @(
        'ConvertFrom-UglyJsonString',
        'Invoke-PoeQuery'
    )
    PrivateData = @{
        PSData = @{
            LicenseUri = 'https://github.com/jmangold23/pspoe/blob/main/LICENSE'
            ProjectUri = 'https://github.com/jmangold23/pspoe'
            Tags = @('Poe.com', 'AI', 'Bots', 'Chat', 'Automation', 'Scripts', 'JSON', 'Parsing', 'Tech', 
                     'AI Chat', 'Data Clean', 'Bot API', 'PowerShell', 'AI Interact', 'Chatbot', 'Text Gen', 
                     'Poe Bot', 'ChatGPT', 'AI Tools', 'Bot Talk', 'Data Process', 'Text Parse', 'AI Response', 
                     'PowerShell AI', 'Poe Script', 'AI Query', 'Text Clean', 'Bot Script', 'Bot Commands', 
                     'AI Utility', 'Poe Platform', 'Tech Script', 'AI Dialog', 'Bot Chat', 'AI PowerShell', 
                     'Data Automation', 'AI Tech', 'Scripting Tool', 'AI Helper', 'Bot Query', 'AI Chatbot', 
                     'PowerShell Bot', 'AI Talk', 'Text Automation', 'Chat Response', 'Bot Scripting', 'Poe Tech', 
                     'AI Automation', 'AI Bot', 'Script Bot', 'AI Conversation', 'Poe Interaction', 'Bot Communication', 
                     'AI Text', 'PowerShell Script', 'Poe Integration', 'AI Data', 'Bot Integration', 'Text AI', 
                     'AI Module', 'Script Automation', 'AI Interface', 'Chat Bot', 'Tech Bot', 'AI Parsing', 
                     'Bot Text', 'AI Code', 'Poe Chat', 'AI Script', 'Bot Utility', 'PowerShell Tool', 'AI Command', 
                     'Chat Tech', 'Tech Automation', 'AI Process', 'Script AI', 'Bot Tech', 'AI Interaction', 
                     'Tech Integration', 'PowerShell AI', 'AI Tool', 'Chat Utility', 'Bot Automation', 'AI System', 
                     'Poe API', 'Tech Chat', 'AI Scripting', 'Bot Tool', 'AI Utility', 'PowerShell Chat', 'Bot System', 
                     'AI Chatbot', 'Tech Scripting', 'Poe Bot', 'AI Response', 'Bot Code', 'AI Chat', 'PowerShell AI', 
                     'Chat Bot', 'Tech Automation', 'AI Process', 'Script AI', 'Bot Tech', 'AI Interaction', 
                     'Tech Integration', 'PowerShell AI', 'AI Tool', 'Chat Utility', 'Bot Automation', 'AI System', 
                     'Poe API', 'Tech Chat', 'AI Scripting', 'Bot Tool', 'AI Utility', 'PowerShell Chat', 'Bot System', 
                     'Claude-3-Opus', 'Claude-3-Sonnet', 'Claude-3-Opus-200k', 'Claude-3-Sonnet-200k', 
                     'Claude-instant-100k', 'Claude-2', 'Claude-2-100k', 'Claude-instant', 'ChatGPT', 
                     'GPT-3.5-Turbo', 'GPT-3.5-Turbo-Instruct', 'ChatGPT-16k', 'GPT-4', 'GPT-4-128k', 
                     'Google-PaLM', 'Llama-2-7b', 'Llama-2-13b', 'Llama-2-70b', 'Code-Llama-7b', 'Code-Llama-13b', 
                     'Code-Llama-34b', 'Solar-Mini', 'mixtral-8x7b-Groq')
        }
    }
}
