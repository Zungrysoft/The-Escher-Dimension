#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/bridge_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~12 ~-120 ~4 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Remove torches
execute if predicate tid:random_90 positioned ~2 ~5 ~ run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~6 ~5 ~ run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~10 ~5 ~ run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~2 ~5 ~4 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~6 ~5 ~4 run setblock ~ ~ ~ air
execute if predicate tid:random_90 positioned ~10 ~5 ~4 run setblock ~ ~ ~ air

#Pillars
clone ~ ~-129 ~ ~1 ~-173 ~4 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~1 ~-45 ~4 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~1 ~-218 ~4 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~1 ~-90 ~4 mossy_cobblestone replace orange_wool

clone ~11 ~-129 ~ ~12 ~-173 ~4 ~11 ~-45 ~ masked
fill ~11 ~-1 ~ ~12 ~-45 ~4 mossy_cobblestone replace orange_wool
clone ~11 ~-174 ~ ~12 ~-218 ~4 ~11 ~-90 ~ masked
fill ~11 ~-46 ~ ~12 ~-90 ~4 mossy_cobblestone replace orange_wool

#Run the randomizer
#Pillars
scoreboard players set xmax value 4
scoreboard players set zmax value 7
scoreboard players set ymax value 0
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng
scoreboard players set ymax value 0
execute positioned ~10 149 ~-1 run function tid:dungeon/jungle/rng/run_rng
#Base
scoreboard players set xmax value 15
scoreboard players set zmax value 7
scoreboard players set ymax value 10
execute positioned ~-1 ~-1 ~-1 run function tid:dungeon/jungle/rng/run_rng_nopillar

#We're done here
kill @s

