#Determine if the height is even or odd
scoreboard players operation pick value = height value
scoreboard players set calc value 200
scoreboard players operation pick value %= calc value

#Generate terrain
fill ~ ~-1 ~ ~ ~-22 ~ diorite replace air
execute if score pick value matches 51..150 run setblock ~ ~ ~ diorite
execute unless score pick value matches 51..150 run setblock ~ ~-1 ~ lava

#Foliage
execute if predicate tid:random_05 if score pick value matches 51..150 run setblock ~ ~1 ~ dead_fire_coral[waterlogged=false]
execute if predicate tid:random_03 if score pick value matches 51..150 run setblock ~ ~1 ~ dead_horn_coral[waterlogged=false]
execute if predicate tid:random_01 if score pick value matches 51..150 run setblock ~ ~1 ~ dead_brain_coral[waterlogged=false]
