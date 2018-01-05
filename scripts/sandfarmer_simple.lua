local collector = {
  collectable = "default:sand",
  walkable = "default:sand",
}
  
local node_fw = read_node.forward()
local node_bw = read_node.backward()
local node_lt = read_node.left()
local node_rt = read_node.right()

-- pickup all collectables
if collector.collectable == node_fw then
  dig.forward()
  move.forward()
elseif collector.collectable == node_bw then
  turn.left()
  turn.left()
  dig.forward()
  move.forward()
elseif collector.collectable == node_lt then
  turn.left()
  dig.forward()
  move.forward()
elseif collector.collectables == node_rt then
  turn.right()
  dig.forward()
  move.forward()
else
  local node_fwdn = read_node.forward_down()
  -- walk around on walkables only
  if collector.walkable ~= node_fwdn or not move.forward() then
    if math.random(2) == 1 then
      turn.left()
    else
      turn.right()
    end
  end
end