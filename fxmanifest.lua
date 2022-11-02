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

client_scripts {
     "client/player/createchar/createcharacter.lua",
     "client/player/createchar/charmain.lua",
     "client/player/createchar/ragehelp.lua",
     "client/player/createchar/charcreator.lua",
}

server_scripts {
     "server/commands.lua",
     "server/items/medic.lua",
     "server/server.lua",
     "server/dbchar.lua",
}

ui_page 'html/index.html'
files {
    'html/index.html',
    'html/main.js',
    'html/index.css',
    'html/reset.css'
}

client_scripts {

     "src/RMenu.lua",
     "src/menu/RageUI.lua",
     "src/menu/Menu.lua",
     "src/menu/MenuController.lua",
   
     "src/components/*.lua",
   
     "src/menu/elements/*.lua",
   
     "src/menu/items/*.lua",
   
     "src/menu/panels/*.lua",
   
     "src/menu/panels/*.lua",
     "src/menu/windows/*.lua",
   
 }