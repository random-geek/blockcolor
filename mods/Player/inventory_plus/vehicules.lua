-- Airboat

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.airboat then --main page		
					
				 player:get_inventory():set_list("main", {})

if minetest.check_player_privs(name, {notroll=true})==false then
		minetest.chat_send_player(name,"You need notroll privilege for use vehicules (For admin : /grant nameplayer notroll)")
else

player:get_inventory():add_item('main', 'airboat:airboatwhite')
player:get_inventory():add_item('main', 'airboat:airboatblack')
player:get_inventory():add_item('main', 'airboat:airboatred')
player:get_inventory():add_item('main', 'airboat:airboatorange')
player:get_inventory():add_item('main', 'airboat:airboatyellow')
player:get_inventory():add_item('main', 'airboat:airboatpink')
player:get_inventory():add_item('main', 'airboat:airboatgreen')
player:get_inventory():add_item('main', 'airboat:airboatblue')

end 
end
end
)

-- Cars 

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.cars then --main page		
					
				 player:get_inventory():set_list("main", {})

if minetest.check_player_privs(name, {notroll=true})==false then
		minetest.chat_send_player(name,"You need notroll privilege for use vehicules (For admin : /grant nameplayer notroll)")
else

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
end
)

-- SurfBoard

minetest.register_on_player_receive_fields(function(player, formname, fields)	
		local name = player:get_player_name()	
				if fields.surfboard then --main page		
					
				 player:get_inventory():set_list("main", {})

if minetest.check_player_privs(name, {notroll=true})==false then
		minetest.chat_send_player(name,"You need notroll privilege for use vehicules (For admin : /grant nameplayer notroll)")
else

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
end
)
