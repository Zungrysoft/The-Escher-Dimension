#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/ladder_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-117 ~6 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Remove torches
execute if predicate tid:random_90 positioned ~1 ~3 ~3 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~3 ~3 ~3 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~ ~11 ~5 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~4 ~11 ~5 run setblock ~ ~ ~ air

#Pillars
clone ~ ~-129 ~ ~4 ~-173 ~6 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~4 ~-45 ~6 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~4 ~-218 ~6 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~4 ~-90 ~6 mossy_cobblestone replace orange_wool

#Run the randomizer
scoreboard players set xmax value 7
scoreboard players set zmax value 9
scoreboard players set ymax value 14
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng

#We're done here
kill @s

