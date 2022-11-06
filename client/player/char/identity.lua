local NX = exports['NX']:useClient()
local identity = {
    firstName = nil,
    lastName = nil,
    dateOfBirth = nil,
    cut = nil,
    sex = nil,
    identityCreated = false
}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(1, 56) then
            menu()
        end
    end
end)

function menu()
    -- local Nom = KeyboardInput("Nom:", "Mettez votre nom", 20)
    local uidP = NX.Player.GetValue('uid')
    local charInfo = RageUI.CreateMenu("Creation personnage", "uid : " .. uidP)
    RageUI.Visible(charInfo, not RageUI.Visible(charInfo))
    while charInfo do
        Citizen.Wait(0)
        RageUI.IsVisible(charInfo, true, true, true, function()
            RageUI.Button("Nom", "Non de votre personnage", {
                RightLabel = identity.firstName
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.firstName = KeyboardInput("Nom:", "", 20)
                end
            end)
            RageUI.Button("Prenom", "Prenom de votre personnage", {
                RightLabel = identity.lastName
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.lastName = KeyboardInput("Prenom:", "", 20)
                end
            end)
            RageUI.Button("Age", "Date de naissance de votre personnage", {
                RightLabel = identity.dateOfBirth
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.dateOfBirth = KeyboardInput("xx/xx/xxxx:", "", 20)
                end
            end)
            RageUI.Button("Sexe", "Sexe de votre personnage", {
                RightLabel = identity.sex
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.sex = KeyboardInput("male ou female", "", 20)
                end
            end)
            RageUI.Button("Taille", "Taille de votre personnage", {
                RightLabel = identity.taille
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.taille = KeyboardInput("Taille:", "", 20)
                end
            end)
            RageUI.Button("test", "test", {
                RightLabel = identity.taille
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    RageUI.CloseAll()
                    charCreator()
                end
            end)
            if identity.firstName == nil or identity.lastName == nil or identity.dateOfBirth == nil or identity.sex ==
                nil or identity.taille == nil then
                RageUI.Button("Valider", description, {
                    RightBadge = RageUI.BadgeStyle.Lock
                }, true, function(Hovered, Active, Selected)
                end)
            else
                RageUI.Button("Valider", description, {
                    Color = {
                        BackgroundColor = {0, 120, 0, 25}
                    }
                }, true, function(Hovered, Active, Selected)
                    if Selected then
                        TriggerServerEvent('ng_core:characcept', identity)
                        identity.identityCreated = true
                        RageUI.CloseAll()
                        charCreator()
                    end
                end)
            end
        end, function()
        end)

        if not RageUI.Visible(charInfo) then
            charInfo = RMenu:DeleteType("Titre", true)
        end
    end
end

function charCreator()
    local uidP = NX.Player.GetValue('uid')
    local IndexList = 1
    local charcrea = RageUI.CreateMenu("Creation personnage", "uid : " .. uidP .. " Prenom :" .. identity.firstName)
    RageUI.Visible(charcrea, not RageUI.Visible(charcrea))
    while charcrea do
        Citizen.Wait(0)
        RageUI.IsVisible(charcrea, true, true, true, function()
            RageUI.List("Tete : ", {"Tete1", "Tete2"}, IndexList, nil, {}, true,
                function(Hovered, Active, Selected, Index)
                end, function(Index, Items)
                    IndexList = index
                    print(index)
                end)
        end, function()
        end)

        if not RageUI.Visible(charcrea) then
            charcrea = RMenu:DeleteType("Titre", true)
        end
    end
end
