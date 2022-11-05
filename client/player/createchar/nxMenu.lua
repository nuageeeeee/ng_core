local NX = exports['NX']:useClient()
local uidP = NX.Player.GetValue('uid')

local menu = NX.Menu.Create({
    options = {
        title = 'Custom',
        banner = 'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000',
        width = 400
    },
    items = {{
        type = 'SEPARATOR',
        label = 'UID : ' .. uidP,
        id = 'separator-1'
    }}
})

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(1, 167) then
            menu.ShowMenu()
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(1, 177) then
            menu.HideMenu()
        end
    end
end)

RegisterNetEvent('menue')
AddEventHandler('menue', function()
    menu.ShowMenu()
end)
