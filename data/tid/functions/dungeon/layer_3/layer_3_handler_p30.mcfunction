scoreboard players set layer_3_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 2
#execute if score layer_3_rooms temp matches 15.. run function tid:dungeon/layer_3/generate_straggler
#execute if score layer_3_rooms temp matches 15.. run scoreboard players set layer_3_handler_phase value 2

