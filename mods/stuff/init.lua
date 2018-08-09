-- Initial Stuff

minetest.register_on_newplayer(function(player) 

player:get_inventory():add_item('main', 'color:white')
player:get_inventory():add_item('main', 'color:black')
player:get_inventory():add_item('main', 'color:red')
player:get_inventory():add_item('main', 'color:orange')
player:get_inventory():add_item('main', 'color:yellow')
player:get_inventory():add_item('main', 'color:pink')
player:get_inventory():add_item('main', 'color:green')
player:get_inventory():add_item('main', 'color:blue')

end)

-- Mobs

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.mobs then --main page		
					
				 player:get_inventory():set_list("main", {})

player:get_inventory():add_item('main', 'ccmobs:white_block')
player:get_inventory():add_item('main', 'ccmobs:black_block')
player:get_inventory():add_item('main', 'ccmobs:red_block')
player:get_inventory():add_item('main', 'ccmobs:orange_block')
player:get_inventory():add_item('main', 'ccmobs:yellow_block')
player:get_inventory():add_item('main', 'ccmobs:pink_block')
player:get_inventory():add_item('main', 'ccmobs:green_block')
player:get_inventory():add_item('main', 'ccmobs:blue_block')

end 	
end
)

-- Fence

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.fence then --main page		
					
				 player:get_inventory():set_list("main", {})

player:get_inventory():add_item('main', 'fence:white')
player:get_inventory():add_item('main', 'fence:black')
player:get_inventory():add_item('main', 'fence:red')
player:get_inventory():add_item('main', 'fence:orange')
player:get_inventory():add_item('main', 'fence:yellow')
player:get_inventory():add_item('main', 'fence:pink')
player:get_inventory():add_item('main', 'fence:green')
player:get_inventory():add_item('main', 'fence:blue')

end 	
end
)


-- Trapdoor

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.trapdoor then --main page		
					
				 player:get_inventory():set_list("main", {})

player:get_inventory():add_item('main', 'doors:trapdoor_white')
player:get_inventory():add_item('main', 'doors:trapdoor_black')
player:get_inventory():add_item('main', 'doors:trapdoor_red')
player:get_inventory():add_item('main', 'doors:trapdoor_orange')
player:get_inventory():add_item('main', 'doors:trapdoor_yellow')
player:get_inventory():add_item('main', 'doors:trapdoor_pink')
player:get_inventory():add_item('main', 'doors:trapdoor_green')
player:get_inventory():add_item('main', 'doors:trapdoor_blue')

end 	
end
)


-- Carpets

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.carpets then --main page		
					
				 player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'carpet:white')
player:get_inventory():add_item('main', 'carpet:black')
player:get_inventory():add_item('main', 'carpet:red')
player:get_inventory():add_item('main', 'carpet:orange')
player:get_inventory():add_item('main', 'carpet:yellow')
player:get_inventory():add_item('main', 'carpet:pink')
player:get_inventory():add_item('main', 'carpet:green')
player:get_inventory():add_item('main', 'carpet:blue')

end 	
end
)


-- Doors

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.doors then --main page		
					
				 player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'doors:door_white')
player:get_inventory():add_item('main', 'doors:door_black')
player:get_inventory():add_item('main', 'doors:door_red')
player:get_inventory():add_item('main', 'doors:door_orange')
player:get_inventory():add_item('main', 'doors:door_yellow')
player:get_inventory():add_item('main', 'doors:door_pink')
player:get_inventory():add_item('main', 'doors:door_green')
player:get_inventory():add_item('main', 'doors:door_blue')

end 	
end
)

-- Waters

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.waters then --main page		
					
				 player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'water:white_water_source')
player:get_inventory():add_item('main', 'water:black_water_source')
player:get_inventory():add_item('main', 'water:red_water_source')
player:get_inventory():add_item('main', 'water:orange_water_source')
player:get_inventory():add_item('main', 'water:yellow_water_source')
player:get_inventory():add_item('main', 'water:pink_water_source')
player:get_inventory():add_item('main', 'water:green_water_source')
player:get_inventory():add_item('main', 'water:blue_water_source') 				

end 	
end
)

-- Lights

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.lights then --main page		
					
				 player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'light:white')
player:get_inventory():add_item('main', 'light:black')
player:get_inventory():add_item('main', 'light:red')
player:get_inventory():add_item('main', 'light:orange')
player:get_inventory():add_item('main', 'light:yellow')
player:get_inventory():add_item('main', 'light:pink')
player:get_inventory():add_item('main', 'light:green')
player:get_inventory():add_item('main', 'light:blue') 						

end 	
end
)

-- Blocks

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.blocks then --main page		
					
player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'color:white')
player:get_inventory():add_item('main', 'color:black')
player:get_inventory():add_item('main', 'color:red')
player:get_inventory():add_item('main', 'color:orange')
player:get_inventory():add_item('main', 'color:yellow')
player:get_inventory():add_item('main', 'color:pink')
player:get_inventory():add_item('main', 'color:green')
player:get_inventory():add_item('main', 'color:blue') 							

end 	
end
)

-- Windows

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.windows then --main page		
					
player:get_inventory():set_list("main", {})

player:get_inventory():add_item('main', 'glass:white')
player:get_inventory():add_item('main', 'glass:black')
player:get_inventory():add_item('main', 'glass:red')
player:get_inventory():add_item('main', 'glass:orange')
player:get_inventory():add_item('main', 'glass:yellow')
player:get_inventory():add_item('main', 'glass:pink')
player:get_inventory():add_item('main', 'glass:green')
player:get_inventory():add_item('main', 'glass:blue') 				

end 	
end
)

-- Stairs 

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.stairs then --main page		
					
				 player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'stairs:stair_white')
player:get_inventory():add_item('main', 'stairs:stair_black')
player:get_inventory():add_item('main', 'stairs:stair_red')
player:get_inventory():add_item('main', 'stairs:stair_orange')
player:get_inventory():add_item('main', 'stairs:stair_yellow')
player:get_inventory():add_item('main', 'stairs:stair_pink')
player:get_inventory():add_item('main', 'stairs:stair_green')
player:get_inventory():add_item('main', 'stairs:stair_blue') 						

end 	
end
)


-- Slabs

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.slabs then --main page		
					
				 player:get_inventory():set_list("main", {})
					 
player:get_inventory():add_item('main', 'stairs:slab_white')
player:get_inventory():add_item('main', 'stairs:slab_black')
player:get_inventory():add_item('main', 'stairs:slab_red')
player:get_inventory():add_item('main', 'stairs:slab_orange')
player:get_inventory():add_item('main', 'stairs:slab_yellow')
player:get_inventory():add_item('main', 'stairs:slab_pink')
player:get_inventory():add_item('main', 'stairs:slab_green')
player:get_inventory():add_item('main', 'stairs:slab_blue') 		

end 	
end
)




