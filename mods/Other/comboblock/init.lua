comboblock = {}

comboblock.index = {}

slab_registered = 0

local creative = minetest.setting_getbool("creative_mode")

local function create_comboblock(new_slab)
	
	local function create_tiles(tiles)
		if not tiles[2] then
			tiles[2] = tiles[1]
		end
		if not tiles[3] then
			tiles[3] = tiles[2]
		end
		if not tiles[4] then
			tiles[4] = tiles[3]
		end
		if not tiles[5] then
			tiles[5] = tiles[4]
		end
		if not tiles[6] then
			tiles[6] = tiles[5]
		end
		return tiles
	end
	
	
	
	minetest.override_item(new_slab, {
		on_place = function(itemstack, placer, pointed_thing)
			local pos = pointed_thing.under
			if pointed_thing.type ~= "node" or minetest.is_protected(pos, placer:get_player_name()) then
				return
			end
			local node = minetest.get_node(pos)
			if node.name == new_slab then
				minetest.swap_node(pos, {name = k, param2 = 0})
				if not creative then
					itemstack:take_item()
					return itemstack
				end
			elseif minetest.registered_nodes[node.name].groups.slab then
				minetest.swap_node(pos, {name = "comboblock:"..new_slab:split(":")[2].."_onc_"..node.name:split(":")[2], param2 = node.param2})
				if not creative then
					itemstack:take_item()
					return itemstack
				end
				return
			else
				return minetest.item_place(itemstack, placer, pointed_thing, param2)
			end
		end,
	})

	if slab_registered > 0 then
		local v1_def = minetest.registered_nodes[new_slab]
		local v1_groups = table.copy(v1_def.groups)
		v1_groups.not_in_creative_inventory = 1
		v1_groups.slab = nil 
		local v1_tiles = table.copy(v1_def.tiles)
		v1_tiles = create_tiles(v1_tiles)

		
		for v2,_ in pairs(comboblock.index) do
			local function registered_comboblocks(new_slab, v2, v1_tiles, v2_tiles, v1_def, v2_def, v1_groups)
				minetest.register_node("comboblock:"..new_slab:split(":")[2].."_onc_"..v2:split(":")[2], {
					description = v1_def.description.." on "..v2_def.description,
					drop =  v1_def.drop or new_slab,
					tiles = {v1_tiles[1], v2_tiles[2]},
					paramtype = "light",
					paramtype2 = "facedir",
					drawtype = "mesh",
      mesh = "test.obj",
					sounds = v1_def.sounds,
					groups = v1_groups,
					after_destruct = function(pos, oldnode)
						minetest.set_node(pos, {name = v2, param2 = oldnode.param2})
					end
				})
			end

			local v2_def = minetest.registered_nodes[v2]
			local v2_tiles = table.copy(v2_def.tiles)
			
			v2_tiles = create_tiles(v2_tiles)
			
			registered_comboblocks(
				new_slab, v2,
				v1_tiles, v2_tiles,
				v1_def, v2_def,
				v1_groups
			)
			
			local v2_groups = table.copy(v2_def.groups)
			v2_groups.not_in_creative_inventory = 1
			v2_groups.slab = nil
			registered_comboblocks(
				v2, new_slab,
				v2_tiles, v1_tiles,
				v2_def, v1_def,
				v2_groups
			)

		end
	end
	slab_registered = 1 + slab_registered
	comboblock.index[new_slab] = true
	--return comboblock
end


for name,def in pairs(minetest.registered_nodes) do
	if def.groups.slab then
		create_comboblock(name,comboblock)
	end
end

minetest.log("Combo block a cree ".. slab_registered*2)
