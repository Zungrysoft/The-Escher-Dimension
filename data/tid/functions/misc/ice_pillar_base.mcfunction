#Delete the Command Block
fill ~1 ~1 ~ ~-1 ~-1 ~ stone_bricks
fill ~ ~1 ~1 ~ ~-1 ~-1 stone_bricks
setblock ~ ~1 ~1 stone_brick_stairs[facing=north]
setblock ~ ~1 ~-1 stone_brick_stairs[facing=south]
setblock ~1 ~1 ~ stone_brick_stairs[facing=west]
setblock ~-1 ~1 ~ stone_brick_stairs[facing=east]

#Set success value
scoreboard players set success value 1
