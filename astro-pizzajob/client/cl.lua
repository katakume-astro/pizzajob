RegisterNetEvent('pizza:schowek', function()
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
    exports.ox_inventory:openInventory('stash', 'society_pizza')
end
end)


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)


RegisterNetEvent('astro:contextpizza')
AddEventHandler('astro:contextpizza', function()
    lib.registerContext({
        id = 'contextpizza',
        title = 'Frakcja',
        options = {
            {
                title = 'Otworz schowek',
                description = 'Schowek frakcyjny',
                arrow = true,
                event = 'pizza:schowek'
            },
        },
    })
    lib.showContext('contextpizza')
end)


CreateThread(function()
    exports.qtarget:RemoveZone('pizza')
    exports.qtarget:AddBoxZone("pizza", vector3(-1352.02, -1054.38, 3.87), 3, 3, {
        name="pizza",
        heading=0,
        debugPoly=false,
        minZ=2.87,
        maxZ=6.87
        }, {
            options = {
                {
                    event = "astro:contextpizza",
                    icon = "fas fa-box",
                    label = "Schowek",
                    job = "pizza"
                },
            },
            distance = 3.0
    })
end)

local blips = {
     {title="Diabolo pizzeria", colour=0, id=436, x = -1348.0773, y = -1058.1141, z = 3.8692}
  }
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


--[[Robienie pizzy]]--
--TriggerClientEvent('dopizza')

RegisterNetEvent('astro:contextpizza2')
AddEventHandler('astro:contextpizza2', function()
    lib.registerContext({
        id = 'contextpizza2',
        title = 'Lodowka',
        options = {
            {
                title = 'Wyjmij ser',
                description = 'Wyjmij ser z lodowki',
                arrow = false,
                event = 'ser2'
            },
            {
                title = 'Wyjmij sos',
                description = 'Wyjmij sos z lodowki',
                arrow = false,
                event = 'sos2'
            },
            {
                title = 'Wyjmij ciasto',
                description = 'Wyjmij ciasto z lodowki',
                arrow = false,
                event = 'ciasto2'
            },
        },
    })
    lib.showContext('contextpizza2')
end)


CreateThread(function()
    exports.qtarget:RemoveZone('tworzeniepizzy')
    exports.qtarget:AddBoxZone("tworzeniepizzy", vector3(-1341.5, -1059.71, 7.39), 2, 2, {
        name="tworzeniepizzy",
        heading=0,
        debugPoly=false,
        minZ=6.39,
        maxZ=10.39
        }, {
            options = {
                {
                    event = "astro:contextpizza2",
                    icon = "fas fa-clone",
                    label = "Otworz lodowke",
                    job = "pizza"
                },
            },
            distance = 3.0
    })
end)



function chuj()
    TriggerServerEvent('dopizza')
end

    RegisterNetEvent('ser2', function()
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
            TriggerServerEvent('ser')
                end
    end)

        RegisterNetEvent('ciasto2', function()
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
                TriggerServerEvent('ciasto')
                    end
        end)

           RegisterNetEvent('sos2', function()
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
                TriggerServerEvent('sos')
                    end
             end)

             RegisterNetEvent('cipa', function()
	        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
                FreezeEntityPosition(PlayerPedId(), true) 
                lib.progressBar({
                    duration = 10000,
                    label = 'Tworzysz pizze',
                    useWhileDead = false,
                    canCancel = false})
                    FreezeEntityPosition(PlayerPedId(), false)
                    chuj()
			end
                 end)

             --[[OSTATNIA RZECZ CZYLI SKLADANIE PIZZUNI TEGO TYPU]]--

             CreateThread(function()
                exports.qtarget:RemoveZone('tworzeniepizzy2')
                exports.qtarget:AddBoxZone("tworzeniepizzy2", vector3(-1336.74, -1058.94, 7.42), 1, 1, {
                    name="tworzeniepizzy2",
                    heading=0,
                    debugPoly=false,
                    minZ=6.42,
                    maxZ=10.42
                    }, {
                        options = {
                            {
                                event = "cipa",
                                icon = "fas fa-pizza-slice",
                                label = "Stworz pizze",
                                job = "pizza"
                            },
                        },
                        distance = 3.0
                })
            end)








            RegisterNetEvent('selldziwkooo', function()
                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
                    FreezeEntityPosition(PlayerPedId(), true) 
                    lib.progressBar({
                        duration = 10000,
                        label = 'Rozmawiasz  z klientem',
                        useWhileDead = false,
                        canCancel = false})
                        FreezeEntityPosition(PlayerPedId(), false)
                        TriggerServerEvent('takcheaterzetotriggernakaseserio')
                        end
                 end)




-- takcheaterzetotriggernakaseserio

            CreateThread(function()
                exports.qtarget:RemoveZone('sellpizz')
                exports.qtarget:AddBoxZone("sellpizz", vector3(-1345.97, -1065.81, 7.39), 1, 1, {
                    name="sellpizz",
                    heading=0,
                    debugPoly=false,
                    minZ=6.39,
                    maxZ=10.39
                    }, {
                        options = {
                            {
                                event = "sellpizdauuw",
                                icon = "fas fa-hand",
                                label = "Rozmowa",
                                item = 'pizza',
                                job = "pizza"
                            },
                        },
                        distance = 3.0
                })
            end)
            
            RegisterNetEvent('sellpizdauuw')
            AddEventHandler('sellpizdauuw', function()
                lib.registerContext({
                    id = 'sellpizdauuw',
                    title = 'Sprzedaz npc',
                    options = {
                        {
                            title = 'Sprzedaj pizze',
                            description = 'Sprzedaj pizze npc',
                            arrow = true,
                            event = 'selldziwkooo'
                        },
                    },
                })
                lib.showContext('sellpizdauuw')
            end)
