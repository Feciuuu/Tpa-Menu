RegisterCommand('tpa', function(source, args, rawCommand)
    local _source = source
    local target = tonumber(args[1])

    if target and (target >= 1 and target <= 4) then
        TriggerClientEvent('tpa:teleport', _source, target)
    elseif not target and #args == 0 then
        TriggerClientEvent('esx:showNotification', _source, '~b~1~w~ GZ SENDY ~b~2~w~ GZ DOKI ~b~3~w~ GZ Miasto ~b~4~w~ GZ PETSHOP')
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Podano Błędne Opcje TPA')
    end
end, false)
