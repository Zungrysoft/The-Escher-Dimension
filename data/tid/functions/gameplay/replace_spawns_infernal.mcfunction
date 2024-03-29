#Pick a random number between 0 and 31 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16

#Debris Demon
execute if score temp value matches 0..9 run function tid:custom_mobs/debris_demon2

#Babirusan Scavenger
execute if score temp value matches 10..10 run function tid:custom_mobs/babirusan_scavenger

#Charged Creeper
execute if score temp value matches 11..13 run summon minecraft:creeper ~ ~ ~ {powered:1}

#War Pig
execute if score temp value matches 14..28 run function tid:custom_mobs/war_pig_4

#Dye Zombie
execute if score temp value matches 29..30 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:black_dye,Count:1}],HandDropChances:[2F]}

#Giant Magma Cube (Also checks if there is enough space)
execute if score temp value matches 31 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~2 ~ ~2 air if block ~-2 ~ ~2 air if block ~2 ~ ~-2 air if block ~-2 ~ ~-2 air if block ~2 ~4 ~2 air if block ~-2 ~4 ~2 air if block ~2 ~4 ~-2 air if block ~-2 ~4 ~-2 air if block ~ ~4 ~ air if block ~ ~3 ~ air if block ~ ~2 ~ air run function tid:custom_mobs/giant_magma_cube
