local NX = exports['NX']:useServer()

RegisterNetEvent('charAccept')
AddEventHandler('charAccept', function(Identity)
    local nxPlayer = NX.Players.Get(1)
    local Firstame = Identity.FirstName
    local Lastname = Identity.LastName
    local dateOfBirth = Identity.DOB
    local Sex = Identity.Sex
    local Taille = Identity.Taille
    nxPlayer.setCharInfoKey('firstname', Firstame)
    nxPlayer.setCharInfoKey('lastname', Lastname)
    nxPlayer.setCharInfoKey('dob', dateOfBirth)
    nxPlayer.setCharInfoKey('sex', Sex)
    nxPlayer.setCharInfoKey('height', Taille)
end)