--Henrys Mod V.0.3(Laserschwert,Holz,HolzNichtBrennbar)
minetest.register_tool("mod:laserschwert", {
	description = "Laserschwert",
	inventory_image = "mod_laser.png",
	paramtype=10,
	light_source=10,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=0, maxlevel=3},
			crumbly={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=0, maxlevel=3},
			snappy={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=0, maxlevel=3}
		}
	},
})
minetest.register_alias("stuff:laser","mod:Laserschwert")

minetest.register_node("mod:holz",{
description = "Bodenbelag aus Holz",
inventory_image="mod_wood.png",
wield_image = "mod_wood.png",
tile_images = {"mod_wood.png"},
drawtype="signlike",
walkable=false,
is_ground_content = true,
groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},--,mesecon=2
paramtype = "light",
paramtype2 = "wallmounted",
selection_box = {
		type = "wallmounted",
				}
}
)
--TEST For nuke mod
--mesecon:register_effector(nil, "mod:holz")

--mesecon:register_on_signal_on(function(pos, node)
--if node.name == "mod:holz" then
--minetest.env:add_node(pos,{name="default:dirt"})
--nodeupdate(pos)
--mesecon:get_rules("pressureplate")
--end
--end)