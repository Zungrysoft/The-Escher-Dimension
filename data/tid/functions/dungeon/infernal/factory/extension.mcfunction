#Randomly decide its height
execute at @s run tp @s ~ 30 ~
execute if predicate tid:random_50 at @s run tp @s ~ ~32 ~
execute if predicate tid:random_50 at @s run tp @s ~ ~16 ~
execute if predicate tid:random_50 at @s run tp @s ~ ~8 ~
execute if predicate tid:random_50 at @s run tp @s ~ ~4 ~

#Build it
execute at @s run function tid:dungeon/infernal/factory/extension_build

#Reserve the space at the bottom, so they don't generate under lava
execute positioned ~ 128 ~ run fill ~-15 ~11 ~-15 ~15 ~20 ~15 blue_wool

#Mark it on the map
fill ~-15 255 ~-15 ~15 255 ~15 stone_bricks replace black_concrete

#Kill this scatterer
kill @s
