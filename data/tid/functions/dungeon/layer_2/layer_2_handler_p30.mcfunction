scoreboard players set layer_2_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
#execute if score layer_2_rooms value matches 15.. run function tid:dungeon/layer_2/generate_straggler
#execute if score layer_2_rooms value matches 15.. run scoreboard players set layer_2_handler_phase value 20
