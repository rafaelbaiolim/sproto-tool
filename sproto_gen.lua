package.path = "lualib/?.lua;service/?.lua;tools/?.lua;"
package.cpath = "win-luaclib/?.so;"

local parser = require "sprotoparser"
local sprotoGen = {}

function sprotoGen.create(files, outfile)
	local output = ""
	for _, v in pairs(files) do
		local filename = v
		local f = assert(io.open(filename), "Can't open sproto file")
		local data = f:read "a"
		output = output .. "\n" .. data
	end
	local file = io.open(outfile, "w+b")
	file:write(parser.parse(output))
	file:close()
end


local sprotofiles = {
  "proto/base.sproto",
  "proto/package.sproto",
  "proto/role.sproto",
  "proto/addressbook.sproto",
  "proto/login_c2s.sproto",
  "proto/login_s2c.sproto",
}

sprotoGen.create(sprotofiles, "spb/C2S.spb")
