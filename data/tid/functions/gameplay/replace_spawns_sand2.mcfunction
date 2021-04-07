#Pick a random number between 0 and 8 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

#Servant of Zorethab (Healing)
execute if score temp value matches 0..2 run function tid:custom_mobs/potion_carrier_healing
#Servant of Zorethab (Strength)
execute if score temp value matches 3..4 run function tid:custom_mobs/potion_carrier_strength
#Servant of Zorethab (Swiftness)
execute if score temp value matches 5..6 run function tid:custom_mobs/potion_carrier_swiftness
#Alloy Elemental
execute if score temp value matches 7 run function tid:custom_mobs/alloy_elemental

#Wither Skeleton
summon wither_skeleton ~.5 ~ ~

#Dye Zombie
execute if predicate tid:random_15 run summon minecraft:zombie ~ ~ ~.5 {HandItems:[{id:pink_dye,Count:1}],HandDropChances:[2F]}
