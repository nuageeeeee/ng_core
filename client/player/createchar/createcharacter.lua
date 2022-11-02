local NX = exports['NX']:useClient()
local identity = {
    firstName = nil,
    lastName = nil,
    dateOfBirth = nil,
    cut = nil,
    sex = nil,
    identityCreated = false
}
-- Keyboard input function
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

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsControlJustPressed(1, 166) then
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
                RightLabel = identity.FirstName
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.FirstName = KeyboardInput("Nom:", "", 20)
                end
            end)
            RageUI.Button("Prenom", "Prenom de votre personnage", {
                RightLabel = identity.LastName
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.LastName = KeyboardInput("Prenom:", "", 20)
                end
            end)
            RageUI.Button("Age", "Date de naissance de votre personnage", {
                RightLabel = identity.dateOfBirth
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.dateOfBirth = KeyboardInput("Age:", "", 20)
                end
            end)
            RageUI.Button("Sexe", "Sexe de votre personnage", {
                RightLabel = identity.Sex
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.Sex = KeyboardInput("Homme ou Femme", "", 20)
                end
            end)
            RageUI.Button("Taille", "Taille de votre personnage", {
                RightLabel = identity.Taille
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    identity.Taille = KeyboardInput("Taille:", "", 20)
                end
            end)
            if identity.FirstName == nil or identity.LastName == nil or identity.dateOfBirth == nil or identity.Sex ==
                nil or identity.Taille == nil then
                RageUI.Button("Valider", description, {
                    RightLabel = RageUI.BadgeStyle.Lock
                }, true, function(Hovered, Active, Selected)
                end)
            else
                RageUI.Button("Valider", description, {
                    Color = {
                        BackgroundColor = {0, 120, 0, 25}
                    }
                }, true, function(Hovered, Active, Selected)
                    if Selected then
                        TriggerServerEvent('charAccept', identity)
                        print(identity.FirstName)
                        identity.identityCreated = true
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
