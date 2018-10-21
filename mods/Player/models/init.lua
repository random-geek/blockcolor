minetest.register_chatcommand("sam", {
	params = "",
	description = "Panda: Choice Sam Model for Player",
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		if not player then
			return false, "Player not found"
		end
		 player:set_properties({
			 visual = "mesh",
			 mesh = "sam.b3d",
   -- model ="panda",
		  })
		return true, "Done."
	end,
})
