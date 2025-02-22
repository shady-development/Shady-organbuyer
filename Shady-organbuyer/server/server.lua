local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('Shady-organbuyer:sellitem', function(item, price, itemAmount, payMethod)
    local PlayerId = source
    local Player = QBCore.Functions.GetPlayer(PlayerId)
    if not item then return end
    if Player.Functions.RemoveItem(item, itemAmount, false) then
        local pay = itemAmount * price
        TriggerClientEvent('inventory:client:ItemBox', PlayerId, QBCore.Shared.Items[item], "remove", itemAmount)
        Player.Functions.AddMoney(payMethod, pay, 'Items Sold')
    end
end)

Citizen.CreateThread(function()
    local resourceName = "Shady-organbuyer Started } Discord : https://discord.gg/unYrnEurUD made by Shady-developments ("..GetCurrentResourceName()..")"
    print("\n^4----------------------------------------------------------------------------------^7")
    print(resourceName)
    print("^4----------------------------------------------------------------------------------^7")
end)