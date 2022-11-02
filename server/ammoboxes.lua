local ox_inventory = exports.ox_inventory

RegisterNetEvent('ammoboxes:server:use', function(slot, ammotype, rounds)
    local src = source
    local item = ox_inventory:GetSlot(src, slot)
    local ammount = rounds * item.count
    local canSwap = ox_inventory:CanSwapItem(src, item.name, item.count, ammotype, ammount)
    if canSwap then 
        ox_inventory:RemoveItem(src, item.name, item.count, false, slot)
        ox_inventory:AddItem(src, ammotype, ammount, false, slot)
    end
end)