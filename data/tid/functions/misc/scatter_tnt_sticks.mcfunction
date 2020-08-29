#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Summon the stands
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"tnt_stick_anchor\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"tnt_stick_scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"tnt_stick_scatter\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"tnt_stick_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"tnt_stick_scatter\""}
execute if predicate tid:random_50 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"tnt_stick_scatter\""}

#Spread the stands around, then return them to the correct y value
spreadplayers ~3 ~2 2 2 false @e[name="tnt_stick_scatter"]
execute if predicate tid:random_50 run spreadplayers ~3 ~3 2 2 false @e[name="tnt_stick_scatter"]
execute as @e[name="tnt_stick_scatter"] run data modify entity @s Pos[1] set from entity @e[limit=1,name="tnt_stick_anchor"] Pos[1]

#Rename them so they will be picked up by the generator
execute as @e[name="tnt_stick_scatter"] run data modify entity @s CustomName set value "\"tnt_stick\""

#Kill the anchor
kill @e[name="tnt_stick_anchor"]