#Basalt
execute if block ~ ~ ~ basalt[axis=y] run function tid:dungeon/infernal/rng/basalt

#Nether bricks
execute if predicate tid:random_25 if block ~ ~ ~ nether_bricks run setblock ~ ~ ~ cracked_nether_bricks

#Polished andesite
execute if predicate tid:random_15 if block ~ ~ ~ polished_andesite run setblock ~ ~ ~ andesite

#Cracked stone bricks
execute if predicate tid:random_15 if block ~ ~ ~ cracked_stone_bricks run setblock ~ ~ ~ stone_bricks
execute if predicate tid:random_005 if block ~ ~ ~ cracked_stone_bricks run setblock ~ ~ ~ ancient_debris

#Grey stained glass pane
execute if predicate tid:random_40 if block ~ ~ ~ gray_stained_glass_pane run setblock ~ ~ ~ brown_stained_glass_pane

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/infernal/rng/rng_y
