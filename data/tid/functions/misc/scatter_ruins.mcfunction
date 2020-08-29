#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_anchor\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"stronghold_ruins_scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~-3 ~-3 3 4 false @e[name="stronghold_ruins_scatter"]
execute if predicate tid:random_33 run spreadplayers ~-3 ~-3 1 4 false @e[name="stronghold_ruins_scatter"]
execute as @e[name="stronghold_ruins_scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="stronghold_ruins_anchor"] Pos[1]

#Rename them so they will be picked up by the generator
execute as @e[name="stronghold_ruins_scatter"] run data modify entity @s CustomName set value "\"stronghold_ruins\""

#Kill the anchor
kill @e[name="stronghold_ruins_anchor"]