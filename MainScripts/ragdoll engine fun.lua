local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local message = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest


local function startgame()
    message:FireServer("RAGDOLL ENGINE BUT IF YOU GET PUSHED YOU'LL DIE GOOD LUCK", "All")
    Character.Humanoid.StateChanged:Connect(function(o,n)
        if n == Enum.HumanoidStateType.Physics or Enum.HumanoidStateType.FallingDown then
            Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            message:FireServer("You got pushed! good luck next time...", "All")
        end
    end)
end

startgame()