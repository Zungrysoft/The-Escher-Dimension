#Starting top
setblock ~ ~ ~ stone_bricks
setblock ~ ~ ~1 stone_brick_stairs[half=top,facing=north]
setblock ~ ~ ~-1 stone_brick_stairs[half=top,facing=south]
setblock ~1 ~ ~ stone_brick_stairs[half=top,facing=west]
setblock ~-1 ~ ~ stone_brick_stairs[half=top,facing=east]

#Start recursion
execute positioned ~ ~-1 ~ run function tid:misc/infernal_tower_pillar_recurse
