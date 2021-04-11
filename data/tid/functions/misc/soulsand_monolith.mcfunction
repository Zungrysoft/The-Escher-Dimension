#Base
fill ~4 ~ ~4 ~-4 ~ ~-4 stone_bricks
fill ~-5 ~ ~5 ~-5 ~ ~-5 nether_brick_stairs[facing=east]
fill ~5 ~ ~5 ~5 ~ ~-5 nether_brick_stairs[facing=west]
fill ~5 ~ ~-5 ~-5 ~ ~-5 nether_brick_stairs[facing=south]
fill ~5 ~ ~5 ~-5 ~ ~5 nether_brick_stairs[facing=north]

#Core
execute positioned ~ ~1 ~ run fill ~-1 ~0 ~-1 ~1 ~8 ~1 stone

#Monolith
execute positioned ~ ~1 ~ run function tid:misc/soulsand_monolith_x
