node_forward = read_node.forward()

if node_forward == "air" then
	say("Can not go further. Removing myself.")
	self.remove()
else
	dig.forward()
	
	if not move.forward() then
		say("Can not go further. Removing myself.")
		self.remove()
	end
end

node_down = read_node.down()

if node_down == "air" then
	if not place.down("default:glass") then
		if not place.down("default:dirt") then
			say("I found a hole beyond me, but have no glass or dirt to place!")
		end
	end
end
