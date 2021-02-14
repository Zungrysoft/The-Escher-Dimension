#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:brick/tee_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:brick/tee_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
fill ~ 255 ~ ~7 255 ~7 bricks replace black_concrete

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~129 ~1 ~6 ~132 ~6 minecraft:blue_wool

#Count the room in the total
scoreboard players remove brick_rooms value 1

#We're done here
kill @s
