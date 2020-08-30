#Initialize the phase to zero
execute unless score hellion_handler_phase value matches 0.. run say Waiting for chunks to load...
execute unless score hellion_handler_phase value matches 0.. run scoreboard players set hellion_handler_phase value 0

#Phase 0: Wait for chunks to load
execute if score hellion_handler_phase value matches 0 run function tid:dungeon/hellion/hellion_handler_p0

#Phase 10: Initialize the world
execute if score hellion_handler_phase value matches 10 run function tid:dungeon/hellion/hellion_handler_p10

#Phase 20: Generate the world
execute if score hellion_handler_phase value matches 20 run function tid:dungeon/hellion/hellion_handler_p20

#Phase 30: Make sure that a sufficient number of rooms got generated
execute if score hellion_handler_phase value matches 30 run function tid:dungeon/hellion/hellion_handler_p30

#Phase 40: Final Steps
execute if score hellion_handler_phase value matches 40 run function tid:dungeon/hellion/hellion_handler_p40