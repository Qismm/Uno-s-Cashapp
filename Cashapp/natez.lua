ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local function InitializePlayerData(id)
	local source = id
	local xPlayer = nil 
	while xPlayer == nil do 
		xPlayer = ESX.GetPlayerFromId(source)
		Citizen.Wait(3000)
	end
end

RegisterServerEvent('PayMe2500:Cashapp')
AddEventHandler('PayMe2500:Cashapp', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeMoney('2500')
	Citizen.Wait(1500)
	TriggerClientEvent("uno:toggleNUI", _source, true)
	Citizen.Wait(3000)
	DropPlayer(_source, 'YOU WERE KICKED FOR GETTING SCAMMED FOR $2.5K FROM A FAT BITCH')
end)
