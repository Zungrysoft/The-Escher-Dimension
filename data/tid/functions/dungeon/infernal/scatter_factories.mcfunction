#Decide on the two locations for the factories
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2

scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players add temp2 value 1
execute if predicate tid:random_50 run scoreboard players add temp2 value 2

#Place the factories
execute if score temp value matches 0 run summon minecraft:area_effect_cloud 50 0 100 {Duration:99999999,CustomName:"\"factory_marker\""}
execute if score temp value matches 1 run summon minecraft:area_effect_cloud 100 0 -50 {Duration:99999999,CustomName:"\"factory_marker\""}
execute if score temp value matches 2 run summon minecraft:area_effect_cloud -50 0 -100 {Duration:99999999,CustomName:"\"factory_marker\""}
execute if score temp value matches 3 run summon minecraft:area_effect_cloud -100 0 50 {Duration:99999999,CustomName:"\"factory_marker\""}

execute if score temp2 value matches 0 run summon minecraft:area_effect_cloud 50 0 -100 {Duration:99999999,CustomName:"\"factory_marker\""}
execute if score temp2 value matches 1 run summon minecraft:area_effect_cloud 100 0 50 {Duration:99999999,CustomName:"\"factory_marker\""}
execute if score temp2 value matches 2 run summon minecraft:area_effect_cloud -50 0 100 {Duration:99999999,CustomName:"\"factory_marker\""}
execute if score temp2 value matches 3 run summon minecraft:area_effect_cloud -100 0 -50 {Duration:99999999,CustomName:"\"factory_marker\""}

#Put an explosive drill directly above one of the factories
execute at @e[type=area_effect_cloud,name="factory_marker",limit=1,sort=random] positioned ~-13 111 ~-13 run function tid:dungeon/infernal/misc/select_power_drill

#Build the factories
execute as @e[type=area_effect_cloud,name="factory_marker"] at @s run function tid:dungeon/infernal/factory/start
