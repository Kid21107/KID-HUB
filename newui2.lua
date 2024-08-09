local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerMouse = Player:GetMouse()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Kid Hub", HidePremium = false, IntroText = "Kid Hub", SaveConfig = true, ConfigFolder = "KidHub"})

OrionLib:MakeNotification({
    Name = "Message",
    Content = "Thanks For Using My Script!",
    Image = "rbxassetid://4483345998",
    Time = 5
})
local MainTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
MainTab:AddButton({
    Name = "Clicker",
    Callback = function()
              print("Kid Hub")
      end    
})
local MainTab = Window:MakeTab({
    Name = "Farmming",
})
MainTab:AddToggle({
    Name = "AutoFarm(Level)",
    Default = false,
    Callback = function(Value)
        
    end    
})