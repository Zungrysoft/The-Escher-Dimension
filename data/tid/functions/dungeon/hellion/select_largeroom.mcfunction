#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/largeroom_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~10 ~-124 ~10 air
fill ~2 ~-123 ~2 ~8 ~-119 ~8 air

#Build Doors
execute if block ~5 ~1 ~-1 air unless block ~5 ~ ~-1 air unless block ~5 ~1 ~ air run setblock ~5 ~1 ~ crimson_door[facing=north,half=lower]
execute if block ~5 ~1 ~-1 air unless block ~5 ~ ~-1 air unless block ~5 ~1 ~ air run setblock ~5 ~2 ~ crimson_door[facing=north,half=upper]

execute if block ~5 ~1 ~11 air unless block ~5 ~ ~11 air unless block ~5 ~1 ~10 air run setblock ~5 ~1 ~10 crimson_door[facing=south,half=lower]
execute if block ~5 ~1 ~11 air unless block ~5 ~ ~11 air unless block ~5 ~1 ~10 air run setblock ~5 ~2 ~10 crimson_door[facing=south,half=upper]

execute if block ~-1 ~1 ~5 air unless block ~-1 ~ ~5 air unless block ~ ~1 ~5 air run setblock ~ ~1 ~5 crimson_door[facing=west,half=lower]
execute if block ~-1 ~1 ~5 air unless block ~-1 ~ ~5 air unless block ~ ~1 ~5 air run setblock ~ ~2 ~5 crimson_door[facing=west,half=upper]

execute if block ~11 ~1 ~5 air unless block ~11 ~ ~5 air unless block ~10 ~1 ~5 air run setblock ~10 ~1 ~5 crimson_door[facing=east,half=lower]
execute if block ~11 ~1 ~5 air unless block ~11 ~ ~5 air unless block ~10 ~1 ~5 air run setblock ~10 ~2 ~5 crimson_door[facing=east,half=upper]

#Merge rooms
execute positioned ~5 ~1 ~5 positioned ~ ~ ~6 if block ~ ~3 ~ quartz_pillar run fill ~-2 ~ ~ ~2 ~2 ~-1 air
execute positioned ~5 ~1 ~5 positioned ~ ~ ~-6 if block ~ ~3 ~ quartz_pillar run fill ~-2 ~ ~ ~2 ~2 ~1 air
execute positioned ~5 ~1 ~5 positioned ~6 ~ ~ if block ~ ~3 ~ quartz_pillar run fill ~ ~ ~-2 ~-1 ~2 ~2 air
execute positioned ~5 ~1 ~5 positioned ~-6 ~ ~ if block ~ ~3 ~ quartz_pillar run fill ~ ~ ~-2 ~1 ~2 ~2 air

#Pillars
clone ~ ~-129 ~ ~10 ~-173 ~10 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~10 ~-45 ~10 quartz_bricks replace orange_wool
clone ~ ~-174 ~ ~10 ~-218 ~10 ~ ~-90 ~ masked
fill ~ ~-1 ~ ~10 ~-90 ~10 quartz_bricks replace orange_wool

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#We're done here
kill @s

