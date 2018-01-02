 tree   = "default:pine_tree";
 leaves = "default:pine_needles";
 
 if read_node.up() == tree then -- dig up
	dig.up(); 
	move.up(); 
	place.down(leaves) 
 else -- go down if can
	node = read_node.down()
	if node == leaves or node == tree then 
		dig.down(); move.down() 
	elseif node == "air" then
		move.down()
	else -- walk around
		node = read_node.forward();
		if node == tree then 
			say("Tree found")
			dig.forward() 
		elseif node ~= "air" then
			move.up()
		end
		if not move.forward() then
			if math.random(2)==1 then
				turn.left()
			else
				turn.right()
			end
		end
	end
 end