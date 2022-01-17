char = game.Players.LocalPlayer.Character

for _, v in pairs(char:GetChildren()) do
    if v:IsA("BasePart") then
       v.Touched:Connect(function(hit)
           local A_1 = game:GetService("Workspace"):FindFirstChild(hit.Parent.Name)
           local Event = game:GetService("Players").LocalPlayer.Character.Push.PushTool
           Event:FireServer(A_1)
       end)
    end
end

char.Pushed:Destroy()
char.RagdollMe:Destroy()