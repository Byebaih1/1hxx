function AutoAimtotarget()

    while true do wait()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    
                        args[2] = AimBotSkillPosition
                        return old(unpack(args))
                    
                end
            end
        end
        return old(...)
    end)
    spawn(function()
        if  game.workspace:FindFirstChild("Byebaih-JukJuk") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
            local args = {
                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 350 + Vector3.new(0, 15, 0)
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
        end
    end)
    end
    
    
    
    end
    
    AutoAimtotarget()