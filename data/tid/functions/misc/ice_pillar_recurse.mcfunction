#Recurse
execute if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function tid:misc/ice_pillar_recurse

#Recurse
execute if block ~ ~ ~ packed_ice if block ~1 ~ ~ packed_ice if block ~-1 ~ ~ packed_ice if block ~ ~ ~1 packed_ice if block ~ ~ ~-1 packed_ice positioned ~ ~1 ~ run function tid:misc/ice_pillar_base

#Tail-end: Build block
execute if score success value matches 1 run setblock ~ ~ ~ cobblestone
execute if score success value matches 1 if predicate tid:random_25 run setblock ~ ~ ~ dead_fire_coral_block
