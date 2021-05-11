#Base
fill ~5 ~-1 ~5 ~-5 ~-1 ~-5 stone_bricks
fill ~4 ~ ~4 ~-4 ~ ~-4 stone_bricks
fill ~-5 ~ ~5 ~-5 ~ ~-5 nether_brick_stairs[facing=east]
fill ~5 ~ ~5 ~5 ~ ~-5 nether_brick_stairs[facing=west]
fill ~5 ~ ~-5 ~-5 ~ ~-5 nether_brick_stairs[facing=south]
fill ~5 ~ ~5 ~-5 ~ ~5 nether_brick_stairs[facing=north]

#Layers
execute positioned ~ ~1 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~2 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~3 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~4 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~5 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~6 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~7 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~8 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~9 ~ run function tid:misc/soulsand_pillars_layer
execute positioned ~ ~10 ~ run function tid:misc/soulsand_pillars_layer
