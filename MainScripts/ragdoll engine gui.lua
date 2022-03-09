local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("welcome back, " .. game:GetService "Players".LocalPlayer.Name)
local serv = win:Server("Ragdoll Engine GUI", "")
local Main = serv:Channel("Main")
char = game:GetService "Players".LocalPlayer.Character

Main:Button(
    "Anti-Ragdoll, Anti-Push",
    function()
        char.Humanoid.StateChanged:Connect(function(old, new)
            if old and new == Enum.HumanoidStateType.FallingDown then
                char.Humanoid:ChangeState(Enum.HumanoidStateType.Standing)
            end
        end)
        char.Humanoid.StateChanged:Connect(function(old, new)
            if new == Enum.HumanoidStateType.Physics then
                char.Humanoid:ChangeState(old)
            end
        end)

        char.Pushed:Destroy()
        char.RagdollMe:Destroy()
        DiscordLib:Notification("Notification", "If this doesn't work on reset, press this button again!", "Got it")
    end
)

Main:Toggle(
    "Push-Aura",
    false,
    function(bool)
        getgenv().pushaura = bool
        char = game.Players.LocalPlayer.Character

        for _, v in pairs(char:GetChildren()) do
            if v:IsA("BasePart") then
                v.Touched:Connect(function(hit)
                    if getgenv().pushaura == true then
                        local A_1 = game:GetService("Workspace"):FindFirstChild(hit.Parent.Name)
                        local Event = game:GetService("Players").LocalPlayer.Character.Push.PushTool
                        Event:FireServer(A_1)
                    end
                end)
            end
        end

    end
)

-- btns:Button(
--     "Kill all",
--     function()
--         DiscordLib:Notification("Notification", "Killed everyone!", "Okay!")
--     end
-- )

-- btns:Seperator()

-- btns:Button(
--     "Get max level",
--     function()
--         DiscordLib:Notification("Notification", "Max level!", "Okay!")
--     end
-- )

-- local tgls = serv:Channel("Toggles")

-- tgls:Toggle(
--     "Auto-Farm",
--     false,
--     function(bool)
--         print(bool)
--     end
-- )

-- local sldrs = serv:Channel("Sliders")

-- local sldr =
--     sldrs:Slider(
--     "Slide me!",
--     0,
--     1000,
--     400,
--     function(t)
--         print(t)
--     end
-- )

-- sldrs:Button(
--     "Change to 50",
--     function()
--         sldr:Change(50)
--     end
-- )

-- local drops = serv:Channel("Dropdowns")

-- local drop =
--     drops:Dropdown(
--     "Pick me!",
--     {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"},
--     function(bool)
--         print(bool)
--     end
-- )

-- drops:Button(
--     "Clear",
--     function()
--         drop:Clear()
--     end
-- )

-- drops:Button(
--     "Add option",
--     function()
--         drop:Add("Option")
--     end
-- )

-- local clrs = serv:Channel("Colorpickers")

-- clrs:Colorpicker(
--     "ESP Color",
--     Color3.fromRGB(255, 1, 1),
--     function(t)
--         print(t)
--     end
-- )

-- local textbs = serv:Channel("Textboxes")

-- textbs:Textbox(
--     "Gun power",
--     "Type here!",
--     true,
--     function(t)
--         print(t)
--     end
-- )

-- local lbls = serv:Channel("Labels")

-- lbls:Label("This is just a label.")

-- local bnds = serv:Channel("Binds")

-- bnds:Bind(
--     "Kill bind",
--     Enum.KeyCode.RightShift,
--     function()
--         print("Killed everyone!")
--     end
-- )

-- serv:Channel("by dawid#7205")

-- win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")