local coords = {
    [1] = {x = 2639.7007, y = 3267.0491, z = 55.2225}, -- GZ SENDY
    [2] = {x = 1003.2007, y = -2519.4302, z = 28.3034}, -- GZ DOKI
    [3] = {x = -538.8881, y = -214.5337, z = 37.6498}, -- GZ MIASTO
    [4] = {x = 587.9750, y = 2736.1855, z = 42.0602} -- GZ PETSHOP
}

RegisterNetEvent('tpa:teleport')
AddEventHandler('tpa:teleport', function(target)
    local playerPed = PlayerPedId()
    local coord = coords[target]

    if coord then
        SetEntityCoords(playerPed, coord.x, coord.y, coord.z)
    else
        TriggerEvent('chat:addMessage', { args = { '^1Błąd', 'Nieprawidłowa lokalizacja' } })
    end
end)
