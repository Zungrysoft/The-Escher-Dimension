#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/straight_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Generate sidelines
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_60 positioned ~-4 ~ ~ if blocks ~ ~ ~ ~3 ~5 ~6 1033 1 1001 all run function tid:dungeon/neon/select_sideline_west
execute if predicate tid:random_60 positioned ~2 ~ ~ if blocks ~ ~ ~ ~3 ~5 ~6 1033 1 1001 all run function tid:dungeon/neon/select_sideline_east

#Mark this area on the map
fill ~ 255 ~ ~1 255 ~6 minecraft:green_terracotta replace minecraft:purpur_block

#We're done here
kill @s