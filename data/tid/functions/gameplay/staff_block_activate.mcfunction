#Check to ensure there isn't a player inside the block
execute unless entity @p[distance=0..3] run function tid:gameplay/staff_block_activate_place
execute if entity @p[distance=0..3] run function tid:gameplay/fail_sound