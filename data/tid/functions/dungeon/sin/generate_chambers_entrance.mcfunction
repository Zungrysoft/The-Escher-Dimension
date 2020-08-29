setblock ~-2 ~-23 ~-2 minecraft:structure_block{name: "tid:sin/chambers/entrance", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-2 ~-22 ~-2 minecraft:redstone_block

#Mark this area as generated
fill ~-2 ~-151 ~-2 ~2 ~-125 ~2 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="sin_chambers_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

