function Autoskill()
    while true do wait()
        if game.Players.yovrovaz.Character:FindFirstChild("Agility") then
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.Z,false,game) 
    wait()
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.Z,false,game) 
        end
end
end

Autoskill()