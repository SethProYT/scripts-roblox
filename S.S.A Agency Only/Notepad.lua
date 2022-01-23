    local NotepadGUI = Instance.new("ScreenGui")
    local Holder = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local Settings = Instance.new("TextButton")
    local SettingsTab = Instance.new("Frame")
    local TextSize = Instance.new("TextLabel")
    local TextSize_2 = Instance.new("TextBox")
    local Close = Instance.new("TextButton")
    local Title = Instance.new("TextLabel")


    NotepadGUI.Name = "NotepadGUI"
    NotepadGUI.Parent = game.CoreGui
    NotepadGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Holder.Name = "Holder"
    Holder.Parent = NotepadGUI
    Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Holder.Position = UDim2.new(0.204861119, 0, 0.30930233, 0)
    Holder.Size = UDim2.new(0, 490, 0, 226)
    Holder.Active = true
    Holder.Draggable = true

    TextBox.Parent = Holder
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.Position = UDim2.new(0, 0, 0.185840711, 0)
    TextBox.Size = UDim2.new(0, 490, 0, 184)
    TextBox.Font = Enum.Font.SourceSans
    TextBox.Text = "Write information about the victim here...."
    TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.TextSize = 20.000
    TextBox.TextWrapped = true
    TextBox.TextXAlignment = Enum.TextXAlignment.Left
    TextBox.TextYAlignment = Enum.TextYAlignment.Top
    TextBox.ClearTextOnFocus = false
    TextBox.MultiLine = true

    Settings.Name = "Settings"
    Settings.Parent = Holder
    Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Settings.Position = UDim2.new(-0.46938774, 0, -0.778761029, 0)
    Settings.Size = UDim2.new(0, 200, 0, 50)
    Settings.Font = Enum.Font.SourceSans
    Settings.Text = "Settings"
    Settings.TextColor3 = Color3.fromRGB(0, 0, 0)
    Settings.TextScaled = true
    Settings.TextSize = 14.000
    Settings.TextWrapped = true

    SettingsTab.Name = "SettingsTab"
    SettingsTab.Parent = Settings
    SettingsTab.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
    SettingsTab.Position = UDim2.new(0.654955447, 0, 2.41719794, 0)
    SettingsTab.Size = UDim2.new(0, 605, 0, 288)
    SettingsTab.Visible = false

    TextSize.Name = "TextSize"
    TextSize.Parent = SettingsTab
    TextSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextSize.Position = UDim2.new(0.0280991718, 0, 0.413194448, 0)
    TextSize.Size = UDim2.new(0, 200, 0, 50)
    TextSize.Font = Enum.Font.GothamBold
    TextSize.Text = "Set TextSize"
    TextSize.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextSize.TextScaled = true
    TextSize.TextSize = 14.000
    TextSize.TextWrapped = true

    TextSize_2.Name = "TextSize"
    TextSize_2.Parent = SettingsTab
    TextSize_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextSize_2.Position = UDim2.new(0.391735554, 0, 0.413194448, 0)
    TextSize_2.Size = UDim2.new(0, 63, 0, 50)
    TextSize_2.Font = Enum.Font.SourceSans
    TextSize_2.Text = "20"
    TextSize_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextSize_2.TextScaled = true
    TextSize_2.TextSize = 14.000
    TextSize_2.TextWrapped = true

    Close.Name = "Close"
    Close.Parent = SettingsTab
    Close.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    Close.Position = UDim2.new(0.872727275, 0, 0, 0)
    Close.Size = UDim2.new(0, 77, 0, 52)
    Close.Font = Enum.Font.SourceSans
    Close.Text = "X"
    Close.TextColor3 = Color3.fromRGB(0, 0, 0)
    Close.TextScaled = true
    Close.TextSize = 14.000
    Close.TextWrapped = true

    Title.Name = "Title"
    Title.Parent = Holder
    Title.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    Title.Position = UDim2.new(-0.00126133859, 0, -0.000432193279, 0)
    Title.Size = UDim2.new(0, 490, 0, 42)
    Title.Font = Enum.Font.SourceSans
    Title.Text = "S.S.A Notepad"
    Title.TextColor3 = Color3.fromRGB(255, 0, 4)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true

    -- Scripts:

    local function ZBZL_fake_script() -- Settings.Handler 
        local script = Instance.new('LocalScript', Settings)

        script.Parent.MouseButton1Click:Connect(function()
            script.Parent.SettingsTab.Visible = true
        end)
    end
    coroutine.wrap(ZBZL_fake_script)()
    local function JCICN_fake_script() -- TextSize_2.Handler 
        local script = Instance.new('LocalScript', TextSize_2)

        script.Parent.Changed:Connect(function()
            script.Parent.Parent.Parent.Parent.TextBox.TextSize = script.Parent.Text
        end)
    end
    coroutine.wrap(JCICN_fake_script)()
    local function VZCAZZ_fake_script() -- Close.LocalScript 
        local script = Instance.new('LocalScript', Close)

        script.Parent.MouseButton1Click:Connect(function()
            script.Parent.Parent.Visible = false
        end)
    end
    coroutine.wrap(VZCAZZ_fake_script)()
