AddCSLuaFile()
DEFINE_BASSECLASS("base_wire_entity")
ENT.PrintName = "VR Wire Numpad"
ENT.WireDebugName = "VRNumpad"

if CLIENT then return end

function ENT:Initialize()
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )

end