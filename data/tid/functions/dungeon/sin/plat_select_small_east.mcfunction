#Pick a structure from this list
setblock ~1 ~-1 ~-7 minecraft:structure_block{name: "tid:sin/plat_small_square", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~0 ~-7 minecraft:redstone_block

#Mark this area as generated
fill ~1 ~-129 ~-7 ~15 ~-125 ~7 minecraft:yellow_wool

#Count the room in the total
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

