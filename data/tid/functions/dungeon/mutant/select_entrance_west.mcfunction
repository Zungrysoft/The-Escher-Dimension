#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:mutant/entrance_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~0 ~1 ~0 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~15 ~149 ~12 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~15 255 ~12 minecraft:cyan_concrete replace minecraft:black_concrete
#fill ~ 255 ~8 ~25 255 ~8 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Run the randomizer
scoreboard players set xmax value 16
scoreboard players set ymax value 22
scoreboard players set zmax value 13
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

