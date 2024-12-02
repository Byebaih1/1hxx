local Players = game:GetService("Players")

function AutoEquip()
    local player = Players.LocalPlayer
    local toolName = "Kabucha"

    -- Function to equip the tool if it's found in the backpack
    local function equipTool()
        local backpack = player.Backpack
        local character = player.Character

        -- Check if the tool exists in the backpack
        if backpack:FindFirstChild(toolName) and not character:FindFirstChild(toolName) then
            local tool = backpack:FindFirstChild(toolName)
            if tool then
                wait(0.1)  -- Wait a moment before equipping
                character.Humanoid:EquipTool(tool)
            end
        end
    end

    -- Connect the equipTool function to the Backpack's ChildAdded event
    player.Backpack.ChildAdded:Connect(equipTool)

    -- Initial check to equip the tool if it's already in the backpack
    equipTool()

    -- Keep checking periodically (every second)
    while true do
        task.wait(1)
        equipTool()
    end
end

AutoEquip()
