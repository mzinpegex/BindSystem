local repS = game:GetService("ReplicatedStorage")

local Assets = repS.Assets
local remote = Assets.OverAllRemotes.KeyInput

local InputsModule = require(script.Inputs_Handler)

remote.OnServerEvent:Connect(function(plr, ...)
	if ... == "Unknown" or ... == "Keyboard" then return end
	
	InputsModule.Binds(plr, ...)
end)
