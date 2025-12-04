RegisterNetEvent('stashitem-open')
AddEventHandler('stashitem-open', function(stashData)

    lib.callback("stashitem-check", false, function(hasKey)
        if hasKey then
            exports.ox_inventory:openInventory("stash", stashData.id)
        else
            lib.notify({
                title = stashData.label,
                description = "Kamu membutuhkan item: " .. stashData.key,
                type = "error"
            })
        end
    end, stashData.key)

end)

CreateThread(function()
    for _, stash in pairs(Config.Stashes) do
        exports.ox_target:addBoxZone({
            coords = stash.coords,
            size = vec3(2, 2, 2),
            rotation = 0,
            debug = false,
            options = {
                {
                    name = stash.id,
                    icon = 'fa-solid fa-box',
                    label = 'Buka ' .. stash.label,
                    onSelect = function()
                        TriggerEvent('stashitem-open', stash)
                    end
                }
            }
        })
    end
end)
