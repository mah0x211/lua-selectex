rockspec_format = '3.0'
package = "selectex"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/mah0x211/lua-selectex.git"
}
description = {
   summary = "lua-selectex is a helper module for handling variadic arguments.",
   homepage = "https://github.com/mah0x211/lua-selectex",
   license = "MIT",
   maintainer = "Masatoshi Fukunaga"
}
build = {
   type = "builtin",
   modules = {
        selectex = {
            sources = { 'src/selectex.c' },
        },
   }
}
