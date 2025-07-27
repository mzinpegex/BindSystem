local uis = game:GetService("UserInputService")
local repS = game:GetService("ReplicatedStorage")

local Assets = repS.Assets
local remote = Assets.OverAllRemotes.KeyInput

uis.InputBegan:Connect(function(key, gpe)
	if gpe then return end
	
	if key.KeyCode then
		remote:FireServer(key.KeyCode.Name)
	end
	
	if key.UserInputType then
		remote:FireServer(key.UserInputType.Name)
	end
end)
