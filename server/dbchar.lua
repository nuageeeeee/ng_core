local NX = exports['NX']:useServer()

RegisterNetEvent('ng_core:characcept')
AddEventHandler('ng_core:characcept', function(Identity)
    local nxPlayer = NX.Players.Get(source)
    local Firstname = Identity.firstName
    local Lastname = Identity.lastName
    local dateOfBirth = Identity.dateOfBirth
    local Sex = Identity.sex
    local Taille = Identity.taille
    
    print(Firstname)
    nxPlayer.SetCharInfoKey(['firstname', Firstname], ['lastname', Lastname], ['dob', dateOfBirth], ['sex', Sex], ['height', Taille])

end)