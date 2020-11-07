#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Open-side rooms only show up in the (-, ?) half
execute if predicate tid:random_33 if score @s x matches ..0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/room_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~6 ~-124 ~6 air

#Platforms for the (-, +) quadrant
execute if predicate tid:random_20 if score @s x matches ..0 if score @s z matches 0.. run fill ~-2 ~ ~-2 ~3 ~ ~8 quartz_block replace air
execute if predicate tid:random_20 if score @s x matches ..0 if score @s z matches 0.. run fill ~-2 ~ ~-2 ~8 ~ ~3 quartz_block replace air
execute if predicate tid:random_20 if score @s x matches ..0 if score @s z matches 0.. run fill ~8 ~ ~8 ~-2 ~ ~3 quartz_block replace air
execute if predicate tid:random_20 if score @s x matches ..0 if score @s z matches 0.. run fill ~8 ~ ~8 ~3 ~ ~-2 quartz_block replace air

#Build Doors
execute if block ~3 ~1 ~-1 air unless block ~3 ~ ~-1 air unless block ~3 ~1 ~ air run setblock ~3 ~1 ~ crimson_door[facing=north,half=lower]
execute if block ~3 ~1 ~-1 air unless block ~3 ~ ~-1 air unless block ~3 ~1 ~ air run setblock ~3 ~2 ~ crimson_door[facing=north,half=upper]

execute if block ~3 ~1 ~7 air unless block ~3 ~ ~7 air unless block ~3 ~1 ~6 air run setblock ~3 ~1 ~6 crimson_door[facing=south,half=lower]
execute if block ~3 ~1 ~7 air unless block ~3 ~ ~7 air unless block ~3 ~1 ~6 air run setblock ~3 ~2 ~6 crimson_door[facing=south,half=upper]

execute if block ~-1 ~1 ~3 air unless block ~-1 ~ ~3 air unless block ~ ~1 ~3 air run setblock ~ ~1 ~3 crimson_door[facing=west,half=lower]
execute if block ~-1 ~1 ~3 air unless block ~-1 ~ ~3 air unless block ~ ~1 ~3 air run setblock ~ ~2 ~3 crimson_door[facing=west,half=upper]

execute if block ~7 ~1 ~3 air unless block ~7 ~ ~3 air unless block ~6 ~1 ~3 air run setblock ~6 ~1 ~3 crimson_door[facing=east,half=lower]
execute if block ~7 ~1 ~3 air unless block ~7 ~ ~3 air unless block ~6 ~1 ~3 air run setblock ~6 ~2 ~3 crimson_door[facing=east,half=upper]

#Merge rooms
execute positioned ~3 ~1 ~3 positioned ~ ~ ~4 if block ~ ~3 ~ quartz_pillar run fill ~-2 ~ ~ ~2 ~2 ~-1 air
execute positioned ~3 ~1 ~3 positioned ~ ~ ~-4 if block ~ ~3 ~ quartz_pillar run fill ~-2 ~ ~ ~2 ~2 ~1 air
execute positioned ~3 ~1 ~3 positioned ~4 ~ ~ if block ~ ~3 ~ quartz_pillar run fill ~ ~ ~-2 ~-1 ~2 ~2 air
execute positioned ~3 ~1 ~3 positioned ~-4 ~ ~ if block ~ ~3 ~ quartz_pillar run fill ~ ~ ~-2 ~1 ~2 ~2 air

#Pillars
clone ~ ~-129 ~ ~6 ~-173 ~6 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~6 ~-45 ~6 quartz_bricks replace orange_wool
clone ~ ~-174 ~ ~6 ~-218 ~6 ~ ~-90 ~ masked
fill ~ ~-1 ~ ~6 ~-90 ~6 quartz_bricks replace orange_wool

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#We're done here
kill @s

