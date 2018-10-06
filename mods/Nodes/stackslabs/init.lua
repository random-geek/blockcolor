-- [MOD] Stack Slabs [1.0] [stackslabs] by TumeniNodes 06-24-2016

stackslabs = {}

-- Register stackslabs.
-- Node will be called stackslabs:top_slab_<subname>

function stackslabs.register_top_slab(subname, recipeitem, groups, images, description, sounds)
	groups.topslab = 1
 minetest.register_node(":stackslabs:top_slab" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = true,
	groups = groups,
	sounds = sounds,

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -1, -0.5, 0.5, -0.5, 0.5},
		}
},

selection_box = {
			type = "fixed",
			fixed = {
						{-0.5, -1, -0.5, 0.5, -0.5, 0.5},
					}
		},

})
end


color1 = minetest.setting_get("color1") or "292421"
color2 = minetest.setting_get("color2") or "0000FF"
color3 = minetest.setting_get("color3") or "00FF00"
color4 = minetest.setting_get("color4") or "F5F5F5"
color5 = minetest.setting_get("color5") or "FF6103"
color6 = minetest.setting_get("color6") or "FF0000"
color7 = minetest.setting_get("color7") or "FFFF00"
color8 = minetest.setting_get("color8") or "FF69B4"

local source_list = {
	{"black", "Color1", color1, 40, 36, 33}, 
	{"blue", "Color2", color2, 0, 0, 255},
	{"green", "Color3", color3, 0, 255, 0}, 
	{"white", "Color4", color4, 245, 245, 245}, 
	{"orange", "Color5", color5, 255, 97, 3}, 
	{"red", "Color6", color6, 255, 0, 0}, 
	{"yellow", "Color7", color7, 255, 255, 0}, 
	{"pink", "Color8", color8, 255, 105, 180}
}

for i in ipairs(source_list) do
	local name = source_list[i][1]
	local desc = source_list[i][2]
	local colour = source_list[i][3]
	local red = source_list[i][4]
	local green = source_list[i][5]
	local blue = source_list[i][6]

-- Register top slab

stackslabs.register_top_slab( name  , "color:" ..name ,
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"color_white.png^[colorize:#"..colour..":70"},
		name .. "Top Slab",
		default.node_sound_wood_defaults())

end
