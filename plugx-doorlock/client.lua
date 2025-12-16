CreateThread(function()
    while true do
        local hour = GetClockHours()
        TriggerServerEvent('plugx-doorlock:updateTime', hour)
        Wait(3000) -- 10 seconds
    end
end)