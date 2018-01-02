basic_robot.call_limit = 48; -- how many execution calls per script run allowed
basic_robot.entry_count = 2 -- how many robots ordinary player can have
basic_robot.advanced_count = 16 -- how many robots player with robot privs can have
basic_robot.radius = 32; -- divide whole world into blocks of this size - used for managing events like keyboard punches
basic_robot.password = "password"; -- IMPORTANT: change it before running mod, password used for authentifications

basic_robot.bad_inventory_blocks = { -- disallow taking from these nodes inventories to prevent player abuses
  ["craft_guide:sign_wall"] = true,
}
basic_robot.maxoperations = 3; -- how many operations (dig, generate energy,..) available per run,  0 = unlimited
basic_robot.dig_require_energy = true; -- does robot require energy to dig?
