local NX = exports['NX']:useClient()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(1, 166) then
            inv()
        end
    end
end)

function inv()
    local uidP = NX.Player.GetValue('uid')
    local id = GetPlayerServerId(source)
    -- local Nom = KeyboardInput("Nom:", "Mettez votre nom", 20)
    local inv = RageUI.CreateMenu("Portefueille", "UID: " .. uidP .. " id: " .. id)
    RageUI.Visible(inv, not RageUI.Visible(inv))
    while inv do
        Citizen.Wait(0)
        RageUI.IsVisible(inv, true, true, true, function()
            RageUI.Button("Inventaire", "Ouvrez votre inventaire", {
                RightLabel = "->"
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    inventaire()
                end
            end)
        end, function()
        end)

        if not RageUI.Visible(inv) then
            inv = RMenu:DeleteType("Titre", true)
        end
    end
end

function inventaire()
    local data = json.encode(NX.Player.GetValue('inventory'))

    local uidP = NX.Player.GetValue('uid')
    local id = GetPlayerServerId(source)
    local inventaire = RageUI.CreateMenu("inventaire", "UID: " .. uidP .. " id: " .. id)
    RageUI.Visible(inventaire, not RageUI.Visible(inventaire))
    while inventaire do
        Citizen.Wait(0)
        RageUI.IsVisible(inventaire, true, true, true, function()
            RageUI.Button(data, "Ouvrez votre inventaire", {
                RightLabel = "->"
            }, true, function(Hovered, Active, Selected)
                if Selected then
                end
            end)
        end, function()
        end)
    end
end
