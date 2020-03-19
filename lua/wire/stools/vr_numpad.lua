WireToolSetup.setCategory("Input, Output/Keyboard Interaction")
WireToolSetup.open( "vr_numpad", "VR Numpad", "gmod_wire_vr_numpad", nil, "VR Numpads")
 
if CLIENT then
    language.Add( "Tool.vr_numpad.name", "Wired VR Numpad" )
	language.Add( "Tool.vr_numpad.desc", "Creates a VR numpad to integrate with Wire." )
	language.Add( "WireVrNumpadTool_vrkeygroup", "VR Action:" )
	language.Add( "WireVrNumpadTool_toggle", "Toggle" )
	language.Add( "WireVrNumpadTool_value_on", "Value On:" )
	language.Add( "WireVrNumpadTool_value_off", "Value Off:" )
    TOOL.Information = { { name = "left", text = "Create/Update " .. TOOL.Name } }
end
WireToolSetup.BaseLang()
WireToolSetup.SetupMax(20)


if SERVER then
    ModelPlug_Register("VR Numpad")

    function TOOL:GetConVars()
        return self:GetClientNumber( "toggle" )==1, self:GetClientNumber( "value_off" ), self:GetClientNumber( "value_on" )
    end

end

TOOL.ClientConVar = {
	model = "models/beer/wiremod/numpad.mdl",
	modelsize = "",
	vrkeygroup = 0;
	toggle = 0,
	value_off = 0,
	value_on = 0,
}


function TOOL.BuildCPanel(panel)
	WireToolHelpers.MakePresetControl(panel, "wire_vr_numpad")
	WireToolHelpers.MakeModelSizer(panel, "wire_vr_numpad_modelsize")
	panel:AddControl("ListBox", {
		Label = "#WireVrNumpadTool_vrkeygroup",
		Options = {
			["Change Weapon Menu"] = { [wire_vr_numpad_vrkeygroup] = "0" },
			["Chat Menu"] = { [wire_vr_numpad_vrkeygroup] = "1" },
			["Flashlight"] = { [wire_vr_numpad_vrkeygroup] = "2" },
			["Jump"] = { [wire_vr_numpad_vrkeygroup] = "3" },
			["Left Hand Pickup"] = { [wire_vr_numpad_vrkeygroup] = "4" },
			["Right Hand Pickup"] = { [wire_vr_numpad_vrkeygroup] = "5" },
			["Primary Fire"] = { [wire_vr_numpad_vrkeygroup] = "6" },
			["Secondary Fire"] = { [wire_vr_numpad_vrkeygroup] = "7" },
			["Reload"] = { [wire_vr_numpad_vrkeygroup] = "8" },
			["Spawn Menu"] = { [wire_vr_numpad_vrkeygroup] = "9" },
			["Sprint"] = { [wire_vr_numpad_vrkeygroup] = "10" },
			["Use"] = { [wire_vr_numpad_vrkeygroup] = "11" },
			["Walk"] = { [wire_vr_numpad_vrkeygroup] = "12" }
		}
	})
	panel:CheckBox("#WireVrNumpadTool_toggle","wire_vr_numpad_toggle")
	panel:NumSlider("#WireVrNumpadTool_value_on","wire_vr_numpad_value_on",-10,10,0)
	panel:NumSlider("#WireVrNumpadTool_value_off","wire_vr_numpad_value_off",-10,10,0)
end