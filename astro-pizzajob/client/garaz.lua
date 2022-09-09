RegisterNetEvent('astro:context2')
AddEventHandler('astro:context2', function()
    lib.registerContext({
        id = 'astro:context2',
        title = 'Garaz frakcyjny',
        options = {
            {
                title = 'Wyciagnij pojazd',
                description = 'Wyciagnij pojazd z garazu',
                arrow = true,
                event = 'astro:menupojazdow2'
            },
            {
                title = 'Schowaj pojazd',
                description = 'Schowaj pojazd do garazu',
                arrow = false,
                event = 'astro:schowajpojazd2'
            },
        },
    })
    lib.showContext('astro:context2')
end)

RegisterNetEvent('astro:menupojazdow2')
AddEventHandler('astro:menupojazdow2', function()
    lib.registerContext({
        id = 'astro:menupojazdow2',
        title = 'Garaz frakcyjny',
        options = {
            {
                title = 'Wyciagnij pojazd',
                description = 'Wyciagnij pojazd frakcyjny',
                arrow = false,
                event = 'astro:pojazd2'
            },
        },
    })
    lib.showContext('astro:menupojazdow2')
end)

RegisterNetEvent('astro:schowajpojazd2', function()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
    ESX.ShowNotification('Wejdz do pojazdu nastepnie odczekaj 10 sekund!')
    Citizen.Wait(10000)
    ESX.ShowNotification('Usunieto pojazd')
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    SetEntityAsMissionEntity(vehicle, true, true)
    DeleteVehicle(vehicle)
            end
end)
-- -494.8499, -255.4472, 35.6140, 291.7604
RegisterNetEvent('astro:pojazd2', function()
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizza' then
ESX.ShowNotification('Zrespiono pojazd')
ESX.Game.SpawnVehicle('faggio', vector3(-1332.6946, -1091.9341, 6.9776), 214.4182, function(vehicle) end)
            end
end)

CreateThread(function()
    exports.qtarget:AddBoxZone("xdd3d3", vector3(-1342.2, -1090.65, 6.94), 2, 2, {
        name="xdd3d3",
        heading=290,
        debugPoly=false,
        minZ=5.94,
        maxZ=9.94
        }, {
            options = {
                {
                    event = "astro:context2",
                    icon = "fas fa-car",
                    label = "Garaz frakcyjny",
                    job = "pizza"
                },
            },
            distance = 3.0
    })
end)
