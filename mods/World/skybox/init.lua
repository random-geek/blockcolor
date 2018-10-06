minetest.register_on_joinplayer(function(player)
    minetest.setting_set("time_speed", 0)
minetest.setting_set("time", 12000)
end)

minetest.register_on_shutdown(function(player)
    minetest.setting_set("time_speed", 0)
minetest.setting_set("time", 12000)
end)

pos = {x=0, y=0, z=0}

local mars = 5950
local moon = 3950

--The skybox for planets.

local skybox = {
"sky.png",
"sky.png",
"sky_1.png",
"sky.png",
"sky.png",
"sky.png",

}

local moonskybox = {
"space.png",
"space.png",
"earth.png",
"space.png",
"space.png",
"space.png",

}

local marsskybox = {
"mars.png",
"mars.png",
"mars.png",
"mars.png",
"mars.png",
"mars.png",

}

local time = 0

minetest.register_globalstep(function(dtime)
time = time + dtime
if time > 1 then for _, player in ipairs(minetest.get_connected_players()) do
time = 0

local name = player:get_player_name()
local pos = player:getpos()

--If the player has reached Mars
if minetest.get_player_by_name(name) and pos.y >= mars then
player:set_physics_override(1, 1.25, 0.75) -- speed, jump, gravity
player:set_sky({}, "skybox", marsskybox) -- Sets skybox


--If the player has reached Moon

elseif minetest.get_player_by_name(name) and pos.y >= moon then
player:set_physics_override(1, 1.5, 0.5) -- speed, jump, gravity
player:set_sky({}, "skybox", moonskybox) -- Sets skybox

--If the player is on Earth

elseif minetest.get_player_by_name(name) and pos.y < moon then
player:set_physics_override(1, 1, 1) -- speed, jump, gravity [default]
player:set_sky({}, "skybox", skybox) 

end end end end)

minetest.register_on_leaveplayer(function(player)

local name = player:get_player_name()

if name then
 player:set_sky({}, "skybox", skybox)

end end)
