#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"anchor\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~3 ~2 2 2 false @e[name="scatter"]
execute if predicate tid:random_50 run spreadplayers ~3 ~3 2 2 false @e[name="scatter"]
execute as @e[name="scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="anchor"] Pos[1]

#Run the function on each scatter
execute at @e[name="scatter"] run function tid:misc/summon_tnt_stick

#Kill the anchor and scatters
kill @e[name="anchor"]
kill @e[name="scatter"]