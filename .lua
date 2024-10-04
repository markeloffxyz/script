local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "markeloff script's", HidePremium = false, IntroText = ("markeloff1337")})

local AUTOTab = Window:MakeTab({
    Name = "Auto Click",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

AUTOTab:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(Value)
whale wait(0.1) do
        game:GetService("ReplicatedStorage")["events-shared/network@GlobalEvents"].placeBlock:FireServer()
    end
})

AUTOTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		game:GetService("ReplicatedStorage")["functions-shared/network@GlobalFunctions"]["s:rebirth"]:FireServer(12)
	end    
})
