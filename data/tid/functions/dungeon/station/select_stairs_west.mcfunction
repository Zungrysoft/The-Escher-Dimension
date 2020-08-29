#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stairs_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~10 ~138 ~4 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~4 minecraft:red_nether_bricks replace minecraft:purple_concrete
fill ~ 255 ~ ~10 255 ~4 minecraft:red_nether_bricks replace minecraft:black_concrete

#Count the room in the total
scoreboard players add @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

