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
    nxPlayer.SetCharInfoKey('firstname', Firstname)
    nxPlayer.SetCharInfoKey('lastname', Lastname)
    nxPlayer.SetCharInfoKey('dob', dateOfBirth)
    nxPlayer.SetCharInfoKey('sex', Sex)
    nxPlayer.SetCharInfoKey('height', Taille)
end)