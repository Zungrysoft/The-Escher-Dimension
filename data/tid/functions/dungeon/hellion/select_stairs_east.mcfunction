#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/stairs_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~5 ~-121 ~2 air

#Open doorway
execute at @s run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#Pillars
clone ~ ~-129 ~ ~5 ~-173 ~2 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~5 ~-45 ~2 quartz_bricks replace orange_wool
clone ~ ~-174 ~ ~5 ~-218 ~2 ~ ~-90 ~ masked
fill ~ ~-1 ~ ~5 ~-90 ~2 quartz_bricks replace orange_wool

#We're done here
kill @s

