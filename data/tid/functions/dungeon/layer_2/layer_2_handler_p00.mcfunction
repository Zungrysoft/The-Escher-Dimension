#Load the chunks necessary for generation
forceload add -130 -130 130 0
forceload add -130 0 130 130
forceload add 1000 1000 1064 1064

#If chunks are loaded, move to the next phase
execute unless block -130 0 -130 clay unless block 130 0 130 clay unless block 1000 0 1000 clay unless block 1064 0 1064 clay run scoreboard players set layer_2_handler_phase value 10

