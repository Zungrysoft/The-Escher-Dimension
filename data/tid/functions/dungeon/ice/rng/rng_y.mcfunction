#Cobblestone
execute if predicate tid:random_07 if block ~ ~ ~ cobblestone run setblock ~ ~ ~ dead_fire_coral_block

#Stone Bricks
execute if predicate tid:random_005 if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ iron_ore
execute if predicate tid:random_10 if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ dead_horn_coral_block
execute if predicate tid:random_66 if block ~ ~ ~ stone_bricks if block ~ ~-1 ~ dead_horn_coral_block run setblock ~ ~ ~ dead_horn_coral_block

#Polished Basalt
execute if predicate tid:random_05 if block ~ ~ ~ polished_basalt[axis=x] run setblock ~ ~ ~ basalt[axis=x]
execute if predicate tid:random_05 if block ~ ~ ~ polished_basalt[axis=y] run setblock ~ ~ ~ basalt[axis=y]
execute if predicate tid:random_05 if block ~ ~ ~ polished_basalt[axis=z] run setblock ~ ~ ~ basalt[axis=z]

#Recurse
scoreboard players add ycount value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/ice/rng/rng_y
