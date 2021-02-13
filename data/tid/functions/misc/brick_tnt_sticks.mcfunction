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
spreadplayers ~ ~ 2 2 false @e[name="scatter"]
execute as @e[name="scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="anchor"] Pos[1]

#Run the function on each scatter
execute at @e[name="scatter"] run function tid:misc/brick_tnt_stick

#Kill the anchor and scatters
kill @e[name="anchor"]
kill @e[name="scatter"]
