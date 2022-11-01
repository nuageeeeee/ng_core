function buttonNom()
    RageUI.Button("Nom", "Non de votre personnage", {
        RightLabel = FirstName
    }, true, function(Hovered, Active, Selected)
        if Selected then
            FirstName = KeyboardInput("Nom:", "Mettez votre nom", 20)
        end
    end)
end