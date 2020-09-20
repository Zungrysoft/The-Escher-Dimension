scoreboard players set jungle_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
execute if score jungle_rooms value matches 15.. run function tid:dungeon/jungle/generate_straggler
execute if score jungle_rooms value matches 15.. run scoreboard players set jungle_handler_phase value 20
