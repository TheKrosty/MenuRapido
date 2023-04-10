ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) 
			ESX = obj 
		end)
		Citizen.Wait(0)
	end
end)

function AbrirMenus()
    local elements = {

    {label = '👜 | Mochilas', value = '1'},

	{label = '🎽 | Chalecos', value = '2'},

    {label = '🔫 | Camuflajes de Armas', value = '3'},
}

ESX.UI.Menu.CloseAll()

ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mainmenu', {
    title    = 'NogalesRP',
    align    = 'bottom-right',
    elements = elements
}, function(data, menu)
    if data.current.value == '1' then
       ExecuteCommand("m")
    elseif data.current.value == '2' then 
        ExecuteCommand("ch")
    elseif data.current.value == '3' then
        ExecuteCommand("skins")
    end
 end)
end

RegisterCommand('Nombre q salga arriba', function()
	AbrirMenus()
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        if IsControlJustReleased(0, 344) then
            AbrirMenus()
        end
    end
  end)

  Citizen.CreateThread(function()
    if GetCurrentResourceName() ~= MenuRapidoKrosty_ then 
          print("[" .. GetCurrentResourceName() .. "] " .. "Thanks for your purchase!")
          print("[" .. GetCurrentResourceName() .. "] " .. "For Support take mi md   By TheKrosty#4329")
      end
  end)
  
  Citizen.CreateThread(function()
    if GetCurrentResourceName() ~= MenuRapidoKrosty_ then 
          print("[" .. GetCurrentResourceName() .. "] " .. "K Shop Top")
      end
  end)