#Pick a structure from this list
setblock ~-11 ~-3 ~-2 minecraft:structure_block{name: "tid:station/stairs_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-11 ~-2 ~-2 minecraft:redstone_block

#Mark this area as generated
fill ~-11 ~125 ~-2 ~-1 ~135 ~2 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

