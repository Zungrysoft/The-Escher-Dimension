#Scatter piles of gold
execute if predicate tid:random_70 if score @s counter1 matches 1.. run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"gold_pile\""}
execute if predicate tid:random_10 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"gold_pile\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="gold_pile",type=armor_stand]
execute as @e[name="gold_pile",type=armor_stand] at @s if block ~ ~-1 ~ warped_hyphae run function tid:misc/gold_pile
kill @e[name="gold_pile"]

#Scatter blocks of glowstone
execute if predicate tid:random_30 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_piece\""}
execute if predicate tid:random_30 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_piece\""}
execute if predicate tid:random_30 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_piece\""}
execute if predicate tid:random_30 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_piece\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="glowstone_piece",type=armor_stand]
execute as @e[name="glowstone_piece",type=armor_stand] at @s if block ~ ~ ~ air if block ~ ~-1 ~ warped_hyphae run setblock ~ ~ ~ glowstone
kill @e[name="glowstone_piece",type=armor_stand]

#Scatter blocks of glowstone
execute if predicate tid:random_20 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"debris_piece\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="debris_piece",type=armor_stand]
execute as @e[name="debris_piece",type=armor_stand] at @s if block ~ ~ ~ air if block ~ ~-1 ~ warped_hyphae run setblock ~ ~ ~ ancient_debris
kill @e[name="debris_piece",type=armor_stand]

#Scatter glowstone on the ceiling
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_rocket_summon\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_rocket_summon\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"glowstone_rocket_summon\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="glowstone_rocket_summon",type=armor_stand]
execute as @e[name="glowstone_rocket_summon",type=armor_stand] at @s run summon minecraft:firework_rocket ~ ~ ~ {CustomName:"\"glowstone_rocket\"",LifeTime:60}
kill @e[name="glowstone_rocket_summon",type=armor_stand]

#Scatter ghast spawners on the ceiling >:)
execute if predicate tid:random_07 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"ghast_rocket_summon\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="ghast_rocket_summon",type=armor_stand]
execute as @e[name="ghast_rocket_summon",type=armor_stand] at @s run summon minecraft:firework_rocket ~ ~ ~ {CustomName:"\"ghast_rocket\"",LifeTime:60}
kill @e[name="ghast_rocket_summon",type=armor_stand]

execute if predicate tid:random_10 run function tid:dungeon/station_generate_straggler

#Convert all the stone in the cave into hyphae
fill ~-1 ~-1 ~-1 ~32 ~20 ~32 warped_hyphae replace stone
fill ~-1 ~21 ~-1 ~32 ~28 ~32 warped_hyphae replace stone

kill @s