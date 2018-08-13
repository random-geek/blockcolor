
spawn_command = {} 

    spawn_command.pos = minetest.setting_get_pos("static_spawnpoint")

function teleport_to_spawn(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then
        -- just a check to prevent the server crashing
        return false
    end

    local pos = player:getpos()
    if pos.x>-10 and pos.x<10 and pos.z>-10 and pos.z<10 then
        minetest.chat_send_player(name, "Already close to spawn!")
    elseif _G['cursed_world'] ~= nil and    --check global table for cursed_world mod
        cursed_world.location_y and cursed_world.dimension_y and
        pos.y < (cursed_world.location_y + cursed_world.dimension_y) and    --if player is in cursed world, stay in cursed world
        pos.y > (cursed_world.location_y - cursed_world.dimension_y)
    then   --check global table for cursed_world mod
        --minetest.chat_send_player(name, "T"..(cursed_world.location_y + cursed_world.dimension_y).." "..(cursed_world.location_y - cursed_world.dimension_y))
        local spawn_pos = vector.round(spawn_command.pos);
        spawn_pos.y = spawn_pos.y + cursed_world.location_y;
        player:setpos(spawn_pos)
        minetest.chat_send_player(name, "Teleported!")
    else
        player:setpos(spawn_command.pos)
        minetest.chat_send_player(name, "Teleported")
    end
end

minetest.register_chatcommand("spawn", {
    description = "Teleport you to spawn point.",
    func = teleport_to_spawn,
})