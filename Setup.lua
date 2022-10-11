--!strict
-- Setup for Watchdog Lite.

local Watchdog = require(script.Parent.WatchdogLite)

local Players = game:GetService("Players")
local CheckedPlayers = {}

local function OnPlayerAdded(player : Player)
	if CheckedPlayers[player] then return end
	CheckedPlayers[player] = true
	
	if not Watchdog.Verify(player) then return end
end

local function OnPlayerRemoving(player : Player)
	CheckedPlayers[player] = nil
end

Players.PlayerAdded:Connect(OnPlayerAdded)
Players.PlayerRemoving:Connect(OnPlayerRemoving)

for _, player in ipairs(Players:GetPlayers()) do
	OnPlayerAdded(player)
end
