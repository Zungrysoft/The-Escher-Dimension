#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/bridge_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~9 ~-123 ~2 air

#Pillars
clone ~ ~-129 ~ ~1 ~-173 ~2 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~1 ~-45 ~2 quartz_bricks replace orange_wool
clone ~ ~-174 ~ ~1 ~-218 ~2 ~ ~-90 ~ masked
fill ~ ~-1 ~ ~1 ~-90 ~2 quartz_bricks replace orange_wool

clone ~8 ~-129 ~ ~9 ~-173 ~2 ~8 ~-45 ~ masked
fill ~8 ~-1 ~ ~9 ~-45 ~2 quartz_bricks replace orange_wool
clone ~8 ~-174 ~ ~9 ~-218 ~2 ~8 ~-90 ~ masked
fill ~8 ~-1 ~ ~9 ~-90 ~2 quartz_bricks replace orange_wool

#Open doorway
execute at @s run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#We're done here
#kill @s

