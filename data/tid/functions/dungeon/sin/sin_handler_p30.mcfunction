scoreboard players set sin_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
execute if score sin_rooms value matches 15.. run function tid:dungeon/sin/generate_straggler
execute if score sin_rooms value matches 15.. run scoreboard players set sin_handler_phase value 20
