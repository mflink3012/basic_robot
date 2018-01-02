local farmer = {
	plant = "farming:wheat_8",
	seed = "farming:seed_wheat",
	soil = "farming:soil_wet",
}
  
local node_fw = read_node.forward()
local node_bw = read_node.backward()
local node_lt = read_node.left()
local node_rt = read_node.right()

-- pickup all ripe plants
if farmer.plant == node_fw then
	dig.forward()
	place.forward(farmer.seed)
	move.forward()
elseif farmer.plant == node_bw then
	turn.left()
	turn.left()
	dig.forward()
	place.forward(farmer.seed)
	move.forward()
elseif farmer.plant == node_lt then
	turn.left()
	dig.forward()
	place.forward(farmer.seed)
	move.forward()
elseif farmer.plants == node_rt then
	turn.right()
	dig.forward()
	place.forward(farmer.seed)
	move.forward()
else
	local node_fwdn = read_node.forward_down()
 	-- walk around
	if farmer.soil ~= node_fwdn or not move.forward() then
		if math.random(2) == 1 then
			turn.left()
		else
			turn.right()
		end
	end
end