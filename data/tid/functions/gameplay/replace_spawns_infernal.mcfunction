#Pick a random number between 0 and 4 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2

#Debris Demon
execute if score temp value matches 0 run function tid:custom_mobs/debris_demon

#Babirusan Scavenger
execute if score temp value matches 1 run function tid:custom_mobs/babirusan_scavenger

#Dye Zombie
execute if score temp value matches 2 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:black_dye,Count:1}],HandDropChances:[1.00F],Tags:["keep"]}
