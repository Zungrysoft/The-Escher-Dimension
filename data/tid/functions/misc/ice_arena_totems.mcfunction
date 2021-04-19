#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"anchor\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~ ~ 6 9 false @e[type=area_effect_cloud,name="scatter"]
execute as @e[type=area_effect_cloud,name="scatter"] run data modify entity @s Pos[1] set from entity @e[type=area_effect_cloud,limit=1,name="anchor"] Pos[1]

#Place the chest totem
scoreboard players set totemtype value 0
execute as @e[type=area_effect_cloud,name="scatter",sort=nearest,limit=1] at @s run function tid:dungeon/ice/select_totem

#Place random totem type A
function tid:misc/ice_arena_totems_choose
execute as @e[type=area_effect_cloud,name="scatter",sort=random,limit=3] at @s run function tid:dungeon/ice/select_totem

#Place random totem type B
function tid:misc/ice_arena_totems_choose
execute as @e[type=area_effect_cloud,name="scatter"] at @s run function tid:dungeon/ice/select_totem

#Kill the entities
kill @e[type=area_effect_cloud,name="scatter"]
kill @e[type=area_effect_cloud,name="anchor"]