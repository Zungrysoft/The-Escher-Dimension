#Wearer cannot sprint while wearing this item
scoreboard players set should_slow value 0
execute if score @s sprint matches 1.. if entity @s[predicate=tid:item/no_sprint] run scoreboard players set should_slow value 1
execute unless score should_slow value matches 1 run attribute @s minecraft:generic.movement_speed modifier remove 08a992aa-5589-4890-b005-ba30059af36b
execute if score should_slow value matches 1 run attribute @s minecraft:generic.movement_speed modifier add 08a992aa-5589-4890-b005-ba30059af36b nosprint -0.23 multiply
scoreboard players reset @s sprint
