scoreboard players set infernal_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
#execute if score infernal_rooms temp matches 15.. run function tid:dungeon/infernal/generate_straggler
#execute if score infernal_rooms temp matches 15.. run scoreboard players set infernal_handler_phase value 20
