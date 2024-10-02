repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "035dfe542115996b1ca52511"
getgenv().SettingFarm ={
    ["Fast Attack"] = {
        ["Speed Attack"] = 0,
        ["Attack Duration"] = 5,
        ["Speed Attack if Cooldown"] = 0.25,
        ["Attack Cooldown"] = 7,
    },
    ["Reset Teleport"] = {
        ["Enabled"] = false,
        ["Delay Reset"] = 3,
        ["Item Dont Reset"] = {
            ["Fruit"] = {
                ["Enabled"] = true,
                ["All Fruit"] = true, 
                ["Select Fruit"] = {
                    ["Enabled"] = false,
                    ["Fruit"] = {},
                },
            },
        },
    },
    ["Lock FPS"] = {
        ["Enabled"] = false,
        ["FPS"] = 60,
    },
    ["Auto Awaken Fruit"] = false, -- dont support  phoenix
    ["GodHuman"] = true,
    ["Priority Get Melee Sea 3"] = false,
    ["Auto Saber"] = true,
    ["Auto Pole"] = true,
    ["Cursed Dual Katana"] = true,
    ["SoulGuitar"] = true,
    ["Shark Anchor"] = true, --i have cdk and god and soulguitar
    ["Farm Mastery Fruit If Lvl Max"] = false,
    ["Hop Fruit 1M Quest Third Sea"] = false,
    ["White Screen"] = false,
    ["Hop if Near Farm Area"] = true,
    ["Auto Race V2-V3"] = true,
    ["Auto Pull Lever"] = true,
    ["Auto Get Mirror Fractal"] = true,
    ["Lock Fragment"] = {
        ["Enabled"] = false,
        ["Fragments"] = 25000
    },
    ["Buy Haki Color Legendary"] = false, --- it will buy if u have sgt and godhuman and dont have Valkyrie Helm
    ["Select Hop"] = { -- 70% will have it
        ["Hop Find Rip Indra Get Valkyrie Helm"] = false, -- u need have godhuman and max level
        ["Hop Find Full Moon Soul Guitar"] = false,
        ["Hop Find Rip Indra Get Tushita"] = false, --- u need have sgt and godhuman
        ["Hop Find Raids Castle [CDK]"] = false,
        ["Hop Find Cake Queen [CDK]"] = false,
    },
    ["Race"] = {
        ["Enabled"] = false,
        ["Auto Roll Race"] = false,
        ["Select Race"] =  "", -- Human, Mink, Fishman
    },
    ["Buy Haki"] = {
        ["Enhancement"] = false,
        ["Skyjump"] = true,
        ["Flash Step"] = true,
        ["Observation"] = true,
    },
    ["Blox Fruit Sniper"] = {},
    ["Lock Fruit"] = {},
    ["Webhook"] = {
        ["Enabled"] = false,
        ["WebhookUrl"] = "",
    }
}


loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-kaitunBF.lua"))()
