-- Add leaves to cpu-inventory to let bots climb up

local harvestable = {
	trees = {
		["default:tree"]="default:tree",
		["default:jungletree"]="default:jungletree",
		["default:pine_tree"]="default:pine_tree",
		["default:acacia_tree"]="default:acacia_tree",
		["default:aspen_tree"]="default:aspen_tree", 
	},
	leaves = {
		["default:leaves"]="default:leaves",
		["default:jungleleaves"]="default:jungleleaves",
		["default:pine_needles"]="default:pine_needles",
		["default:acacia_leaves"]="default:acacia_leaves",
		["default:aspen_leaves"]="default:aspen_leaves",
	},
}
  
local node_fw = read_node.forward()
local node_bw = read_node.backward()
local node_up = read_node.up()
local node_dn = read_node.down()
local node_lt = read_node.left()
local node_rt = read_node.right()

-- trees first, leaves last
  
if harvestable.trees[node_up] ~= nil then
	dig.up()
	local k
	for k in pairs(harvestable.leaves) do
		if place.down(k) then
			break
		end
	end
elseif harvestable.trees[node_fw] ~= nil then
	dig.forward() 
	move.forward()
elseif harvestable.trees[node_bw] ~= nil then
	turn.left()
	turn.left()
	dig.forward()
	move.forward()
elseif harvestable.trees[node_dn] ~= nil then
	dig.down()
	move.down()
elseif harvestable.trees[node_lt] ~= nil then
	turn.left()
	dig.forward()
	move.forward()
elseif harvestable.trees[node_rt] ~= nil then
	turn.right()
	dig.forward()
	move.forward()
elseif harvestable.leaves[node_up] ~= nil then
	dig.up()
	local k
	for k in pairs(harvestable.leaves) do
		if place.down(k) then
			break
		end
	end
elseif harvestable.leaves[node_fw] ~= nil then
	dig.forward() 
	move.forward()
elseif harvestable.leaves[node_bw] ~= nil then
	turn.left()
	turn.left()
	dig.forward()
	move.forward()
elseif harvestable.leaves[node_dn] ~= nil then
	dig.down()
	move.down()
elseif harvestable.leaves[node_lt] ~= nil then
	turn.left()
	dig.forward()
	move.forward()
elseif harvestable.leaves[node_rt] ~= nil then
	turn.right()
	dig.forward()
	move.forward()
else
 	-- walk around
		
	if node_fw ~= "air" then
		if move.forward_up() then
			return
		end
	elseif node_dn == "air" then
		move.down()
	end

	if not move.forward() then
		if math.random(2) == 1 then
			turn.left()
		else
			turn.right()
		end
	end
end