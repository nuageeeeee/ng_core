fx_version "cerulean"
game 'gta5'

name 'ng_core'
author "nuage"
version '1.0.0'

client_scripts {
     "client/client.lua",
     "client/nui.lua",
     "client/player/wanted.lua",
}
server_scripts {
     "server/commands.lua",
     "server/items/medic.lua",
     "server/server.lua",
}

ui_page 'html/index.html'
files {
    'html/index.html',
    'html/main.js',
    'html/index.css',
    'html/reset.css'
}