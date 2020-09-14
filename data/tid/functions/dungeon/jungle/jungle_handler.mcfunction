#Initialize the phase to zero
execute unless score jungle_handler_phase value matches 0.. run say Waiting for chunks to load...
execute unless score jungle_handler_phase value matches 0.. run scoreboard players set jungle_handler_phase value 0

#Phase 0: Wait for chunks to load
execute if score jungle_handler_phase value matches 0 run function tid:dungeon/jungle/jungle_handler_p0

#Phase 10: Start the cave generation
execute if score jungle_handler_phase value matches 10 run function tid:dungeon/jungle/jungle_handler_p10

#Phase 11: Run the cave generation and wait for it to finish
execute if score jungle_handler_phase value matches 11 run function tid:dungeon/jungle/jungle_handler_p11

#Phase 12: Initialize the world
execute if score jungle_handler_phase value matches 12 run function tid:dungeon/jungle/jungle_handler_p12

#Phase 20: Generate the world
execute if score jungle_handler_phase value matches 20 run function tid:dungeon/jungle/jungle_handler_p20

#Phase 30: Make sure that a sufficient number of rooms got generated
execute if score jungle_handler_phase value matches 30 run function tid:dungeon/jungle/jungle_handler_p30

#Phase 40: Final Steps
execute if score jungle_handler_phase value matches 40 run function tid:dungeon/jungle/jungle_handler_p40