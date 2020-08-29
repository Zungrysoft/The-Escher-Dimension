scoreboard players set layer_1_handler_phase value 4

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 2
#execute if score layer_1_rooms temp matches 15.. run function tid:dungeon/layer_1/generate_straggler
#execute if score layer_1_rooms temp matches 15.. run scoreboard players set layer_1_handler_phase value 2
