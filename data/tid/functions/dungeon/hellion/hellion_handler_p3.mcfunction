scoreboard players set hellion_handler_phase value 4

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 2
#execute if score hellion_rooms temp matches 15.. run function tid:dungeon/hellion/generate_straggler
#execute if score hellion_rooms temp matches 15.. run scoreboard players set hellion_handler_phase value 2
