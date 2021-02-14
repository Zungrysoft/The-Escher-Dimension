setblock ~ ~ ~ brick_slab[type=top]
setblock ~ ~2 ~ brick_slab[type=bottom]
execute positioned ~ ~1 ~ run function tid:misc/brick_random_spawner
