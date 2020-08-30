#Initialize the phase to zero
execute unless score layer_4_handler_phase value matches 0.. run say Waiting for chunks to load...
execute unless score layer_4_handler_phase value matches 0.. run scoreboard players set layer_4_handler_phase value 0

#Phase 0: Wait for chunks to load
execute if score layer_4_handler_phase value matches 0 run function tid:dungeon/layer_4/layer_4_handler_p0

#Phase 10: Initialize the world
execute if score layer_4_handler_phase value matches 10 run function tid:dungeon/layer_4/layer_4_handler_p10

#Phase 11: Wait for the cave segments to finish generating. Then signal them to move to their next phase.
execute if score layer_4_handler_phase value matches 11 run function tid:dungeon/layer_4/layer_4_handler_p11

#Phase 12: Wait for cave segments to move onto phase 2. Once they do, signal them all to move onto phase 3.
execute if score layer_4_handler_phase value matches 12 run function tid:dungeon/layer_4/layer_4_handler_p12

#Phase 13: Wait for all cave segments to kill themselves.
execute if score layer_4_handler_phase value matches 13 run function tid:dungeon/layer_4/layer_4_handler_p13

#Phase 14: Start the dungeon generation
execute if score layer_4_handler_phase value matches 14 run function tid:dungeon/layer_4/layer_4_handler_p14

#Phase 20: Generate the dungeons
execute if score layer_4_handler_phase value matches 20 run function tid:dungeon/layer_4/layer_4_handler_p20

#Phase 30: Make sure that a sufficient number of rooms got generated
execute if score layer_4_handler_phase value matches 30 run function tid:dungeon/layer_4/layer_4_handler_p30

#Phase 40: Final Steps
execute if score layer_4_handler_phase value matches 40 run function tid:dungeon/layer_4/layer_4_handler_p40


#Run cave generation
execute if score layer_4_handler_phase value matches 11..13 as @e[type=minecraft:area_effect_cloud,name="station_cave_segment"] at @s run function tid:dungeon/station/cave_segment_handler