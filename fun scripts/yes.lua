--// VARIABLES \\ --
plrs = game:GetService("Players")
LocalPlayer = plrs.LocalPlayer
char = LocalPlayer.Character
Stamina = 50

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Pushed = Death, Good luck! Loading GUI", "All")


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Use your stamina wisely, stamina will not regenerate", "All")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("System", "Synapse")

local Tab = Window:NewTab("Bars")
local Bars = Tab:NewSection("Bars")

Bars:NewLabel("Stamina: " .. Stamina)