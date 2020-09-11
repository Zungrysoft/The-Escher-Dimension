#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/totem_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/totem_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/totem_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~8 ~-113 ~8 air
fill ~2 ~-112 ~1 ~6 ~-112 ~7 air
fill ~1 ~-112 ~2 ~7 ~-112 ~6 air

#Open doorway
execute at @s run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air

#Pillars
clone ~ ~-129 ~ ~8 ~-173 ~8 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~8 ~-45 ~8 quartz_bricks replace orange_wool
clone ~ ~-174 ~ ~8 ~-218 ~8 ~ ~-90 ~ masked
fill ~ ~-1 ~ ~8 ~-90 ~8 quartz_bricks replace orange_wool

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#We're done here
kill @s

