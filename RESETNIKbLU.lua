local Players = game:GetService("Players")
local player = Players.LocalPlayer
local backpackLimit = 40 -- лимит сумки

while true do
    task.wait(0.5) -- проверка каждые 0.5 сек
    local stats = player:FindFirstChild("Data")
    if stats and stats:FindFirstChild("Coins") then
        if stats.Coins.Value >= backpackLimit then
            player.Character:BreakJoints() -- ресет
        end
    end
end
