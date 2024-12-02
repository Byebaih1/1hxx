function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 10000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end


function SetPosition()
    while true do wait()
    
        TP(CFrame.new(799.416748, 41.264595, 33003.8164, 0.999824941, 1.08061926e-07, -0.0187099483, -1.07730038e-07, 1, 1.87464479e-08, 0.0187099483, -1.67275438e-08, 0.999824941))
 
end

end

SetPosition()
