local _, gbl = ...
gbl.CombatHelper = {}

local config = {
	key = 'CombatHelper',
	title = "Combat Helper",
	subtitle = 'Settings',
	width = 250,
	height = 200,
	config = {
		{ type = 'spacer' },{ type = 'rule' },
		{ type = 'header', text = '|cfffd1c15Advanced|r Only:', size = 25, align = 'Center' },
			-- Nothing here yet
	}
}

local GUI = gbl.Interface:BuildGUI(config)
gbl.Interface:Add('Combat Helper', function() GUI.parent:Show() end)
GUI.parent:Hide()
