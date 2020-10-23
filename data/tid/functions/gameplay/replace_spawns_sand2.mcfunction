#Pick a random number between 0 and 8 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

#Servant of Zorethab (Healing)
execute if score temp value matches 0 run function tid:custom_mobs/potion_carrier_healing
#Servant of Zorethab (Strength)
execute if score temp value matches 1 run function tid:custom_mobs/potion_carrier_strength
#Servant of Zorethab (Swiftness)
execute if score temp value matches 2 run function tid:custom_mobs/potion_carrier_swiftness
#Fountain of Flame
execute if score temp value matches 3..6 run function tid:custom_mobs/fire_fountain
#Alloy Elemental
execute if score temp value matches 7 if predicate tid:random_10 run function tid:custom_mobs/alloy_elemental

#Dye Zombie
execute if predicate tid:random_07 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:pink_dye,Count:1}],HandDropChances:[1.00F]}
