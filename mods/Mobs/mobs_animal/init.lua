
local path = minetest.get_modpath("mobs_animal")

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")
mobs.intllib = S

-- Animals

dofile(path .. "/panda.lua") 
dofile(path .. "/pig.lua") 
dofile(path .. "/alien.lua") 

print (("Babys Panda, Pig and Alien are Here."))
