-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CW_GUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 250, 0, 150)
Frame.Position = UDim2.new(0.5, -125, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.1
Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Title.Text = "CW - Bubby"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.Parent = Frame

local Button1 = Instance.new("TextButton")
Button1.Size = UDim2.new(0.9, 0, 0, 40)
Button1.Position = UDim2.new(0.05, 0, 0, 40)
Button1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button1.Text = "Infinite Stamina"
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
Button1.Font = Enum.Font.Gotham
Button1.TextSize = 14
Button1.Parent = Frame

local Button2 = Instance.new("TextButton")
Button2.Size = UDim2.new(0.9, 0, 0, 40)
Button2.Position = UDim2.new(0.05, 0, 0, 90)
Button2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button2.Text = "Toggle Head Mod (Banable)"
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
Button2.Font = Enum.Font.Gotham
Button2.TextSize = 14
Button2.Parent = Frame

-- Button functionality
Button1.MouseButton1Click:Connect(function()
    for i, v in pairs(getgc(true)) do
        if typeof(v) == "table" and rawget(v, "getIsMaxed") then
            v.getIsMaxed = function()
                return false
            end
            v.getFlags = function()
                return 1
            end
            v.addFlags = function(a, b)
                a:setFlags(0)
                return
            end
        end
        if typeof(v) == "table" and rawget(v, "spawnCharacter") then
            local oldfunc = v.spawnCharacter
            v.SpawnCharacter = function(a)
                for _, f in pairs(getgc(true)) do
                    if typeof(f) == "table" and rawget(f, "getIsMaxed") then
                        f.getIsMaxed = function()
                            return false
                        end
                        f.getFlags = function()
                            return 1
                        end
                        f.addFlags = function(aa, b)
                            aa:setFlags(0)
                            return
                        end
                    end
                end
            end
        end
        if typeof(v) == "table" and rawget(v, "getCanJump") then
            v.getCanJump = function()
                return true
            end
        end
        if typeof(v) == "table" and rawget(v, "JUMP_DELAY_ADD") then
            v.JUMP_DELAY_ADD = 0.5
        end
        if typeof(v) == "table" and rawget(v, "_setStamina") then
            v._setStamina = function(a, b)
                a._stamina = math.huge
                a._staminaChangedSignal:Fire(99)
            end
        end
    end

    game.StarterGui:SetCore("SendNotification", {
        Title = "CB",
        Text = "Script loaded, " .. game.Players.LocalPlayer.DisplayName .. ".",
        Duration = 4
    })
end)

local toggled = false
Button2.MouseButton1Click:Connect(function()
    toggled = not toggled
    _G.HeadSize = 10
    _G.Disabled = toggled

    if toggled then
        game:GetService('RunService').RenderStepped:Connect(function()
            if _G.Disabled then
                for i, v in next, game:GetService('Players'):GetPlayers() do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            v.Character.Head.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                            v.Character.Head.Transparency = 1
                            v.Character.Head.BrickColor = BrickColor.new("Red")
                            v.Character.Head.Material = "Neon"
                            v.Character.Head.CanCollide = false
                            v.Character.Head.Massless = true
                        end)
                    end
                end
            end
        end)
    end
end)
