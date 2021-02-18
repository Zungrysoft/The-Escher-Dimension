scoreboard players set temp value 10
scoreboard players set xmax value 20
scoreboard players set zmax value 20
execute positioned ~-10 ~ ~-10 run function tid:dungeon/moon/pillar/run_count

#Add lower doorways
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_north\""}
