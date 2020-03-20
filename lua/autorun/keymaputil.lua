if CLIENT then
    hook.Add("PopulateToolMenu","vrnumpad_hook_populatetoolmenu",function()
        spawnmenu.AddToolMenuOption("Utilities", "Virtual Reality", "vr_numpad", "VR Numpad Binds", "", "", function(panel)
            panel:SetName("Virtual Reality Numpad Mappings")

            local dlabel = vgui.Create("DLabel", Panel)
            panel:AddItem(dlabel)
            dlabel:SetWrap(true)
            dlabel:SetAutoStretchVertical(true)
            dlabel:SetText( "You may need to set the numpad options before you start VR" )
            dlabel:SetColor(Color(0,0,0))

        end)
    end)
end