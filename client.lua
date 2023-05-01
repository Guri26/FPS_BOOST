citizen.CreateThread(function()
    while true do
        citizen.wait(0) -- do this every tick

        -- traffic and ped desity management (these things NEED to rUn every tick)
        SetTrafficDensity(0.0) -- 0.0 = none, 1.0 = max
        SetPedDensity(0.0) -- 0.0 = none, 1.0 = max
    end
end)

function SetTrafficDensity(density)
    SetParkedVehicleDensityMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density)
end
