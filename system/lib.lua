local _, NeP = ...

NeP.Library = {}

NeP.Globals.Library = NeP.Library

local libs = {}

function NeP.Library:Add(name, lib)
	if not libs[name] then
		libs[name] = lib
	end
end

function NeP.Library:Fetch(name)
	return libs[name]
end

function NeP.Library:Parse(Strg)
	if Strg:sub(-1) == ')' then
		return loadstring('return NeP.library.libs.'..Strg)()
	end
	local a, b = strsplit(".", Strg, 2)
	return libs[a][b]()
end