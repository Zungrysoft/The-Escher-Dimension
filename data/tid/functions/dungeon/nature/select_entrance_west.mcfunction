#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/entrance_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~25 ~137 ~20 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~25 255 ~20 minecraft:oak_planks replace minecraft:black_concrete
fill ~ 255 ~9 ~25 255 ~11 minecraft:stone replace minecraft:oak_planks
fill ~9 255 ~ ~11 255 ~25 minecraft:stone replace minecraft:oak_planks

#Add in the ladder room
execute positioned ~7 ~1 ~7 run function tid:dungeon/nature/select_ladder

#Add the flowers in
scoreboard players set xmax value 26
scoreboard players set zmax value 21
execute positioned ~ ~2 ~ run function tid:dungeon/nature/rng/flower_run_rng

#We're done here
kill @s

