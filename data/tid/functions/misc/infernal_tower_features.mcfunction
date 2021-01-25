#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"anchor\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~ ~ 2 4 false @e[type=area_effect_cloud,name="scatter"]
execute as @e[type=area_effect_cloud,name="scatter"] run data modify entity @s Pos[1] set from entity @e[type=area_effect_cloud,limit=1,name="anchor"] Pos[1]

#Decide what is going to happen
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2

#Make it happen
execute if score temp value matches 0 at @e[type=area_effect_cloud,name="scatter"] if block ~ ~ ~ air run function tid:misc/infernal_iron_pile
execute if score temp value matches 1 at @e[type=area_effect_cloud,name="scatter"] if block ~ ~ ~ air run function tid:misc/infernal_dirt_pile
execute if score temp value matches 2 at @e[type=area_effect_cloud,name="scatter"] if block ~ ~ ~ air run function tid:misc/infernal_lava_puddle
execute if score temp value matches 3 at @e[type=area_effect_cloud,name="scatter"] if block ~ ~ ~ air run function tid:misc/infernal_tower_random_spawner

#Kill the entities
kill @e[type=area_effect_cloud,name="scatter"]
kill @e[type=area_effect_cloud,name="anchor"]
