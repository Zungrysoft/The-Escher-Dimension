#Crying Obsidian
execute if predicate tid:random_15 run setblock ~ ~ ~ crying_obsidian

#Crimson Nylium/Plants
scoreboard players set temp9 value 0
execute if predicate tid:random_30 run scoreboard players set temp9 value 1
execute if predicate tid:random_30 if score temp9 value matches 0 if block ~-1 ~ ~ crimson_nylium run scoreboard players set temp9 value 1
execute if predicate tid:random_30 if score temp9 value matches 0 if block ~ ~ ~-1 crimson_nylium run scoreboard players set temp9 value 1
execute if score temp9 value matches 1 run function tid:dungeon/wicked/rng/plant

#Marker
execute if predicate tid:random_05 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,CustomName:"\"wicked_marker\""}
