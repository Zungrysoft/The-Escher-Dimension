#Top
fill ~ ~ ~ ~ ~2 ~ end_stone_bricks
setblock ~ ~3 ~ polished_granite
setblock ~1 ~ ~-1 granite_slab[type=top]
setblock ~1 ~ ~0 granite_slab[type=double]
setblock ~1 ~ ~1 granite_slab[type=bottom]

#Start recursing
execute positioned ~ ~-1 ~ run function tid:misc/moon_dropout_stairwell_recurse
