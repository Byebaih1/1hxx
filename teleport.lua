local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

-- Function to teleport all players to LocalPlayer's position
local function teleportPlayersToMe(distance)
    local localPlayer = Players.LocalPlayer
    if not localPlayer then
        return
    end

    local localCharacter = localPlayer.Character
    if not localCharacter then
        return
    end

    local humanoidRootPart = localCharacter:WaitForChild("HumanoidRootPart")
    local currentPosition = humanoidRootPart.Position

    -- Calculate the destination position (in front of the LocalPlayer)
    local direction = humanoidRootPart.CFrame.LookVector
    local destinationPosition = currentPosition + direction * distance

    -- Teleport all players to the calculated destination position
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            local character = player.Character
            if character then
                local playerHumanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if playerHumanoidRootPart then
                    playerHumanoidRootPart.CFrame = CFrame.new(destinationPosition)
                end
            end
        end
    end
end

function BringPlayer()
    while true do
        task.wait(1) -- Adjust the wait time as necessary
        local localPlayer = Players.LocalPlayer
        if not localPlayer or not localPlayer.Character then
            return
        end

        local playerPosition = localPlayer.Character.HumanoidRootPart.Position
        local targetPosition = Vector3.new(3898.87524, 57.1539268, 1825.19861)
        local dt = (playerPosition - targetPosition).Magnitude

        if dt < 50000000000000 then -- Adjust this threshold as necessary
            for distance = 20, 180, 20 do
                teleportPlayersToMe(distance)
                task.wait(0.001) -- Adjust the wait time as necessary
            end
        end
    end
end

BringPlayer()

