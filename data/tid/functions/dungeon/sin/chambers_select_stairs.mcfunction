#Update Coordinates
function tid:update_coords

#Pick a structure from this list
execute if score @s y matches 161.. run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/stairs", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Broken
execute if score @s y matches ..160 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/stairs_broken", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~6 ~-119 ~6 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="sin_chambers_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s
