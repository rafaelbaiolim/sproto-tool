local root = "./"
package.path = root.."lualib/?.lua;"..root.."service/?.lua;"..root.."tools/?.lua;"
package.cpath = root.."win-luaclib/?.so;"


local sproto = require "sproto"
local core   = require "sproto.core"
local loader = require "sprotoloader"
local print_r = require "print_r"

loader.save_from_file("spb/C2S.spb", 1)
local sp = loader.load(1)

--core.dumpproto(sp.__cobj)

local ab = {
  name = "alice",
  id = 1,
  email = "abcde@qq.com",
  skills = {},
}

local code = sp:encode("Person", ab)
local addr = sp:decode("Person", code)
print_r(addr)
