local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for _, stash in pairs(Config.Stashes) do
        exports.ox_inventory:RegisterStash(
            stash.id,
            stash.label,
            stash.slots,
            stash.weight,
            false
        )
    end
end)

lib.callback.register('stashitem-check', function(source, requiredKey)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return false end

    return Player.Functions.GetItemByName(requiredKey) ~= nil
end)
