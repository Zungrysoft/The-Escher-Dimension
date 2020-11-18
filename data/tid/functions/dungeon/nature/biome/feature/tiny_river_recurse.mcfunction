#Place the water
setblock ~ ~1 ~ air
setblock ~ ~ ~ water

#Update the scoreboard
scoreboard players remove moves_count value 1
scoreboard players set done value 0
execute unless score moves_count value matches 1.. run scoreboard players set done value 1

#Check for adjacent blocks to expand to
scoreboard players set count value 9
execute if score done value matches 0 positioned ~1 ~ ~ if predicate tid:random_50 run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~1 ~ ~ if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

scoreboard players set count value 9
execute if score done value matches 0 positioned ~-1 ~ ~ if predicate tid:random_66 run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~-1 ~ ~ if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

scoreboard players set count value 9
execute if score done value matches 0 positioned ~ ~ ~1 if predicate tid:random_75 run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~ ~ ~1 if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

scoreboard players set count value 9
execute if score done value matches 0 positioned ~ ~ ~-1 run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~ ~ ~-1 if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

scoreboard players set count value 9
execute if score done value matches 0 positioned ~ ~ ~1 run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~ ~ ~1 if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

scoreboard players set count value 9
execute if score done value matches 0 positioned ~-1 ~ ~ run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~-1 ~ ~ if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

scoreboard players set count value 9
execute if score done value matches 0 positioned ~1 ~ ~ run function tid:dungeon/nature/biome/feature/tiny_river_count
execute if score done value matches 0 positioned ~1 ~ ~ if score count value matches ..4 run function tid:dungeon/nature/biome/feature/tiny_river_recurse

#Summon the bridge entity
execute if predicate tid:random_05 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"bridge_marker\""}

execute if predicate tid:random_30 run scoreboard players set done value 1


