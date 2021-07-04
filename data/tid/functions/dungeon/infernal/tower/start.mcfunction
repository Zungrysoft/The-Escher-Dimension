#Count up the number of built towers
scoreboard players add infernal_built_towers value 1

#Build base
fill ~-9 ~-1 ~-9 ~9 ~-10 ~9 stone_bricks
execute positioned ~ ~128 ~ run fill ~-9 ~-2 ~-9 ~9 ~-10 ~9 blue_wool

#Large base
execute unless score infernal_built_towers value matches 2.. run fill ~-15 ~-1 ~-15 ~15 ~-10 ~15 stone_bricks
execute unless score infernal_built_towers value matches 2.. positioned ~ ~128 ~ run fill ~-15 ~-2 ~-15 ~15 ~-10 ~15 blue_wool

#Build first room
execute positioned ~-3 ~-1 ~-3 run function tid:dungeon/infernal/tower/select_short_small

#Add docks
execute if predicate tid:random_25 run summon minecraft:area_effect_cloud ~ ~ ~-10 {Duration:99999999,CustomName:"\"infernal_dock_north\""}
execute if predicate tid:random_25 run summon minecraft:area_effect_cloud ~ ~ ~10 {Duration:99999999,CustomName:"\"infernal_dock_south\""}
execute if predicate tid:random_25 run summon minecraft:area_effect_cloud ~-10 ~ ~ {Duration:99999999,CustomName:"\"infernal_dock_west\""}
execute if predicate tid:random_25 run summon minecraft:area_effect_cloud ~10 ~ ~ {Duration:99999999,CustomName:"\"infernal_dock_east\""}
