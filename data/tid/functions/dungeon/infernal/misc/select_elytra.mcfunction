#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/misc/elytra", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~18 ~148 ~18 minecraft:blue_wool

#Remove some of the glass
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~7 ~ ~3 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~7 ~ ~5 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~7 ~ ~-3 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~7 ~ ~-5 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-7 ~ ~3 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-7 ~ ~5 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-7 ~ ~-3 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-7 ~ ~-5 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~3 ~ ~7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~5 ~ ~7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-3 ~ ~7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-5 ~ ~7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~3 ~ ~-7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~5 ~ ~-7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-3 ~ ~-7 air
execute if predicate tid:random_25 positioned ~9 ~15 ~9 run setblock ~-5 ~ ~-7 air

#Mark it on the map
execute positioned ~9 ~ ~9 run function tid:misc/infernal_mark_chest_elytra

#Count the number of elytras generated
scoreboard players remove elytras value 1
