fx_version "cerulean"
game 'gta5'

name 'ng_core'
author "nuage"
version '1.0.0'

client_scripts {"client/client.lua", "client/nui.lua", "client/player/wanted.lua"}

client_scripts {"client/player/char/identity.lua", "client/player/char/character.lua", "client/player/char/functions.lua"}

server_scripts {"server/commands.lua", "server/server.lua", "server/dbchar.lua"}
server_scripts {"server/items/medic.lua"}

client_scripts {"src/RMenu.lua", "src/menu/RageUI.lua", "src/menu/Menu.lua", "src/menu/MenuController.lua",
                "src/components/*.lua", "src/menu/elements/*.lua", "src/menu/items/*.lua", "src/menu/panels/*.lua",
                "src/menu/panels/*.lua", "src/menu/windows/*.lua"}
