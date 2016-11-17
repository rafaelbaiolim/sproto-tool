# sproto-tool
可以生成sproto协议的bin文件,即sproto.spb

# 在windows平台下
  1.使用lua5.3直接运行 lua.exe sproto_gen.lua就能生成C2S.spb
  2.安装lua的IDE ZeroBrane Studio选择lua5.3的解释器,然后点运行就能生成C2S.spb

# 在linux平台或者mac平台上需要先编译好lpeg库,
  如果在skynet下使用可以直接把生成脚本放在skynet目录下就可以使用了