--print(('esx_policejob: %s attempted to confiscate!'):format(sourceXPlayer.identifier))
--local sourceXPlayer = ESX.GetPlayerFromId(source)
RegisterNetEvent('dopizza')
AddEventHandler('dopizza', function()
    xPlayer = ESX.GetPlayerFromId(source)
    local sourceXPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('ser').count > 1 and xPlayer.getInventoryItem('ciasto').count > 0 and xPlayer.getInventoryItem('sos').count > 0 then
        xPlayer.removeInventoryItem("ser", 3)
        xPlayer.removeInventoryItem("ciasto", 1)
        xPlayer.removeInventoryItem("sos", 1)
        xPlayer.addInventoryItem("pizza", 1)
        print('test')
    else
        sourceXPlayer.showNotification('Nie masz wystarczajaco przedmiotow')
end
end)


RegisterNetEvent('ser')
AddEventHandler('ser', function()
    local ox_inventory = exports.ox_inventory
    ox_inventory:AddItem(source, 'ser', 1, nil, nil, function(success, reason)
        if success then
            print(json.encode(reason, {indent=true}))
            --[[
                {
                    "metadata": [],
                    "label": "Bread",
                    "slot": 1,
                    "stack": true,
                    "close": true,
                    "name": "bread",
                    "count": 1,
                    "weight": 150
                }
            ]]
        else
            print(success)
            -- nil
    
            print(reason)
            -- for example if all slots are taken it will give us "inventory_full"
        end
    end)
end)

RegisterNetEvent('ciasto')
AddEventHandler('ciasto', function()
    local ox_inventory = exports.ox_inventory
    ox_inventory:AddItem(source, 'ciasto', 1, nil, nil, function(success, reason)
        if success then
            print(json.encode(reason, {indent=true}))
            --[[
                {
                    "metadata": [],
                    "label": "Bread",
                    "slot": 1,
                    "stack": true,
                    "close": true,
                    "name": "bread",
                    "count": 1,
                    "weight": 150
                }
            ]]
        else
            print(success)
            -- nil
    
            print(reason)
            -- for example if all slots are taken it will give us "inventory_full"
        end
    end)
end)

RegisterNetEvent('sos')
AddEventHandler('sos', function()
    local ox_inventory = exports.ox_inventory
    ox_inventory:AddItem(source, 'sos', 1, nil, nil, function(success, reason)
        if success then
            print(json.encode(reason, {indent=true}))
            --[[
                {
                    "metadata": [],
                    "label": "Bread",
                    "slot": 1,
                    "stack": true,
                    "close": true,
                    "name": "bread",
                    "count": 1,
                    "weight": 150
                }
            ]]
        else
            print(success)
            -- nil
    
            print(reason)
            -- for example if all slots are taken it will give us "inventory_full"
        end
    end)
end)

RegisterNetEvent('takcheaterzetotriggernakaseserio')
AddEventHandler('takcheaterzetotriggernakaseserio', function()
    xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('pizza').count > 0 then
    xPlayer.removeInventoryItem("pizza", 1)
    kasa = math.random(97, 300)
    xPlayer.addMoney(kasa)
    else
        sourceXPlayer.showNotification('Nie masz zrobionej pizzy!')
    end

end)