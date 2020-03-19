AddCSLuaFile()
DEFINE_BASECLASS("base_wire_entity")
ENT.PrintName = "Wire VR Numpad"
ENT.WireDebugName = "VR Numpad"

if CLIENT then return end

//Make list of reasonable inputs instead of taking complete list from table (which can only be done client-side anyways)
local actionlist = {"boolean_changeweapon","boolean_chat","boolean_flashlight","boolean_jump","boolean_left_pickup","boolean_right_pickup","boolean_primaryfire","boolean_secondaryfire","boolean_reload","boolean_spawnmenu","boolean_sprint","boolean_use","boolean_walk"}

local function actionName(vrkeygroup)
	return keylist[vrkeygroup] or ""
end

function ENT:Initialize()

	//VRmod Variables
	self.vrInput = {}


	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )

	// Used to keep track of numpad.OnUp/Down returns
	self.OnUpImpulse = nil
	self.OnDownImpulse = nil

	self.Outputs = Wire_CreateOutputs(self, { "Out" })
end