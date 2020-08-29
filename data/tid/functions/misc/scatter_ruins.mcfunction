#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"anchor\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~-3 ~-3 3 4 false @e[name="scatter"]
execute if predicate tid:random_33 run spreadplayers ~-3 ~-3 1 4 false @e[name="scatter"]
execute as @e[name="scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="anchor"] Pos[1]

#Run the functions
execute at @e[name="scatter"] run function tid:misc/generate_ruins

#Kill the anchor and scatters
kill @e[name="anchor"]
kill @e[name="scatter"]