Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(100)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            policias = polis,
            taxistas = taxis,
            mecanicos = mechs,
        })
    end
end)

RegisterNetEvent("trabajos:update")
AddEventHandler("trabajos:update", function(rpolis, rtaxis, rmechs)
    polis = rpolis
    taxis = rtaxis
    mechs = rmechs
end)