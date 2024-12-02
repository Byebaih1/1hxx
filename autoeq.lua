function AutoEquip()
    while true do wait()
    a = "Kabucha"
        if game.Players.LocalPlayer.Backpack:FindFirstChild(a) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(a)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end 
end


AutoEquip()
