local color = {
    r=247,
    b=223,
    g=88,
    a=255
}

function text(content)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(1.7,1.7)
    SetTextColour(color.r, color.b, color.g, color.a)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.95,0.9)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)
        --[[
            kph's factor 3.6
            mph's factor 2.2369
        ]]
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1),false))*2.2369
        -- Check if the ped is in a vehicle 
        if (IsPedInAnyVehicle(GetPlayerPed(-1),false)) then
            text(math.floor(speed))
      
      
      
        end
    end

end)