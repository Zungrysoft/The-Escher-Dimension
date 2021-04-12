#Base
fill ~5 ~-1 ~5 ~-5 ~-1 ~-5 stone_bricks
fill ~4 ~-1 ~4 ~-4 ~-1 ~-4 air
fill ~-5 ~ ~5 ~-5 ~ ~-5 nether_brick_stairs[facing=east]
fill ~5 ~ ~5 ~5 ~ ~-5 nether_brick_stairs[facing=west]
fill ~5 ~ ~-5 ~-5 ~ ~-5 nether_brick_stairs[facing=south]
fill ~5 ~ ~5 ~-5 ~ ~5 nether_brick_stairs[facing=north]

#Monolith
execute positioned ~ ~-1 ~ run function tid:misc/soulsand_gravel_x

#Gravel
fill ~4 ~ ~4 ~-4 ~ ~-4 gravel
