max_moves = 50
light_placement_interval = 10
light_placement = "default:torch"

if move_fw_cnt == nil then
	move_fw_cnt = 1
end

node_fw = read_node.forward()
node_up = read_node.up()

if node_up ~= "air" then
	dig.up()
end

if node_fw ~= "air" then
	dig.forward()
	move.forward()
	move_fw_cnt = move_fw_cnt + 1
end

if (move_fw_cnt % light_placement_interval) == 0 then
	if read_node.up() ~= light_placement then
		place.up(light_placement)
	end
end

if move_fw_cnt > max_moves then
	say("Reached max_moves (" .. max_moves .. "). Self-destructing!")
	self.remove()
end