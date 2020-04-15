AddCSLuaFile("cl_init.lua")
AddCSLuaFile("Shared.lua")

include("shared.lua")



function ENT:Initialize()
	self:SetModel("models/hunter/blocks/cube075x075x075.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()

	if phys:InValid() then 
		phys:Wake()

	end
	
end


function ENT:Use(a , c)
	print("Someone used me :<")
	print("I was used by"..c:Nick())

end
