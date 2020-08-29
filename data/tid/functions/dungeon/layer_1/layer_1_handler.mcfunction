#Initialize the phase to zero
execute unless score layer_1_handler_phase value matches 0.. run say Waiting for chunks to load...
execute unless score layer_1_handler_phase value matches 0.. run scoreboard players set layer_1_handler_phase value 0

#Phase 0: Wait for chunks to load
execute if score layer_1_handler_phase value matches 0 run function tid:dungeon/layer_1/layer_1_handler_p0

#Phase 1: Initialize the world
execute if score layer_1_handler_phase value matches 1 run function tid:dungeon/layer_1/layer_1_handler_p1

#Phase 2: Generate the world
execute if score layer_1_handler_phase value matches 2 run function tid:dungeon/layer_1/layer_1_handler_p2

#Phase 3: Make sure that a sufficient number of rooms got generated
execute if score layer_1_handler_phase value matches 3 run function tid:dungeon/layer_1/layer_1_handler_p3

#Phase 4: Final Steps
execute if score layer_1_handler_phase value matches 4 run function tid:dungeon/layer_1/layer_1_handler_p4