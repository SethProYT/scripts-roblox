getgenv().scriptloaded = false
getgenv().fly = false

local player = game:GetService("Players").LocalPlayer
local char = player.Character

function flyjump()
    while wait() do
    if getgenv().fly == true then
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        end
    end
end

local function startscript()
  if getgenv().scriptloaded == true then return end

  player.Chatted:Connect(function(raw_msg)
      if raw_msg:lower():gsub(1,4)==";flyjump" then
          getgemv().fly = true
          flyjump()
      end
  end)

end

startscript()