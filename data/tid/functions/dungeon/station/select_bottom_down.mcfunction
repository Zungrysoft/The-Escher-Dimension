#Pick a structure from this list
setblock ~-7 ~-4 ~-5 minecraft:structure_block{name: "tid:station/stack_bottom", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-7 ~-3 ~-5 minecraft:redstone_block

#Mark this area as generated
fill ~-7 ~124 ~-5 ~7 ~126 ~5 minecraft:blue_wool

#Count the room in the total
scoreboard players remove @e[name="global",type=minecraft:armor_stand,limit=1] tries 1

#We're done here
kill @s

