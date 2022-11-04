local NX = exports['NX']:useClient()

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)

    -- TextEntry		-->	The Text above the typing field in the black square
    -- ExampleText		-->	An Example Text, what it should say in the typing field
    -- MaxStringLenght	-->	Maximum String Lenght

    AddTextEntry('FMMC_KEY_TIP1', TextEntry)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return result
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end
function onClick()
    KeyboardInput("Nom:", "", 20)
    end
    
local identity = 'test'

function menu()
    local uidP = NX.Player.GetValue('uid')
    local name = onClick
    local menu = NX.Menu.Create({
        options = {
            title = 'Custom',
            banner = 'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000',
            width = 400
        },
        items = {{
            type = 'SEPARATOR',
            label = "uid : " .. uidP,
            id = 'separator-1'
        }, {
            type = 'BUTTON',
            label = 'Nom : ' .. name,
            id = 'btn-1',
            onClick = onClick,
        }}
    })

    menu.ShowMenu()
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(1, 167) then
            menu()
        end
    end
end)
