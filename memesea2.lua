

local plz = game.Players.LocalPlayer
local pli = plz.Items.ItemStorage
--

_G.Settings = {
    Main = {
        ["AutoFarm"] = false,
        ["NameMon"] = false,
        ["FarmNear"] = false,
        ["AutoLava"] = false,
        ["AutoPopCat"] = false,
        ["AutoRaceV2"] = false,
    },
    Boss = {
        ["RaidFarm"] = false,
        ["AutoMemeBeast"] = false,
        ["FarmBossho"] = false,
        ["FarmBossno"] = false,
    },
    Shop = {
        ["StoreFruitAll"] = false,
        ["SelectM"] = "Gem",
        ["TPFruit"] = false,
        ["RollHaki"] = false,
        ["RamdomFruit"] = false,
    },
    Teleport = {
        ["SelectMap"] = "",
        ["AutoMelee"] = false,
        ["AutoDefense"] = false,
        ["AutoSword"] = false,
        ["AutoPower"] = false,
    },
    Config = {
    	["DeleteSkill"] = false,
    	["BusoHaki"] = true,
        ["KenHaki"] = true,
        ["AutoSkill"] = true,
        ["AutoRace"] = false,
        ["BringMob"] = true,
        ["Z"] = true,
        ["X"] = false,
        ["C"] = false,
        ["V"] = false,
        ["SelectWeapon"] = "Melee",
        ["SelectMethod"] = "Upper",
        ["DistanceMon"] = 9,
    },
    Bring = {
  },
}


local NG = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("Kid HUB") then
            makefolder("Kid HUB")
        end
        if not isfolder("Kid HUB/".. NG.. "/") then
            makefolder("Kid HUB/".. NG.. "/")
        end
        if not isfile("Kid HUB/".. NG.. "/".. plz.Name.. ".json") then
            writefile("Kid HUB/".. NG.. "/".. plz.Name.. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Kid HUB/".. NG.. "/".. plz.Name.. ".json"))
            for i,v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return warn("Status : Undetected Executor")
    end
end


function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("Kid HUB/".. NG.. "/".. plz.Name.. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Kid HUB/".. NG.. "/".. plz.Name.. ".json"))
            local Array = {}
            for i,v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("Kid HUB/".. NG.. "/".. plz.Name.. ".json", game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return warn("Status : Undetected Executor")
    end
end

LoadSettings()

function CheckLv()
    MyLevel = plz.PlayerData.Level.Value
    if MyLevel == 1 or MyLevel <= 49 then
        Mon = "Floppa"
        Quest = "Floppa Quest 1"
        
        elseif MyLevel == 50 or MyLevel <= 99 then
        Mon = "Golden Floppa"
        Quest = "Floppa Quest 2"
        
        elseif MyLevel == 100 or MyLevel <= 149 then
        Mon = "Big Floppa"
        Quest = "Floppa Quest 3"
        
        elseif MyLevel == 150 or MyLevel <= 199 then
        Mon = "Doge"
        Quest = "Floppa Quest 4"
        
        elseif MyLevel == 200 or MyLevel <= 249 then
        Mon = "Cheems"
        Quest = "Floppa Quest 5"
        
        elseif MyLevel == 250 or MyLevel <= 299 then
        Mon = "Walter Dog"
        Quest = "Floppa Quest 6"
        
        elseif MyLevel == 300 or MyLevel <= 349 then
        Mon = "Staring Fish"
        Quest = "Floppa Quest 7"
        
        elseif MyLevel == 350 or MyLevel <= 399 then
        Mon = "Hamster"
        Quest = "Floppa Quest 8"
        
        elseif MyLevel == 400 or MyLevel <= 449 then
        Mon = "Snow Tree"
        Quest = "Floppa Quest 9"
        
        elseif MyLevel == 450 or MyLevel <= 499 then
        Mon = "The Rock"
        Quest = "Floppa Quest 10"
        
        elseif MyLevel == 500 or MyLevel <= 549 then
        Mon = "Banana Cat"
        Quest = "Floppa Quest 11"
        
        elseif MyLevel == 550 or MyLevel <= 599 then
        Mon = "Sus Face"
        Quest = "Floppa Quest 12"
        
        elseif MyLevel == 600 or MyLevel <= 649 then
        Mon = "Egg Dog"
        Quest = "Floppa Quest 13"
        
        elseif MyLevel == 650 or MyLevel <= 699 then
        Mon = "Popcat"
        Quest = "Floppa Quest 14"
        
        elseif MyLevel == 700 or MyLevel <= 749 then
        Mon = "Gorilla King"
        Quest = "Floppa Quest 15"
        
        elseif MyLevel == 750 or MyLevel <= 799 then
        Mon = "Smiling Cat"
        Quest = "Floppa Quest 16"
        
        elseif MyLevel == 800 or MyLevel <= 849 then
        Mon = "Killerfish"
        Quest = "Floppa Quest 17"
        
        elseif MyLevel == 850 or MyLevel <= 899 then
        Mon = "Bingus"
        Quest = "Floppa Quest 18"
        
        elseif MyLevel == 900 or MyLevel <= 949 then
        Mon = "Obamid"
        Quest = "Floppa Quest 19"
        
        elseif MyLevel == 950 or MyLevel <= 999 then
        Mon = "Floppy"
        Quest = "Floppa Quest 20"
        
        elseif MyLevel == 1000 or MyLevel <= 1049 then
        Mon = "Creepy Head"
        Quest = "Floppa Quest 21"
        
        elseif MyLevel == 1050 or MyLevel <= 1149 then
        Mon = "Scary Skull"
        Quest = "Floppa Quest 22"
        
        elseif MyLevel == 1150 or MyLevel <= 1199 then
        Mon = "Pink Absorber"
        Quest = "Floppa Quest 24"
        
        elseif MyLevel == 1200 or MyLevel <= 1249 then
        Mon = "Troll Face"
        Quest = "Floppa Quest 25"
                
        elseif MyLevel == 1250 or MyLevel <= 1299 then
        Mon = "Uncanny Cat"
        Quest = "Floppa Quest 26"
        
        elseif MyLevel == 1300 or MyLevel <= 1349 then
        Mon = "Quandale Dingle"
        Quest = "Floppa Quest 27"
        
        elseif MyLevel == 1350 or MyLevel <= 1449 then
        Mon = "Moai"
        Quest = "Floppa Quest 28"
        
        elseif MyLevel == 1450 or MyLevel <= 1499 then
        Mon = "Red Sus"
        Quest = "Floppa Quest 30"
        
        elseif MyLevel == 1500 or MyLevel <= 1699 then
        Mon = "Sus Duck"
        Quest = "Floppa Quest 31"
        
        elseif MyLevel == 1700 or MyLevel <= 1749 then
        Mon = "Sigma Man"
        Quest = "Floppa Quest 33"
        
        elseif MyLevel == 1750 or MyLevel <= 1799 then
        Mon = "Dancing Cat"
        Quest = "Floppa Quest 34"
        
        elseif MyLevel == 1800 or MyLevel <= 1849 then
        Mon = "Toothless Dragon"
        Quest = "Floppa Quest 35"
        
        elseif MyLevel == 1850 or MyLevel <= 1899 then
        Mon = "Manly Nugget"
        Quest = "Floppa Quest 36"
        
        elseif MyLevel == 1900 or MyLevel <= 1949 then
        Mon = "Huh Cat"
        Quest = "Floppa Quest 37"
        
        elseif MyLevel == 1950 or MyLevel <= 1999 then
        Mon = "Mystical Tree"
        Quest = "Floppa Quest 38"
        
        elseif MyLevel == 2000 or MyLevel <= 2049 then
        Mon = "Old Man"
        Quest = "Floppa Quest 39"
        
        elseif MyLevel == 2050 or MyLevel <= 2099 then
        Mon = "Nyan Cat"
        Quest = "Floppa Quest 40"
        
        elseif MyLevel == 2100 or MyLevel <= 2149 then
        Mon = "Baller"
        Quest = "Floppa Quest 41"
        
        elseif MyLevel == 2150 or MyLevel <= 2199 then
        Mon = "Slicer"
        Quest = "Floppa Quest 42"
        
        elseif MyLevel == 2200 or MyLevel <= 2249 then
        Mon = "Rick Roller"
        Quest = "Floppa Quest 43"
        
        elseif MyLevel == 2250 or MyLevel <= 2299 then
        Mon = "Gigachad"
        Quest = "Floppa Quest 44"
        
        elseif MyLevel == 2300 or MyLevel <= 2349 then
        Mon = "MrBeast"
        Quest = "Floppa Quest 45"
        
        elseif MyLevel >= 2350 then
        Mon = "Handsome Man"
        Quest = "Floppa Quest 46"
    end
end


--stoptween
function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        local character = game:GetService("Players").LocalPlayer.Character
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["AutoFarm"] or _G.Settings.Boss["FarmBossho"] or _G.Settings.Boss["FarmBossno"] or _G.Settings.Main["AutoLava"] or _G.Settings.Main["AutoRaceV2"] or _G.Settings.Boss["RaidFarm"] or _G.Settings.Main["FarmMon"] or _G.Settings.Shop["TPFruit"] then
                local character = plz.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    if not humanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = humanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            else
                _G.FarmBoss = false
                _G.FarmOrb = false
                _G.AutoSkill = false
                _G.AutoRace = false
            end
        end)
    end)
end)


--taopart
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["AutoFarm"] or _G.Settings.Boss["FarmBossho"] or _G.Settings.Boss["FarmBossno"] or _G.Settings.Main["AutoLava"] or _G.Settings.Main["AutoRaceV2"] or _G.Settings.Boss["RaidFarm"] or _G.Settings.Main["FarmMon"] or _G.Settings.Shop["TPFruit"] then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)


--method farm
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.Config["SelectMethod"] == "Behind" then
                MethodFarm = CFrame.new(0,0,_G.Settings.Config["DistanceMon"])
            elseif _G.Settings.Config["SelectMethod"] == "Below" then
                MethodFarm = CFrame.new(0,-_G.Settings.Config["DistanceMon"],0)  * CFrame.Angles(math.rad(90),0,0)
            elseif _G.Settings.Config["SelectMethod"] == "Upper" then
                MethodFarm = CFrame.new(0,_G.Settings.Config["DistanceMon"],0)  * CFrame.Angles(math.rad(-90),0,0)
            else
                MethodFarm = CFrame.new(0,0,0)
            end
        end)
    end
end)

--check value weapon
spawn(function()
    while wait() do
        pcall(function()
            local playerData = plz.PlayerData
            local CacLo1 = _G.Settings.Config["SelectWeapon"]
            if CacLo1 == "Melee" then
                WeaponFarm = playerData.CombatEquip.Value
                Weapon1 = "FightingStyle_"
            elseif CacLo1 == "Sword" then
                WeaponFarm = playerData.SwordEquip.Value
                Weapon1 = "Weapon_"
            elseif CacLo1 == "Power" then
                WeaponFarm = playerData.PowerEquip.Value
                Weapon1 = "Power_"
            end
        end)
    end
end)





--eqwp
function UnEquipWeapon(Weapon)
    local char = plz.Character
    if char:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(0.5)
        char[Weapon].Parent = plz.Backpack
        wait(0.1)
        _G.NotAutoEquip = false
    end
end
function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        local backpack = plz.Backpack
        if backpack:FindFirstChild(ToolSe) then
            local tool = backpack:FindFirstChild(ToolSe)
            wait(0.1)
            plz.Character.Humanoid:EquipTool(tool)
        end
    end
end

function TP(Pos)
    plz.Character.HumanoidRootPart.CFrame = Pos
end


function SkillDown(va)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, va, false, game)
end


function SkillUp(va)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, va, false, game)
end

local function useSkill(key)
    SkillDown(key)
    wait(.1)
    SkillUp(key)
end

--checkmon
function CheckBoss()
    local SelectBosss = _G.Settings.Boss["SelectBoss"]
    if SelectBosss == "Lord Sus" then
        NameQuest1 = "Floppa Quest 32"
        CFrameQuest = CFrame.new(Vector3.new(6564,-95,4794))
        CFrameSum = CFrame.new(Vector3.new(6644,-90,4811))
        NameItem = "Sussy Orb"
        NameOrb1 = "Sus Duck"

    elseif SelectBosss == "Evil Noob" then
        NameQuest1 = "Floppa Quest 29"
        CFrameQuest = CFrame.new(Vector3.new(2891,-52,4208))
        CFrameSum = CFrame.new(Vector3.new(-2357,-76,3180))
        NameItem = "Noob Head"
        NameOrb1 = "Moai"

    elseif SelectBosss == "Giant Pumpkin" then
        NameQuest1 = "Floppa Quest 23"
        CFrameQuest = CFrame.new(Vector3.new(-1164,-93,1462))
        CFrameSum = CFrame.new(Vector3.new(-1181,-88,1462))
        NameItem = "Flame Orb"
        NameOrb1 = "Scary Skull"
    end
end

function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    if _G.Settings.Config["AutoSkill"] then
        _G.AutoSkill = true
    else
        _G.AutoSkill = false
    end
    if _G.Settings.Config["AutoRace"] then
        _G.AutoRace = true
    else
        _G.AutoRace = false
    end
end

spawn(function()
    while wait() do
        if _G.AutoSkill then
            if _G.Settings.Config["Z"] then
                if not plz.Cooldown:FindFirstChild(Weapon1 .. "Z") then                  
                    useSkill("Z")
                end
            end
            if _G.Settings.Config["X"] then
                if not plz.Cooldown:FindFirstChild(Weapon1 .. "X") then
                    useSkill("X")
                end
            end
            if _G.Settings.Config["C"] then
                if not plz.Cooldown:FindFirstChild(Weapon1 .. "C") then
                    useSkill("C")
                end
            end
            if _G.Settings.Config["V"] then
                if not plz.Cooldown:FindFirstChild(Weapon1 .. "V") then
                    useSkill("V")
                end
            end
        end
    end
end)

function TPCheck(Pos)
    local character = plz.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local Distance = (Pos.Position - humanoidRootPart.Position).Magnitude
            if Distance > 200 then
                humanoidRootPart.CFrame = Pos
            end
        end
    end
end

function XoaQ()
    local ohTable2 = {
        ["QuestSlot"] = "QuestSlot1"
    }
    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest", ohTable2)
end

function ClickNPC(NameNPC)
    local QuestGui = plz.PlayerGui.QuestGui.Holder.QuestSlot1
    if QuestGui.Visible == true and plz.QuestFolder.QuestSlot1.QuestGiver.Value ~= NameNPC then
        XoaQ()
    end
    if plz.QuestFolder.QuestSlot1.QuestGiver.Value == "None" then
        for i, v in pairs(game:GetService("Workspace").NPCs.Quests_Npc[NameNPC]:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                task.wait(.1)
                fireproximityprompt(v)
                v.HoldDuration = 1
            end
        end
    end
end


function StoreFruit(va)
    local args = {
        [1] = "Eatable_Power",
        [2] = {
            ["Action"] = "Store",
            ["Tool"] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(va)
        }
    }
    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer(unpack(args))
end

--atuo store
spawn(function()
    while wait() do
        if _G.Settings.Shop["StoreFruitAll"] then
            pcall(function()
                for i, v in pairs(plz.Backpack:GetChildren()) do
                    if v:FindFirstChild("Script") then
                        EquipWeapon(v.Name)
                        StoreFruit(v.Name)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            local PLGUI = plz.PlayerGui.MainGui.PlayerName.Text
            if PLGUI == plz.Name.. " • Lv. " ..plz.PlayerData.Level.Value.. " (Max)" or PLGUI == plz.Name.. " • Lv. " ..plz.PlayerData.Level.Value then
                plz.PlayerGui.MainGui.PlayerName.Text = "Lv • " ..plz.PlayerData.Level.Value.. " / https://discord.gg/UrkE64Mfb7"
            end
        end)
    end
end)



function RollHaki()
local args = {
    [1] = "Reroll_Color",
    [2] = "Halfed Sorcerer"
}

game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer(unpack(args))
end

function BuyFruit(va)
    local args = {
        [1] = "Random_Power",
        [2] = {
            ["Type"] = "Decuple",
            ["NPCName"] = "Floppa Gacha",
            ["GachaType"] = va
        }
    }

    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer(unpack(args))
end

spawn(function()
	while task.wait() do
		pcall(function()
			if StartMagnet and _G.Settings.Config["BringMob"] then
				for _, v in pairs(game.Workspace.Monster:GetDescendants()) do
					if v:IsA('Part') and v:IsA('MeshPart') then
						v.Transparency = 1
                        v.Transparency = 0
					end
				end
			end
		end)
	end
end)

local AbilityP = plz.Ability

--auto buso
spawn(function()
    while wait() do
        if _G.Settings.Config["BusoHaki"] and AbilityP.Aura.Value == true then
            pcall(function()
                if not plz.Character.AuraColor_Folder:FindFirstChild("RightHand_AuraColor") then
                    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Ability:InvokeServer("Aura")
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Config["KenHaki"] and AbilityP.Instinct.Value == true then
            if not plz.Character:FindFirstChild("Highlight_Player") and not plz.Cooldown:FindFirstChild("InstinctCD") then
                SkillDown("E")
                wait(.5)
            end
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoRace then
            if not plz.Cooldown:FindFirstChild("RaceSkillCD") and AbilityP.RabbitAwaken.Value == true or AbilityP.FishAwaken.Value == true or AbilityP.BirdAwaken.Value == true then
                game:GetService("ReplicatedStorage").OtherEvent.SkillEvents.Movement:FireServer("RaceSkill")
            end
        end
    end
end)

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Kid HUB | ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    SubTitle = "| Crack",
    TabWidth = 95,
    Size = UDim2.fromOffset(430, 330),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.F15
})
--   Dark   Light  Aqua Amethyst
local Tabs = {
    MainTab = Window:AddTab({ Title = "Auto Farm", Icon = "rbxassetid://18718155799" }),
    BossTab = Window:AddTab({ Title = "Raid/Boss", Icon = "rbxassetid://18717945798" }),
    ShopTab = Window:AddTab({ Title = "Shop/Fruit", Icon = "rbxassetid://18717934369" }),
    TeleTab = Window:AddTab({ Title = "Stat/Teles", Icon = "rbxassetid://18718151237" }),
    MiscTab = Window:AddTab({ Title = "Misc/Idk", Icon = "rbxassetid://18721836821" }),
    SetTab = Window:AddTab({ Title = " Settings", Icon = "rbxassetid://18717951749" }),
}

local function Notify(v)
        Fluent:Notify({
            Title = "Kid Hub",
            Content = v,
            Duration = 5
        })
end

--maintab
  Tabs.MainTab:AddParagraph({
    Title = "Auto Farm",
    Content = "Auto Farm Max Level"
})

Tabs.MainTab:AddToggle("", {Title = "Auto Farm Level", Default = _G.Settings.Main["AutoFarm"] }):OnChanged(function(va)
    _G.Settings.Main["AutoFarm"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.MainTab:AddButton({
    Title = "TP Location Farm",
    Description = "",
    Callback = function()
        CheckLv()
            TP(game.Workspace.Location.QuestLocaion[Quest].CFrame)
    end
})


local PosFarm = {}
local NameFarm = {}

spawn(function()
    while wait() do
        if _G.Settings.Main["AutoFarm"] then
            CheckLv()
            TPCheck(game.Workspace.Location.QuestLocaion[Quest].CFrame)
            pcall(function()
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        if game.Players.LocalPlayer.QuestFolder.QuestSlot1.QuestGiver.Value == Quest then
                            repeat task.wait()   
                                EquipWeapon(WeaponFarm)
                                Click()
                                PosFarm[v.Name] = v.HumanoidRootPart.CFrame
                                NameFarm[v.Name] = v.Name
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                v.HumanoidRootPart.CanCollide = false                             
                                v.Head.CanCollide = false                                
                                StartMagnet = true
                            until not _G.Settings.Main["AutoFarm"] or not v.Parent or v.Humanoid.Health <= 0
                        else
                            ClickNPC(Quest)
                            TP(game.Workspace.Location.QuestLocaion[Quest].CFrame)
                            StartMagnet = false
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Config["BringMob"] and _G.Settings.Main["AutoFarm"] then
                CheckLv()
                for _, v in pairs(game.Workspace.Monster:GetChildren()) do
                    if PosFarm[v.Name] then
                        v.HumanoidRootPart.CFrame = PosFarm[v.Name]
                        v.HumanoidRootPart.CanCollide = false                       
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end
end)

Tabs.MainTab:AddParagraph({
    Title = "Auto Farm Select",
    Content = "Auto Farm Select Monster"
})

local MonNames = {}

for _, v in pairs(game.Workspace.Location.Enemy_Location:GetChildren()) do
        table.insert(MonNames, v.Name)
end


 Tabs.MainTab:AddDropdown("Dropdown", {
    Title = "Mob",
    Values = MonNames,
    Default = _G.Settings.Main["NameMon"],
    Callback = function(va)
        _G.Settings.Main["NameMon"] = va
        SaveSettings()
    end
})

Tabs.MainTab:AddToggle("", {Title = "Auto Farm Mon", Default = _G.Settings.Main["FarmMon"] }):OnChanged(function(va)
    _G.Settings.Main["FarmMon"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.MainTab:AddButton({
    Title = "TP Location Mon",
    Description = "",
    Callback = function()
        CheckLv()
            TP(game.Workspace.Location.Enemy_Location[_G.Settings.Main["NameMon"]].CFrame)
    end
})

local PosNear = {}
local NameNear = {}

spawn(function()
    while wait() do
        if _G.Settings.Main["FarmMon"] then
            pcall(function()
                TPCheck(game.Workspace.Location.Enemy_Location[_G.Settings.Main["NameMon"]].CFrame)
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    StartMagnet = false
                    if v.Name == _G.Settings.Main["NameMon"] and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        repeat task.wait()  
                            PosNear[v.Name] = v.HumanoidRootPart.CFrame
                            NameNear[v.Name] = v.Name
                            EquipWeapon(WeaponFarm)
                            Click()
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            v.HumanoidRootPart.CanCollide = false                      
                            v.Head.CanCollide = false                            
                            StartMagnet = true
                        until not _G.Settings.Main["FarmMon"] or not v.Parent or v.Humanoid.Health <= 0
                    else
                        StartMagnet = false
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Config["BringMob"] and _G.Settings.Main["FarmMon"] then
                for _, v in pairs(game.Workspace.Monster:GetChildren()) do
                    if PosNear[v.Name] then
                        v.HumanoidRootPart.CFrame = PosNear[v.Name]
                        v.HumanoidRootPart.CanCollide = false                       
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end
end)

--maintab
  Tabs.MainTab:AddParagraph({
    Title = "Auto Quest",
    Content = "Auto Other Misc Quest..."
})

Tabs.MainTab:AddToggle("", {Title = "Auto Click Lava", Default = _G.Settings.Main["AutoLava"] }):OnChanged(function(va)
    _G.Settings.Main["AutoLava"] = va
    StopTween(va)
    SaveSettings()
end)

spawn(function()
    while wait() do
        if _G.Settings.Main["AutoLava"] then
            TPCheck(CFrame.new(Vector3.new(793, -31, -442)))
            pcall(function()
                if plz.QuestFolder.QuestSlot1.Target.Value == "Lava Floppa" then
                    TP(CFrame.new(Vector3.new(793, -31, -442)))
                    for i, v in pairs(game:GetService("Workspace").Island.FloppaIsland["Lava Floppa"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                        repeat task.wait()
                            fireproximityprompt(v)
                            until not _G.Settings.Main["AutoPopCat"] or not v.ProximityPrompt
                        end
                    end
                else
                    TP(CFrame.new(Vector3.new(756,-31,-424)))
                    ClickNPC("Cool Floppa Quest")
                end
            end)
        end
    end
end)


Tabs.MainTab:AddToggle("", {Title = "Auto Race V2", Default = _G.Settings.Main["AutoRaceV2"] }):OnChanged(function(va)
    _G.Settings.Main["AutoRaceV2"] = va
    StopTween(va)
    SaveSettings()
end)

local PosRace = {}
local NameRace = {}

spawn(function()
    while wait() do
        if _G.Settings.Main["AutoRaceV2"] then
            TPCheck(CFrame.new(Vector3.new(-2622,-78,-2004)))
            pcall(function()
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    StartMagnet = false
                    if v.Name == "Sogga" and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        if plz.QuestFolder.QuestSlot1.Target.Value == "Sogga" then
                            repeat task.wait()
                                EquipWeapon(WeaponFarm)
                                Click()
                                PosRace[v.Name] = v.HumanoidRootPart.CFrame
                                NameRace[v.Name] = v.Name
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                v.HumanoidRootPart.CanCollide = false                                
                                v.Head.CanCollide = false                            
                                StartMagnet = true
                            until not _G.Settings.Main["AutoRaceV2"] or not v.Parent or v.Humanoid.Health <= 0
                        else
                            TP(game.Workspace.Location.QuestLocaion["Floppa Quest [Race]"].CFrame)
                            StartMagnet = false
                            ClickNPC("Dancing Banana Quest")
                        end
                    end
                end
            end)
        end
    end
end)


spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Config["BringMob"] and _G.Settings.Main["AutoRaceV2"] then
                CheckLv()
                for _, v in pairs(game.Workspace.Monster:GetChildren()) do
                    if PosRace[v.Name] then
                        v.HumanoidRootPart.CFrame = PosRace[v.Name]
                        v.HumanoidRootPart.CanCollide = false                     
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(plz, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end
end)

--maintab
  Tabs.MainTab:AddParagraph({
    Title = "Auto Popcat",
    Content = "Auto Weapon PopCatt..."
})

local PopCatClick = game:GetService("Workspace").Island.FloppaIsland.Popcat_Clickable.Part

Tabs.MainTab:AddToggle("", {Title = "Click Popcat (Near)", Default = _G.Settings.Main["AutoPopCat"] }):OnChanged(function(va)
    _G.Settings.Main["AutoPopCat"] = va
    SaveSettings()
end)

Tabs.MainTab:AddButton({
    Title = "TP Location Popcat",
    Description = "",
    Callback = function()
        CheckLv()
            TP(CFrame.new(Vector3.new(399,-37,-588)))
    end
})

Tabs.MainTab:AddButton({
    Title = "Buy PopCat Weapon",
    Description = "Need 10K gem,10K click",
    Callback = function()
        CheckBoss()
        game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Weapon_Seller", "Ohio Popcat")
    end
})

Tabs.MainTab:AddButton({
    Title = "Check Click",
    Description = "Check value click Popcat",
    Callback = function()
        CheckBoss()
        Notify("Your Click: ".. tostring(PopCatClick.BillboardGui.Textlabel.Text))
    end
})


spawn(function()
    while wait() do
        if _G.Settings.Main["AutoPopCat"] then
            pcall(function()
                fireclickdetector(PopCatClick.ClickDetector)
            end)
        end
    end
end)


Tabs.BossTab:AddParagraph({
    Title = "Auto Raid",
    Content = "Use It On A Private Server"
})


Tabs.BossTab:AddToggle("", {Title = "Auto Fully Raid", Default = _G.Settings.Boss["RaidFarm"] }):OnChanged(function(va)
    _G.Settings.Boss["RaidFarm"] = va
    StopTween(va)
    SaveSettings()
end)


Tabs.BossTab:AddButton({
    Title = "TP Location Raid",
    Description = "",
    Callback = function()
        TP(CFrame.new(Vector3.new(2749,-58,-4524)))
    end
})

local bossNames = {"Super Popcat", "Tanky Moai", "Speedy Cheems", "Epic Doge", "Floppa Man", "Maxwell The Cat", "The Stone", "Capybara", "Killer Nugget", "Reverse Master"}

local PosRaid = {}
local NameRaid = {}

spawn(function()
    while wait() do
        if _G.Settings.Boss["RaidFarm"] then
            pcall(function()
                local RaidGui = plz.PlayerGui.RaidGui.RaidFrame
                if RaidGui.Visible == true then
                    if string.find(RaidGui.Wave.Text, "Intermission") then
                        game:GetService("ReplicatedStorage").OtherEvent.MiscEvents.StartRaid:FireServer("Start")
                    end
                    for _, v in pairs(game.Workspace.Monster:GetChildren()) do
                        if v.HumanoidRootPart and v.Humanoid.Health > 0 then
                            if table.find(bossNames, v.Name) then
                                repeat task.wait()
                                    Click()
                                    EquipWeapon(WeaponFarm)
                                    PosRaid[v.Name] = v.HumanoidRootPart.CFrame
                                    NameRaid[v.Name] = v.Name
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    StartMagnet = true
                                until not _G.Settings.Boss["RaidFarm"] or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    StartMagnet = false
                    TP(CFrame.new(Vector3.new(2749,-58,-4524)))
                end
            end)
        end
    end
end)


spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Config["BringMob"] and _G.Settings.Boss["RaidFarm"] then
                for _, v in pairs(game.Workspace.Monster:GetChildren()) do
                    if PosRaid[v.Name] then
                        v.HumanoidRootPart.CFrame = PosRaid[v.Name]
                        v.HumanoidRootPart.CanCollide = false                 
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(plz, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Config["DeleteSkill"] then
            pcall(function()
                for _, v in ipairs(game.Workspace.Skills:GetDescendants()) do
                    if v:IsA("Part") then
                        v:Destroy()
                    end
                end
            end)
        end
    end
end)

Tabs.BossTab:AddParagraph({
    Title = "Auto Boss",
    Content = "Farm All Boss"
})

function CheckBoss()
    local SelectBosss = _G.Settings.Boss["SelectBoss"]
    if SelectBosss == "Lord Sus" then
        NameQuest1 = "Floppa Quest 32"
        CFrameQuest = CFrame.new(Vector3.new(6564,-95,4794))
        CFrameSum = CFrame.new(Vector3.new(6644,-90,4811))
        NameItem = "Sussy Orb"
        NameOrb1 = "Sus Duck"

    elseif SelectBosss == "Evil Noob" then
        NameQuest1 = "Floppa Quest 29"
        CFrameQuest = CFrame.new(Vector3.new(2891,-52,4208))
        CFrameSum = CFrame.new(Vector3.new(-2357,-76,3180))
        NameItem = "Noob Head"
        NameOrb1 = "Moai"

    elseif SelectBosss == "Giant Pumpkin" then
        NameQuest1 = "Floppa Quest 23"
        CFrameQuest = CFrame.new(Vector3.new(-1164,-93,1462))
        CFrameSum = CFrame.new(Vector3.new(-1181,-88,1462))
        NameItem = "Flame Orb"
        NameOrb1 = "Scary Skull"
    end
end

Tabs.BossTab:AddDropdown("Dropdown", {
    Title = "Boss",
    Values = {"Lord Sus", "Evil Noob", "Giant Pumpkin"},
    Default = _G.Settings.Boss["SelectBoss"],
    Callback = function(va)
        _G.Settings.Boss["SelectBoss"] = va
        SaveSettings()
    end
})

spawn(function()
    while wait() do
        if _G.Settings.Boss["FarmBossho"] then
            pcall(function()
                CheckBoss()
                local bossFound = false
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    if v.Name == _G.Settings.Boss["SelectBoss"] and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        bossFound = true
                        _G.FarmBoss = true
                        _G.FarmOrb = false
                    end
                end
                if not bossFound then
                    if pli[NameItem].Value >= 1 then
                        _G.FarmBoss = true
                        _G.FarmOrb = false
                    else
                        _G.FarmOrb = true
                        _G.FarmBoss = false
                    end
                end
            end)
        end
    end
end)


spawn(function()
    while wait() do
        if _G.FarmBoss then
            pcall(function()
                CheckBoss()
                TPCheck(CFrameQuest)
                local FMon = false
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    StartMagnet = false
                    if v.Name == _G.Settings.Boss["SelectBoss"] and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        FMon = true
                        if game.Players.LocalPlayer.QuestFolder.QuestSlot1.Target.Value == _G.Settings.Boss["SelectBoss"] then
                            repeat task.wait()
                                EquipWeapon(WeaponFarm)
                                Click()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            until not _G.FarmBoss or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0
                        else
                            TP(CFrameQuest)
                            ClickNPC(NameQuest1)
                        end
                    end
                end
                if not FMon then
                    TP(CFrameSum)
                    if _G.Settings.Boss["SelectBoss"] == "Lord Sus" then
                        fireproximityprompt(game.Workspace.Island.ForgottenIsland.Summon3.Summon.SummonPrompt)
                    elseif _G.Settings.Boss["SelectBoss"] == "Evil Noob" then
                        fireproximityprompt(game.Workspace.Island.MoaiIsland.Summon2.Summon.SummonPrompt)
                    elseif _G.Settings.Boss["SelectBoss"] == "Giant Pumpkin" then
                        fireproximityprompt(game.Workspace.Island.PumpkinIsland.Summon1.Summon.SummonPrompt)
                    end
                end
            end)
        end
    end
end)

local PosOrb = {}
local NameOrb = {}

spawn(function()
    while wait() do
        if _G.FarmOrb then
            CheckBoss()
            TPCheck(game.Workspace.Location.Enemy_Location[NameOrb1].CFrame)
            pcall(function()
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    StartMagnet = false
                    if v.Name == NameOrb1 and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            EquipWeapon(WeaponFarm)
                            Click()
                            PosOrb[v.Name] = v.HumanoidRootPart.CFrame
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            StartMagnet = true
                        until not _G.FarmOrb or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Config["BringMob"] and _G.FarmOrb then
                for _, v in pairs(game.Workspace.Monster:GetChildren()) do
                    if PosOrb[v.Name] then
                        v.HumanoidRootPart.CFrame = PosOrb[v.Name]
                        v.HumanoidRootPart.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(plz, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Boss["FarmBossno"] then
            pcall(function()
                CheckBoss()
                TPCheck(CFrameQuest)
                local FMon = false
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    StartMagnet = false
                    if v.Name == _G.Settings.Boss["SelectBoss"] and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        FMon = true
                        if game.Players.LocalPlayer.QuestFolder.QuestSlot1.Target.Value == _G.Settings.Boss["SelectBoss"] then
                            repeat task.wait()
                                EquipWeapon(WeaponFarm)
                                Click()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            until not _G.Settings.Boss["FarmBossno"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0
                        else
                            TP(CFrameQuest)
                            ClickNPC(NameQuest1)
                        end
                    end
                end
                if not FMon then
                    TP(CFrameSum)
                    if _G.Settings.Boss["SelectBoss"] == "Lord Sus" then
                        fireproximityprompt(game.Workspace.Island.ForgottenIsland.Summon3.Summon.SummonPrompt)
                    elseif _G.Settings.Boss["SelectBoss"] == "Evil Noob" then
                        fireproximityprompt(game.Workspace.Island.MoaiIsland.Summon2.Summon.SummonPrompt)
                    elseif _G.Settings.Boss["SelectBoss"] == "Giant Pumpkin" then
                        fireproximityprompt(game.Workspace.Island.PumpkinIsland.Summon1.Summon.SummonPrompt)
                    end
                end
            end)
        end
    end
end)


Tabs.BossTab:AddToggle("", {Title = "Farm Boss (Have Farm Orb)", Default = _G.Settings.Boss["FarmBossho"] }):OnChanged(function(va)
    _G.Settings.Boss["FarmBossho"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddToggle("", {Title = "Farm Boss (No Farm Orb)", Default = _G.Settings.Boss["FarmBossno"] }):OnChanged(function(va)
    _G.Settings.Boss["FarmBossno"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddButton({
    Title = "Check Item",
    Description = "Click to check Orb",
    Callback = function()
        CheckBoss()
        Notify(NameItem.. ": ".. tostring(plz.Items.ItemStorage[NameItem].Value))
    end
})


Tabs.BossTab:AddToggle("", {Title = "Meme Beast (World Boss)", Default = _G.Settings.Boss["AutoMemeBeast"] }):OnChanged(function(va)
    _G.Settings.Boss["AutoMemeBeast"] = va
    StopTween(va)
    SaveSettings()
end)

spawn(function()
    while wait() do
        if _G.Settings.Boss["AutoMemeBeast"] then
            pcall(function()
                TPCheck(game.Workspace.Location.Enemy_Location["Meme Beast"].CFrame)
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    StartMagnet = false
                    if v.Name == "Meme Beast" and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                           Click()
                            EquipWeapon(WeaponFarm)
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false                            
                        until not _G.Settings.Boss["AutoMemeBeast"] or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                    else
                    end
                end
            end)
        end
    end
end)


Tabs.ShopTab:AddParagraph({
    Title = "Fruit Tab",
    Content = "Ramdom Fruit,TP Fruit"
})

Tabs.ShopTab:AddDropdown("Dropdown", {
    Title = "Currency",
    Values = {"Money", "Gem"},
    Default = _G.Settings.Shop["SelectM"],
    Callback = function(va)
        _G.Settings.Shop["SelectM"] = va
        SaveSettings()
    end
})
    
    Tabs.ShopTab:AddToggle("", {Title = "Store Fruit All", Default = _G.Settings.Shop["StoreFruitAll"] }):OnChanged(function(va)
    _G.Settings.Shop["StoreFruitAll"] = va
    SaveSettings()
end)

Tabs.ShopTab:AddToggle("", {Title = "TP Fruit Near", Default = _G.Settings.Shop["TPFruit"] }):OnChanged(function(va)
    _G.Settings.Shop["TPFruit"] = va
    StopTween(va)
    SaveSettings()
end)

--fruit
spawn(function()
    while wait() do
        if _G.Settings.Shop["TPFruit"] then
            pcall(function()
                for i, v in pairs(game.Workspace.Dropped_Items:GetDescendants()) do
                    if v:FindFirstChild("Handle") then
                        TP(v.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Shop["RamdomFruit"] then
            pcall(function()
                BuyFruit(_G.Settings.Shop["SelectM"])
                wait(4)
            end)
        end
    end
end)

Tabs.ShopTab:AddToggle("", {Title = "Auto Ramdom Fruit", Default = _G.Settings.Shop["RamdomFruit"] }):OnChanged(function(va)
    _G.Settings.Shop["RamdomFruit"] = va
    SaveSettings()
end)

Tabs.ShopTab:AddParagraph({
    Title = "Shop Tab",
    Content = "Buy Another Item"
})

Tabs.ShopTab:AddToggle("", {Title = "Roll Haki Color", Default = _G.Settings.Shop["RollHaki"] }):OnChanged(function(va)
    _G.Settings.Shop["RollHaki"] = va
    SaveSettings()
end)

function BuyHaki(va)
    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Ability_Teacher", va)
end

Tabs.ShopTab:AddButton({
    Title = "Buy Aura (Buso Haki)",
    Description = "Need a meme cube and 10M belis",
    Callback = function()
        BuyHaki("Aura Master")
    end
})

Tabs.ShopTab:AddButton({
    Title = "Buy instinct (Ken Haki)",
    Description = "Need 5M belis",
    Callback = function()
        BuyHaki("Nugget Man")
    end
})

Tabs.ShopTab:AddButton({
    Title = "Buy Quest Scroll",
    Description = "Need 1M belis",
    Callback = function()
        local args = {
            [1] = "Upgrade_Quest",
            [2] = "Popcat"
        }
        game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer(unpack(args))
    end
})

Tabs.ShopTab:AddButton({
    Title = "Reroll Race",
    Description = "Need 250 gems",
    Callback = function()
        game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Reroll_Race", "Watermelon Man")
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.Shop["RollHaki"] then
                if not plz.Items.AuraColor.Spectrum.Value == true then
                    RollHaki()
                    wait(.1)
                end
            end
        end)
    end
end)

local ValueS = plz.PlayerData

local Sat = Tabs.TeleTab:AddParagraph({
    Title = "",
    Content = ""
})

function Stat(va)
    local ohTable1 = {
        ["Target"] = va,
        ["Action"] = "UpgradeStats",
        ["Amount"] = 1
    }
    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer(ohTable1)
end

spawn(function()
    while wait() do
        if ValueS.SkillPoint.Value > 1 then
            if _G.Settings.Teleport["AutoMelee"] then
                Stat("MeleeLevel")
            end
            if _G.Settings.Teleport["AutoDefense"] then
                Stat("DefenseLevel")
            end
            if _G.Settings.Teleport["AutoSword"] then
                Stat("SwordLevel")
            end
            if _G.Settings.Teleport["AutoPower"] then
                Stat("MemePowerLevel")
            end
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            Sat:SetTitle("Melee: " .. ValueS.MeleeLevel.Value .. " / Defense: " .. ValueS.DefenseLevel.Value .. " / Sword: " .. ValueS.SwordLevel.Value)
            Sat:SetDesc("Power: " .. ValueS.MemePowerLevel.Value .. " / Points :" .. ValueS.SkillPoint.Value)
            wait(1)
        end)
    end
end)


Tabs.TeleTab:AddToggle("", {Title = "Auto Melee", Default = _G.Settings.Teleport["AutoMelee"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoMelee"] = va
    SaveSettings()
end)

Tabs.TeleTab:AddToggle("", {Title = "Auto Defense", Default = _G.Settings.Teleport["AutoDefense"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoDefense"] = va
    SaveSettings()
end)

Tabs.TeleTab:AddToggle("", {Title = "Auto Sword", Default = _G.Settings.Teleport["AutoSword"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoSword"] = va
    SaveSettings()
end)

Tabs.TeleTab:AddToggle("", {Title = "Auto Power", Default = _G.Settings.Teleport["AutoPower"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoPower"] = va
    SaveSettings()
end)


Tabs.TeleTab:AddParagraph({
    Title = "Teleport Island",
    Content = "Teleport To The Location You Choose"
})

local MapNames = {}

for _, v in pairs(game.Workspace.Location.Teleport:GetChildren()) do
        table.insert(MapNames, v.Name)
end


local vava = Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "Island",
    Values = MapNames,
    Default = _G.Settings.Teleport["SelectIsland"],
    Callback = function(va)
        _G.Settings.Teleport["SelectIsland"] = va
        SaveSettings()
    end
})

Tabs.TeleTab:AddButton({
    Title = "Telport",
    Description = "",
    Callback = function()
        TP(game.Workspace.Location.Teleport[_G.Settings.Teleport["SelectIsland"]].CFrame)
    end
})

 

Tabs.SetTab:AddParagraph({
    Title = "Setting Auto Farm",
    Content = ""
})

 Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Weapon",
    Values = {"Melee", "Sword", "Power"},
    Default = _G.Settings.Config["SelectWeapon"],
    Callback = function(va)
        _G.Settings.Config["SelectWeapon"] = va
        SaveSettings()
    end
})


Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Method",
    Values = {"Behind", "Below", "Upper"},
    Default = _G.Settings.Config["SelectMethod"],
    Callback = function(va)
        _G.Settings.Config["SelectMethod"] = va
        SaveSettings()
    end
})


Tabs.SetTab:AddSlider("", {
    Title = "Distance",
    Description = "",
    Default = _G.Settings.Config["DistanceMon"],
    Min = 0,
    Max = 50,
    Rounding = 1,
    Callback = function(va)
        _G.Settings.Config["DistanceMon"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddToggle("", {Title = "Buso Haki", Default = _G.Settings.Config["BusoHaki"] }):OnChanged(function(va)
    _G.Settings.Config["BusoHaki"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Ken Haki", Default = _G.Settings.Config["KenHaki"] }):OnChanged(function(va)
    _G.Settings.Config["KenHaki"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Auto Race", Default = _G.Settings.Config["AutoRace"] }):OnChanged(function(va)
    _G.Settings.Config["AutoRace"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Bring Mob", Default = _G.Settings.Config["BringMob"] }):OnChanged(function(va)
    _G.Settings.Config["BringMob"] = va
    SaveSettings()
end)


Tabs.SetTab:AddParagraph({
    Title = "Auto Skill",
    Content = "Turn off all moves you cannot use if using mobile"
})

Tabs.SetTab:AddToggle("", {Title = "Auto Skill", Default = _G.Settings.Config["AutoSkill"] }):OnChanged(function(va)
    _G.Settings.Config["AutoSkill"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Skill Z", Default = _G.Settings.Config["Z"] }):OnChanged(function(va)
    _G.Settings.Config["Z"] = va
    SaveSettings()
end)
Tabs.SetTab:AddToggle("", {Title = "Skill X", Default = _G.Settings.Config["X"] }):OnChanged(function(va)
    _G.Settings.Config["X"] = va
    SaveSettings()
end)
Tabs.SetTab:AddToggle("", {Title = "Skill C", Default = _G.Settings.Config["C"] }):OnChanged(function(va)
    _G.Settings.Config["C"] = va
    SaveSettings()
end)
Tabs.SetTab:AddToggle("", {Title = "Skill V", Default = _G.Settings.Config["V"] }):OnChanged(function(va)
    _G.Settings.Config["V"] = va
    SaveSettings()
end)


Tabs.MiscTab:AddParagraph({
    Title = "Misc Function",
    Content = "mr beat rizz"
})

Tabs.MiscTab:AddToggle("", {Title = "Black Screen", Default = _G.Settings.Config["Black"] }):OnChanged(function(va)
    _G.Settings.Config["Black"] = va
    plz.PlayerGui.Jumpscare.Beast.Enabled = va
    SaveSettings()
end)

Tabs.MiscTab:AddToggle("", {Title = "Removes Skill Effects ", Default = _G.Settings.Config["DeleteSkill"] }):OnChanged(function(va)
    _G.Settings.Config["DeleteSkill"] = va
    SaveSettings()
end)

Tabs.MiscTab:AddButton({
    Title = "Boost FPS",
    Description = "",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/AntiLag2"))()
    end
})

Tabs.MiscTab:AddButton({
    Title = "Anti Afk",
    Description = "",
    Callback = function()
        local Value = game:GetService("VirtualUser")
		repeat wait() until game:IsLoaded()
			game:GetService("Players").LocalPlayer.Idled:connect(function()
		    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   end)
    end
})