#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/bridge_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~2 ~-123 ~9 air

#Open doorway
execute at @s run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air

clone ~ ~-129 ~ ~2 ~-173 ~1 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~2 ~-45 ~1 quartz_bricks replace orange_wool
clone ~ ~-174 ~ ~2 ~-218 ~1 ~ ~-90 ~ masked
fill ~ ~-1 ~ ~2 ~-90 ~1 quartz_bricks replace orange_wool

clone ~ ~-129 ~8 ~2 ~-173 ~9 ~ ~-45 ~8 masked
fill ~ ~-1 ~8 ~2 ~-45 ~9 quartz_bricks replace orange_wool
clone ~ ~-174 ~8 ~2 ~-218 ~9 ~ ~-90 ~8 masked
fill ~ ~-1 ~8 ~2 ~-90 ~9 quartz_bricks replace orange_wool

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#We're done here
#kill @s

