local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

-- Function to teleport all players to LocalPlayer's position
local function teleportPlayersToMe(XXX)
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
    local distance = XXX  -- Adjust the distance in front of the player
    local direction = humanoidRootPart.CFrame.LookVector
    local destinationPosition = currentPosition + direction * distance

    -- Teleport all players to the calculated destination position
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            local character = player.Character
            if character then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    humanoidRootPart.CFrame = CFrame.new(destinationPosition)
                end
            end
        end
    end
end


function BringPlayer()
    while true do wait()
 local dt =  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position  - Vector3.new(3898.87524, 57.1539268, 1825.19861, -0.234451577, 0, -0.972127795, 0, 1, 0, 0.972127795, 0, -0.234451577)).Magnitude
    if dt < 50000000000 then
    teleportPlayersToMe(20)
    wait()
    teleportPlayersToMe(40)
    wait()
    teleportPlayersToMe(60)
    wait()
    teleportPlayersToMe(80)
    wait()
    teleportPlayersToMe(100)
    wait()
    teleportPlayersToMe(120)
    wait()
    teleportPlayersToMe(140)
    wait()
    teleportPlayersToMe(160)
    wait()
    teleportPlayersToMe(180)
end
end
end

BringPlayer()
