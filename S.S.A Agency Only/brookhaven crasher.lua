local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
getgenv().toggle = true

function k()
    game:GetService("RunService").Heartbeat:Connect(function()
        if getgenv().toggle == true then
            fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].Assault.ClickDetector)
            fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].GlockBrown.ClickDetector)
            fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].Shotgun.ClickDetector)
            wait(0.95)
            local args = {
                [1] = "RolePlayName",
                [2] = "crashing server...."
            }
            game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
            wait(0.95)
            local args = {
                [1] = "RolePlayBio",
                [2] = "YOU ARE ALL DOOMED"
            }

            game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
            wait(0.95)
            local args = {
                [1] = "RolePlayName",
                [2] = "crashing server"
            }
            game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
            wait(0.95)
            local args = {
                [1] = "RolePlayBio",
                [2] = "HAHAHAHA"
            }
            wait(0.95)
            game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
            -- Script generated by SimpleSpy - credits to exx#9394

            local args = {
                [1] = "CharacterSizeDown",
                [2] = 0.95
            }
            wait(0.95)
            game:GetService("ReplicatedStorage").RemoteEvents.Clothes:FireServer(unpack(args))

            -- Script generated by SimpleSpy - credits to exx#9394

            local args = {
                [1] = "CharacterSizeDown",
                [2] = 0.85
            }

            game:GetService("ReplicatedStorage").RemoteEvents.Clothes:FireServer(unpack(args))

            -- Script generated by SimpleSpy - credits to exx#9394

            local args = {
                [1] = "CharacterSizeDown",
                [2] = 0.75
            }

            game:GetService("ReplicatedStorage").RemoteEvents.Clothes:FireServer(unpack(args))

        end
    end)
end

function o()
    while wait() do
        fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].Assault.ClickDetector)
        fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].GlockBrown.ClickDetector)
        fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].Shotgun.ClickDetector)
        local args = {
            [1] = "RolePlayName",
            [2] = "crashing server...."
        }
        game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
        local args = {
            [1] = "RolePlayBio",
            [2] = "YOU ARE ALL DOOMED"
        }

        game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
        local args = {
            [1] = "RolePlayName",
            [2] = "crashing server"
        }
        game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
        local args = {
            [1] = "RolePlayBio",
            [2] = "HAHAHAHA"
        }
        game:GetService("ReplicatedStorage").RemoteEvents.R16PNameE16vent:FireServer(unpack(args))
        -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = "CharacterSizeDown",
            [2] = 0.95
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Clothes:FireServer(unpack(args))
        -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = "CharacterSizeDown",
            [2] = 0.85
        }

        game:GetService("ReplicatedStorage").RemoteEvents.Clothes:FireServer(unpack(args))

        -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = "CharacterSizeDown",
            [2] = 0.75
        }

        game:GetService("ReplicatedStorage").RemoteEvents.Clothes:FireServer(unpack(args))
    end
end

-- Put more k() if you want to make the crash even faster

-- k()
-- o()
