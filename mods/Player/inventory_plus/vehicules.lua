-- Cars 

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.cars then --main page		
					
				 player:get_inventory():set_list("main", {})

player:get_inventory():add_item('main', 'driftcar:driftcarwhite')
player:get_inventory():add_item('main', 'driftcar:driftcarblack')
player:get_inventory():add_item('main', 'driftcar:driftcarred')
player:get_inventory():add_item('main', 'driftcar:driftcarorange')
player:get_inventory():add_item('main', 'driftcar:driftcaryellow')
player:get_inventory():add_item('main', 'driftcar:driftcarpink')
player:get_inventory():add_item('main', 'driftcar:driftcargreen')
player:get_inventory():add_item('main', 'driftcar:driftcarblue')

end 
end
)

-- SurfBoard

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.surfboard then --main page		
					
				 player:get_inventory():set_list("main", {})

player:get_inventory():add_item('main', 'surfboard:boardwhite')
player:get_inventory():add_item('main', 'surfboard:boardblack')
player:get_inventory():add_item('main', 'surfboard:boardred')
player:get_inventory():add_item('main', 'surfboard:boardorange')
player:get_inventory():add_item('main', 'surfboard:boardyellow')
player:get_inventory():add_item('main', 'surfboard:boardpink')
player:get_inventory():add_item('main', 'surfboard:boardgreen')
player:get_inventory():add_item('main', 'surfboard:boardblue')

end 
end
)

