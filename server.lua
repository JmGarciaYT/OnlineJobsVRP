local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function()
    while true do

		local polis = vRP.getUsersByPermission({"police.base"})
		local taxis = vRP.getUsersByPermission({"taxi.service"})
		local mechs = vRP.getUsersByPermission({"repair.service"})

		TriggerClientEvent("trabajos:update", -1, #polis, #taxis, #mechs)

		Citizen.Wait(X)
    end
end)