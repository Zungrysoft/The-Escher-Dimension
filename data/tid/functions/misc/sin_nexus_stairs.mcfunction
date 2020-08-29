#Summon the stands
summon area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"anchor\""}
summon area_effect_cloud ~4 ~ ~4 {Duration:99999999,CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~4 ~4 2 3 false @e[name="scatter"]
spreadplayers ~4 ~4 2 3 under 168 false @e[name="scatter"]
execute as @e[name="scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="anchor"] Pos[1]

#Generate the structures
execute as @e[name="scatter"] at @s run summon minecraft:area_effect_cloud ~-3 ~ ~-3 {Duration:99999999,CustomName:"\"sin_chambers_down\""}

#Kill the anchor
kill @e[name="anchor"]

#Kill the scatters
kill @e[name="scatter"]