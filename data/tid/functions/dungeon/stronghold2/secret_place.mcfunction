#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:area_effect_cloud ~ ~8 ~ {CustomName:"\"anchor\""}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~6 ~6 2 4 false @e[name="scatter"]
execute as @e[name="scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="anchor"] Pos[1]

#Run the function on each scatter
execute at @e[name="scatter"] if blocks ~-2 ~128 ~-3 ~2 ~131 ~2 1001 1 1001 all run function tid:dungeon/stronghold2/secret_build

#Kill the anchor and scatters
kill @e[name="anchor"]
kill @e[name="scatter"]

#Track this secret
scoreboard players add stronghold2_secrets value 1
