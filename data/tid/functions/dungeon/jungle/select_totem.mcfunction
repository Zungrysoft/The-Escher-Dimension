#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_8", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_4", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_5", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_6", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:jungle/totem_7", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~2 ~-128 ~ ~8 ~-121 ~10 air
fill ~ ~-128 ~2 ~10 ~-121 ~8 air
fill ~1 ~-128 ~1 ~9 ~-121 ~9 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Remove torches
execute if predicate tid:random_70 positioned ~1 ~4 ~1 run setblock ~ ~ ~ air
execute if predicate tid:random_70 positioned ~1 ~4 ~9 run setblock ~ ~ ~ air
execute if predicate tid:random_70 positioned ~9 ~4 ~1 run setblock ~ ~ ~ air
execute if predicate tid:random_70 positioned ~9 ~4 ~9 run setblock ~ ~ ~ air

#Pillars
clone ~2 ~-129 ~ ~8 ~-173 ~10 ~2 ~-45 ~ masked
fill ~2 ~-1 ~ ~8 ~-45 ~10 mossy_cobblestone replace orange_wool
clone ~2 ~-174 ~ ~8 ~-218 ~10 ~2 ~-90 ~ masked
fill ~2 ~-46 ~ ~8 ~-90 ~10 mossy_cobblestone replace orange_wool

clone ~ ~-129 ~2 ~1 ~-173 ~8 ~ ~-45 ~2 masked
fill ~ ~-1 ~2 ~1 ~-45 ~8 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~2 ~1 ~-218 ~8 ~ ~-90 ~2 masked
fill ~ ~-46 ~2 ~1 ~-90 ~8 mossy_cobblestone replace orange_wool

clone ~9 ~-129 ~2 ~10 ~-173 ~8 ~9 ~-45 ~2 masked
fill ~9 ~-1 ~2 ~10 ~-45 ~8 mossy_cobblestone replace orange_wool
clone ~9 ~-174 ~2 ~10 ~-218 ~8 ~9 ~-90 ~2 masked
fill ~9 ~-46 ~2 ~10 ~-90 ~8 mossy_cobblestone replace orange_wool

#Run the randomizer
scoreboard players set xmax value 13
scoreboard players set zmax value 13
scoreboard players set ymax value 9
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng

#We're done here
kill @s

