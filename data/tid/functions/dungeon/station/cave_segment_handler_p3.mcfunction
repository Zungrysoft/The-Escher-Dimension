#Convert all the stone in the cave into hyphae
fill ~-1 ~-1 ~-1 ~32 ~20 ~32 warped_hyphae replace stone
fill ~-1 ~21 ~-1 ~32 ~28 ~32 warped_hyphae replace stone

#Scatter piles of gold
execute if predicate tid:random_70 if score @s counter1 matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"gold_pile\""}
execute if predicate tid:random_25 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"gold_pile\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="gold_pile",type=area_effect_cloud]
execute as @e[name="gold_pile",type=area_effect_cloud] at @s if block ~ ~-1 ~ warped_hyphae run function tid:misc/gold_pile
kill @e[name="gold_pile"]

#Scatter blocks of ancient debris
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"debris_piece\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"debris_piece\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="debris_piece",type=area_effect_cloud]
execute as @e[name="debris_piece",type=area_effect_cloud] at @s if block ~ ~ ~ air if block ~ ~-1 ~ warped_hyphae run setblock ~ ~ ~ ancient_debris
kill @e[name="debris_piece",type=area_effect_cloud]

#Scatter glowstone on the ceiling
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="scatter",type=area_effect_cloud]
execute as @e[name="scatter",type=area_effect_cloud] at @s run function tid:misc/station_ceiling_glowstone
kill @e[name="scatter",type=area_effect_cloud]

#Scatter ghast spawners on the ceiling >:)
execute if predicate tid:random_40 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers ~16 ~16 1 16 under 128 false @e[name="scatter",type=area_effect_cloud]
execute as @e[name="scatter",type=area_effect_cloud] at @s run function tid:misc/station_ceiling_ghast_spawner
kill @e[name="scatter",type=area_effect_cloud]

#Add a marker so the generator knows to continue from here if not enough rooms generate
summon minecraft:area_effect_cloud ~16 ~14 ~16 {Duration:99999999,CustomName:"\"station_straggler_start\""}

kill @s