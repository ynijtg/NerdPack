local _, gbl = ...

gbl.Locale = {}

local locale = GetLocale()
function gbl.Locale:TA(gui, index)
  if gbl.Locale[locale] and gbl.Locale[locale][gui] then
    if gbl.Locale[locale][gui][index] then
      return gbl.Locale[locale][gui][index]
    end
  end
  return gbl.Locale.enUS[gui][index] or 'INVALID STRING'
end

--[[
		"frFR": French (France)
		"deDE": German (Germany)
		"enGB : English (Great Brittan) if returned, can substitute 'enUS' for consistancy
		"enUS": English (America)
		"itIT": Italian (Italy)
		"koKR": Korean (Korea) RTL - right-to-left
		"zhCN": Chinese (China) (simplified) implemented LTR left-to-right in WoW
		"zhTW": Chinese (Taiwan) (traditional) implemented LTR left-to-right in WoW
		"ruRU": Russian (Russia)
		"esES": Spanish (Spain)
		"esMX": Spanish (Mexico)
		"ptBR": Portuguese (Brazil)
	]]
