#Pick a structure from this list
setblock ~1 ~-5 ~-2 minecraft:structure_block{name: "tid:station/stairs_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~-4 ~-2 minecraft:redstone_block

#Mark this area as generated
fill ~1 ~123 ~-2 ~11 ~133 ~2 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

