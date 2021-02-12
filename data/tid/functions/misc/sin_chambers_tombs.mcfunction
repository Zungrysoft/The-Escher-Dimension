#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"anchor\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~ ~ 9 10 false @e[type=area_effect_cloud,name="scatter"]
execute as @e[type=area_effect_cloud,name="scatter"] run data modify entity @s Pos[1] set from entity @e[type=area_effect_cloud,limit=1,name="anchor"] Pos[1]

#Place the tomb
execute at @e[type=area_effect_cloud,name="scatter"] positioned ~-3 ~-6 ~-3 run function tid:dungeon/sin/chambers/select_tomb

#Kill the entities
kill @e[type=area_effect_cloud,name="scatter"]
kill @e[type=area_effect_cloud,name="anchor"]