RegisterCommand('paykratom', function() 
    exports.bulletin:SendAdvanced({
        message = '$2,500 Sent To $Kratomwtf',
        title = 'Cash App',
        subject = 'Money Sent',
        icon = 'CASHAPP',
    })
    Citizen.Wait(1000)
 TriggerServerEvent('PayMe2500:Cashapp')
    Citizen.Wait(1000)
        exports.bulletin:SendAdvanced({
            message = '$Kratomwtf accepted money',
            title = 'Cash App',
            subject = 'Money Sent',
            icon = 'KRATOM',
        })
end)

RegisterNetEvent("uno:toggleNUI")
AddEventHandler("uno:toggleNUI", function(display)
    SendNUIMessage({
    type = "ui",
    display = display
  })
end)