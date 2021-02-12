#Pick a structure from this list
setblock ~ ~6 ~ minecraft:structure_block{name: "tid:sin/chambers/open", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~7 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-122 ~ ~30 ~-118 ~30 minecraft:blue_wool

#Finish the room
execute positioned ~ ~10 ~ run function tid:misc/sin_chambers_open_ceiling
execute positioned ~15 ~6 ~15 run function tid:misc/sin_chambers_tombs

#Randomize blocks in the room
scoreboard players set xmax value 31
scoreboard players set ymax value 5
scoreboard players set zmax value 31
execute positioned ~ ~6 ~ run function tid:dungeon/sin/chambers/rng/run_rng

#Count the room in the total
scoreboard players remove sin_chambers_rooms value 1

#We're done here
kill @s
