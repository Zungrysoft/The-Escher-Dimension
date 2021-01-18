#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/dock/straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~ ~7 ~134 ~5 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~8 255 ~5 minecraft:stone_bricks replace minecraft:black_concrete

#Reserve the space between the pieces
execute at @s run fill ~-2 ~127 ~-2 ~2 ~133 ~2 blue_wool

#Randomize
scoreboard players set xmax value 9
scoreboard players set ymax value 7
scoreboard players set zmax value 6
function tid:dungeon/infernal/rng/run_rng

#Count the room in the total
scoreboard players remove infernal_rooms value 1

#We're done here
kill @s
