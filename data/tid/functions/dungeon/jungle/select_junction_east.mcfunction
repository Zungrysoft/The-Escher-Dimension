#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_60 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_40 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_turn_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_turn_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/junction_tee_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-122 ~4 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Remove torches
execute if predicate tid:random_90 positioned ~2 ~3 ~ if block ~ ~ ~ torch run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~ ~3 ~2 if block ~ ~ ~ torch run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~2 ~3 ~4 if block ~ ~ ~ torch run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~4 ~3 ~2 if block ~ ~ ~ torch run setblock ~ ~ ~ air

#Pillars
clone ~ ~-129 ~ ~4 ~-173 ~4 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~4 ~-45 ~4 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~4 ~-218 ~4 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~4 ~-90 ~4 mossy_cobblestone replace orange_wool

#Run the randomizer
scoreboard players set xmax value 7
scoreboard players set zmax value 7
scoreboard players set ymax value 8
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng

#We're done here
kill @s

