local module = {}

local repF = game:GetService("ReplicatedFirst")

module.Test = function(plr:Player, ...)
	print("Working")
end

module.MenuTrigger = function(plr:Player, ...)
	local args = {...}
	
	local Menu = repF
end

return module
