local NX = exports['NX']:useClient()

RegisterNetEvent('car')
AddEventHandler('car', function(text)
    NX.Vehicles.Create(text, function()
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed)
        SetVehicleNumberPlateText(vehicle, "nuage")
    end)
end)

RegisterNetEvent('loading')
AddEventHandler('loading', function(text)
    NX.LoadingBar.Create({
        duration = 1,
        label = 'Chargement',
        style = {
            container = {
                backgroundColor = 'transparent'
            },
            bar = {
                backgroundColor = 'white'
            },
            label = {
                color = 'black'
            }
        }
    })
end)

RegisterNetEvent('dv')
AddEventHandler('dv', function()
    NX.Vehicles.Delete(function()
    end)
end)

RegisterNetEvent('repair')
AddEventHandler('repair', function()
    NX.Vehicles.Repair(vehicle)
end)

-- Revive event
local reviveWait = 5

function revivePed(ped)
    local coords = GetEntityCoords(PlayerPedId())
    isDead = false
    timerCount = reviveWait
    NetworkResurrectLocalPlayer(coords, true, true, false)
    SetPlayerInvincible(ped, false)
    ClearPedBloodDamage(ped)
end

RegisterNetEvent('revive')
AddEventHandler('revive', function()
    revivePed(ped)
end)

-- Job and Job_Grade

function job()
    NX.Player.GetValue('job')
end

-- Loop save
CreateThread(function()
    while true do
        if NX.Player.HasLoaded() then
            Wait(60000)
            TriggerServerEvent('saveAll')
            NX.Misc.CreateNotification({
                type = 'SUCCES',
                duration = 5,
                body = {
                    content = 'Sauvergade des joueurs'
                }
            })
        end
    end
end)