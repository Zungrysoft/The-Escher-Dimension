#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/glassbridge/straight_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~8 ~143 ~19 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~8 255 ~19 minecraft:nether_bricks replace minecraft:black_concrete

#Add pillars
execute positioned ~1 ~-1 ~ run function tid:dungeon/infernal/glassbridge/pillar_north
execute positioned ~1 ~-1 ~17 run function tid:dungeon/infernal/glassbridge/pillar_south

#Count the room in the total
scoreboard players remove infernal_glassbridge_rooms value 1

#We're done here
kill @s
