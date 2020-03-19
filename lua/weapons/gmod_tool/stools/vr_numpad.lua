TOOL.Category = "Virtual Reality"
TOOL.Name = "Virtual Reality Numpad"
TOOL.Command = nil
TOOL.ConfigName = ""
TOOL.Tab = "Wire"

TOOL.ClientConVar["model"] = "models/beer/wiremod/numpad.mdl"
TOOL.ClientConVar["value_on"] = 1
TOOL.ClientConVar["value_on"] = 1
TOOL.ClientConVar["value_off"] = 0
TOOL.ClientConVar["toggle"] = 1

local vr_numpad_model = CreateClientConVar("vr_numpad_model", 0, true, true, "The model to show when spawned")
local vr_numpad_valueOn = CreateClientConVar("vr_numpad_value_on", 0, true, true, "The value to send out when activated")
local vr_numpad_valueOff = CreateClientConVar("vr_numpad_value_off", 0, true, true, "The value to send out when not activated")
 
if CLIENT then
    language.Add('Tool.vr_numpad.name', 'VR Input')
    language.Add('Tool.vr_numpad.desc', 'Creates a numpad input for VR')
    language.Add('Tool.vr_numpad.0', 'Primary: Place the VR input')

    function TOOL.BuildCPanel(panel)

        local Presets = vgui.Create("ControlPresets")
            Presets:AddConVar("")

    end
end

if SERVER then

    --Leaving theese as false until I assign actual functions to them
    function TOOL:LeftClick(trace)
        return false 
    end
    
    function TOOL:RightClick(trace)
        return false
    end
    

end