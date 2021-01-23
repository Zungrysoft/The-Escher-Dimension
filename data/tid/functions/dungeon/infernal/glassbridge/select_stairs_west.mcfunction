#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/glassbridge/stairs_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~15 ~152 ~8 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~15 255 ~8 minecraft:nether_bricks replace minecraft:black_concrete

#Add marker to prevent more of this structure from generating
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"glassbridge_stairs_west_marker\""}

#Add pillars
execute positioned ~ ~-1 ~1 run function tid:dungeon/infernal/glassbridge/pillar_west
execute positioned ~13 ~-1 ~1 run function tid:dungeon/infernal/glassbridge/pillar_east

#We're done here
kill @s
