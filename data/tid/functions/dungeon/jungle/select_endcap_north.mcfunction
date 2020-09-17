#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/endcap_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-122 ~2 air

#Pillars
clone ~ ~-129 ~ ~4 ~-173 ~2 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~4 ~-45 ~2 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~4 ~-218 ~2 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~4 ~-90 ~2 mossy_cobblestone replace orange_wool

#Run the randomizer
scoreboard players set xmax value 7
scoreboard players set zmax value 5
scoreboard players set ymax value 8
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng

#We're done here
kill @s

