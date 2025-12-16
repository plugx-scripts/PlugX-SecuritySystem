local doorsLocked = false

RegisterNetEvent('plugx-nighter:updateTime', function(hour)
    -- Night time check
    local isNight = false

    if Config.LockHour > Config.UnlockHour then
        -- Example: 22 → 6 (overnight)
        isNight = (hour >= Config.LockHour or hour < Config.UnlockHour)
    else
        isNight = (hour >= Config.LockHour and hour < Config.UnlockHour)
    end

    -- Lock doors at night
    if isNight and not doorsLocked then
        doorsLocked = true

        for _, doorId in ipairs(Config.Doors) do
            exports.ox_doorlock:setDoorState(doorId, 1)
        end

        if Config.Notify then
            TriggerClientEvent('ox_lib:notify', -1, {
                title = 'Security System\'s',
                description = 'Doors have been locked for the night',
                type = 'inform'
            })
        end
    end

    -- Unlock doors in the morning
    if not isNight and doorsLocked then
        doorsLocked = false

        for _, doorId in ipairs(Config.Doors) do
            exports.ox_doorlock:setDoorState(doorId, 0)
        end

        if Config.Notify then
            TriggerClientEvent('ox_lib:notify', -1, {
                title = 'Security System\'s',
                description = 'Doors have been unlocked for the day',
                type = 'success'
            })
        end
    end
end)