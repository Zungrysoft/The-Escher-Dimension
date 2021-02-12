#Pick a structure from this list
setblock ~7 ~ ~7 minecraft:structure_block{name: "tid:sin/chambers/tier_room", posX: -7, posY: 0, posZ: -7, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~7 ~1 ~7 minecraft:redstone_block

#Mark this area as generated
fill ~4 ~-128 ~4 ~10 ~-121 ~10 minecraft:blue_wool
fill ~2 ~-120 ~2 ~12 ~-113 ~12 minecraft:blue_wool
fill ~0 ~-112 ~0 ~14 ~-106 ~14 minecraft:blue_wool

#Add in the lava islands
execute positioned ~5 ~1 ~5 run function tid:misc/sin_chambers_lava_islands

#Randomize blocks in the room
scoreboard players set xmax value 15
scoreboard players set ymax value 23
scoreboard players set zmax value 15
function tid:dungeon/sin/chambers/rng/run_rng

#Count the room in the total
scoreboard players remove sin_chambers_rooms value 1

#We're done here
kill @s
