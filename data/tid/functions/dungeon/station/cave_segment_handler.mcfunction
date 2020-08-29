#Kills any cave segments that managed to generate after the master has moved on
execute unless score @s phase matches 1.. if score @e[tag=station_handler,limit=1] phase matches 1.. run scoreboard players set @s phase 666
execute unless score @s phase matches 1.. if score @e[tag=station_handler,limit=1] phase matches 1.. run kill @s

#Phase 0: Try to generate cave segments.
run function tid:dungeon/station/cave_segment_handler_p0

#Phase 1: Randomly generate the pockets of air within the yellow wool zone
run function tid:dungeon/station/cave_segment_handler_p1

#Phase 2: Wait for response from the master handler
#Do nothing

#Phase 3: Finish generating the interior of the cave, then kill self
run function tid:dungeon/station/cave_segment_handler_p3

