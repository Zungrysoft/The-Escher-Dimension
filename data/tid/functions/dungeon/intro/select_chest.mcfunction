#Pick a structure from this list
setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:intro/chest", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~2 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-121 ~4 minecraft:blue_wool

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 5
scoreboard players set ymax value 8
scoreboard players set zmax value 5
function tid:dungeon/intro/rng/run_rng

#Place lanterns
execute if entity @s[name="intro_north"] run setblock ~ ~7 ~ soul_lantern
execute if entity @s[name="intro_north"] run setblock ~4 ~7 ~ soul_lantern

execute if entity @s[name="intro_south"] run setblock ~ ~7 ~4 soul_lantern
execute if entity @s[name="intro_south"] run setblock ~4 ~7 ~4 soul_lantern

execute if entity @s[name="intro_west"] run setblock ~ ~7 ~ soul_lantern
execute if entity @s[name="intro_west"] run setblock ~ ~7 ~4 soul_lantern

execute if entity @s[name="intro_east"] run setblock ~4 ~7 ~ soul_lantern
execute if entity @s[name="intro_east"] run setblock ~4 ~7 ~4 soul_lantern

#Place the chest
execute if entity @s[name="intro_north"] run setblock ~2 ~6 ~2 chest[facing=south]{LootTable: "tid:chests/intro"}
execute if entity @s[name="intro_south"] run setblock ~2 ~6 ~2 chest[facing=north]{LootTable: "tid:chests/intro"}
execute if entity @s[name="intro_west"] run setblock ~2 ~6 ~2 chest[facing=east]{LootTable: "tid:chests/intro"}
execute if entity @s[name="intro_east"] run setblock ~2 ~6 ~2 chest[facing=west]{LootTable: "tid:chests/intro"}

#We're done here
kill @s
