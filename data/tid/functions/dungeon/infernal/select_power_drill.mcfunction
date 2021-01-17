#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/misc/power_drill", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~26 ~143 ~26 minecraft:blue_wool

#Count the number of drills generated
scoreboard players remove power_drills value 1

#We're done here
kill @s

