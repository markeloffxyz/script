local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "markeloff script's", HidePremium = false, IntroText = ("markeloff1337")})

local AUTOTab = Window:MakeTab({
    Name = "Auto Click",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local autoClick = false -- Auto Click kontrol değişkeni

AUTOTab:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(Value)
        autoClick = Value -- Toggle değeri güncelleniyor
        while autoClick do
            wait(0.1)
            game:GetService("ReplicatedStorage")["events-shared/network@GlobalEvents"].placeBlock:FireServer()
        end
    end
})

local autoRebirth = false -- Auto Rebirth kontrol değişkeni

AUTOTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        autoRebirth = Value -- Toggle değeri güncelleniyor
        while autoRebirth do
            wait(1) -- Rebirth işleminde 1 saniyelik gecikme
            game:GetService("ReplicatedStorage")["functions-shared/network@GlobalFunctions"]["s:rebirth"]:FireServer(12)
        end
    end    
})

