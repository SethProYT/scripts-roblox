_G.KeyWhitelist = ""
local keys = loadstring(game:HttpGet("https://pastebin.com/raw/F6gaZ8Z5", true))()

if keys[_G.KeyWhitelist] then
     if game.placeId == 539960592 then

          local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
          
          local UI = Material.Load({
               Title = "private",
               Style = 3,
               SizeX = 400,
               SizeY = 400,
               Theme = "Dark"
          })
     
          local Page = UI.New({
               Title = "Main"
           })
           
     
          Page.Button({
               Text = "dance on the literal shelf",
               Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92.3054428, 11.9728537, -90.758667, 0.108482525, -4.43863968e-08, -0.994098365, 7.39295061e-08, 1, -3.65822324e-08, 0.994098365, -6.95246669e-08, 0.108482525)
                    game.Players:Chat("/e dance")
               end
           })
           
     end

else
     game.Players.LocalPlayer:Kick("Wrong key")
end

   

