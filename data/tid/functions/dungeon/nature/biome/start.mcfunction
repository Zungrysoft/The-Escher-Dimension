#Pick a biome generator
scoreboard players set biome value 0
execute if predicate tid:random_50 run scoreboard players add biome value 1
execute if predicate tid:random_50 run scoreboard players add biome value 2
execute if predicate tid:random_50 run scoreboard players add biome value 4
execute if predicate tid:random_50 run scoreboard players add biome value 8
# scoreboard players set biome value 9
execute if score biome value matches 0 run function tid:dungeon/nature/biome/biome/desert
execute if score biome value matches 1 run function tid:dungeon/nature/biome/biome/plains
execute if score biome value matches 2 run function tid:dungeon/nature/biome/biome/forest
execute if score biome value matches 3 run function tid:dungeon/nature/biome/biome/flats
execute if score biome value matches 4 run function tid:dungeon/nature/biome/biome/snow_plains
execute if score biome value matches 5 run function tid:dungeon/nature/biome/biome/stone
execute if score biome value matches 6 run function tid:dungeon/nature/biome/biome/flower_meadow
execute if score biome value matches 7 run function tid:dungeon/nature/biome/biome/clay
execute if score biome value matches 8 run function tid:dungeon/nature/biome/biome/crimson
execute if score biome value matches 9 run function tid:dungeon/nature/biome/biome/diorite
execute if score biome value matches 10 run function tid:dungeon/nature/biome/biome/rift
execute if score biome value matches 11 run function tid:dungeon/nature/biome/biome/fields
execute if score biome value matches 12 run function tid:dungeon/nature/biome/biome/red_desert
execute if score biome value matches 13 run function tid:dungeon/nature/biome/biome/tall_forest
execute if score biome value matches 14 run function tid:dungeon/nature/biome/biome/taiga
execute if score biome value matches 15 run function tid:dungeon/nature/biome/biome/mushroom

#Place the pedestal
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
spreadplayers 2032 2032 8 20 under 69 false @e[type=minecraft:area_effect_cloud,tag=scatter]
execute positioned 2032 71 2032 run kill @e[type=minecraft:area_effect_cloud,tag=scatter,sort=furthest,limit=4]
execute at @e[type=minecraft:area_effect_cloud,tag=scatter,limit=1] run function tid:dungeon/nature/select_pedestal
kill @e[type=minecraft:area_effect_cloud,tag=scatter]

#Clone the result over
clone 2001 50 2001 2031 72 2031 ~-5 ~ ~-5
clone 2001 50 2032 2031 72 2062 ~-5 ~ ~26
clone 2032 50 2001 2062 72 2031 ~26 ~ ~-5
clone 2032 50 2032 2062 72 2062 ~26 ~ ~26
