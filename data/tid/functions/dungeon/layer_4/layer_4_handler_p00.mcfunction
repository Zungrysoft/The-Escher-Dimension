#Load the chunks necessary for generation
forceload add -64 -64 64 64
forceload add 1000 1000 1064 1064

#If chunks are loaded, move to the next phase
execute unless block -64 0 -64 clay unless block 64 0 64 clay unless block 1000 0 1000 clay unless block 1064 0 1064 clay run scoreboard players set layer_4_handler_phase value 10