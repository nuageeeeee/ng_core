local NX = exports['NX']:useClient()

function onChange(obj)
    print('Hello World')
end

local menu = NX.Menu.Create({
    options = {
        title = 'Custom',
        banner = 'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000',
        width = 400
    },
    items = {{
        type = 'LIST',
        label = 'Chckbox',
        id = 'list-1',
        onChange = onChange,

        choices = {{
            id = '1',
            label = 'Un'
        }, {
            id = '2',
            label = 'Deux'
        }, {
            id = '3',
            label = 'Trois'
        }}
    }}
})

