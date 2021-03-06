if exists("g:loaded_exampleplugin")
    finish
endif
let g:loaded_exampleplugin = 1

let s:lua_rocks_deps_loc =  expand("<sfile>:h:r") . "/../lua/example-plugin/deps"
exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

command! -nargs=0 HelloWorld lua require("example-plugin").hello_world()
