#Pick a random number between 0 and 15 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Debris Demon
execute if score temp value matches 0..7 run function tid:custom_mobs/debris_demon

#Babirusan Scavenger
execute if score temp value matches 8..9 run function tid:custom_mobs/babirusan_scavenger

#Charged Creeper
execute if score temp value matches 10..12 run summon minecraft:creeper ~ ~ ~ {powered:1}

#Dye Zombie
execute if score temp value matches 13..14 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:black_dye,Count:1}],HandDropChances:[1.00F],Tags:["keep"]}

#Giant Magma Cube (Also checks if there is enough space)
execute if score temp value matches 15 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~2 ~ ~2 air if block ~-2 ~ ~2 air if block ~2 ~ ~-2 air if block ~-2 ~ ~-2 air if block ~2 ~4 ~2 air if block ~-2 ~4 ~2 air if block ~2 ~4 ~-2 air if block ~-2 ~4 ~-2 air if block ~ ~4 ~ air if block ~ ~3 ~ air if block ~ ~2 ~ air run function tid:custom_mobs/giant_magma_cube
