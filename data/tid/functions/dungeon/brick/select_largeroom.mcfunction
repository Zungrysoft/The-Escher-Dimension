#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:brick/largeroom_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area on the map
fill ~ 255 ~ ~28 255 ~21 bricks replace black_concrete

#Mark this area as generated
fill ~1 ~129 ~1 ~27 ~147 ~20 minecraft:blue_wool

#Add the entrance to the room
execute at @s run function tid:dungeon/brick/make_entrance

#Count the room in the total
scoreboard players remove brick_rooms value 1

#We're done here
kill @s
