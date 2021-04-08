#Build
fill ~ ~ ~ ~ ~-3 ~ end_stone_bricks

setblock ~ ~0 ~1 granite_slab[type=double]
setblock ~-1 ~-1 ~ granite_slab[type=double]
setblock ~ ~-2 ~-1 granite_slab[type=double]
setblock ~1 ~-3 ~ granite_slab[type=double]

setblock ~1 ~0 ~1 granite_slab[type=top]
setblock ~-1 ~-1 ~1 granite_slab[type=top]
setblock ~-1 ~-2 ~-1 granite_slab[type=top]
setblock ~1 ~-3 ~-1 granite_slab[type=top]

setblock ~-1 ~0 ~1 granite_slab[type=bottom]
setblock ~-1 ~-1 ~-1 granite_slab[type=bottom]
setblock ~1 ~-2 ~-1 granite_slab[type=bottom]
setblock ~1 ~-3 ~1 granite_slab[type=bottom]

#Start recursing
scoreboard players set temp9 value 0
execute if blocks ~1 ~-4 ~1 ~-1 ~-7 ~-1 1033 1 1001 all run scoreboard players set temp9 value 1
execute if score temp9 value matches 0 run fill ~1 ~-2 ~1 ~-1 ~-3 ~-1 polished_granite
execute if score temp9 value matches 1 positioned ~ ~-4 ~ run function tid:misc/moon_dropout_stairwell_recurse
