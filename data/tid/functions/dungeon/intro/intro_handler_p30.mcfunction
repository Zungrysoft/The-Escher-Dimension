scoreboard players set intro_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
#execute if score intro_rooms value matches 15.. run function tid:dungeon/intro/generate_straggler
#execute if score intro_rooms value matches 15.. run scoreboard players set intro_handler_phase value 20
