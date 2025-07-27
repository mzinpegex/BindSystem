local module = {}

local runs = game:GetService("RunService")

if runs:IsClient() then return end

local Inputs_Actions = require(script.Parent.Inputs_Actions)

module.Binds = function(plr:Player, Input:string)
	if not plr then return end;if not Input then return end
	
	local Bind = plr.PlayerGui:FindFirstChild("Binds")
	
	for i, v in pairs(Bind:GetChildren()) do
		if v.Value == Input then
			Inputs_Actions[v.Name](plr)
		end
	end
end

return module
