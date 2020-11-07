#Pick random value
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2

#Determine modulus of y position
execute store result score temp2 value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp2 value %= calc value

#Pick a structure from this list
execute if score temp value matches 0 run setblock ~9 ~ ~9 minecraft:structure_block{name: "tid:mutant/arena_1", posX: -9, posY: 0, posZ: -9, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 1 run setblock ~9 ~ ~9 minecraft:structure_block{name: "tid:mutant/arena_2", posX: -9, posY: 0, posZ: -9, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 2 run setblock ~9 ~ ~9 minecraft:structure_block{name: "tid:mutant/arena_3", posX: -9, posY: 0, posZ: -9, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 3 run setblock ~9 ~ ~9 minecraft:structure_block{name: "tid:mutant/arena_4", posX: -9, posY: 0, posZ: -9, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#The fifth variant can only be picked at certain y levels to match up with the other bridges
execute if score temp value matches 3 if score temp2 value matches 3..6 run setblock ~9 ~ ~9 minecraft:structure_block{name: "tid:mutant/arena_5", posX: -9, posY: 0, posZ: -9, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~9 ~1 ~9 minecraft:redstone_block

#Special arena effects
execute if score temp value matches 0 positioned ~6 ~2 ~6 run function tid:dungeon/mutant/select_totem

#Mark this area as generated
fill ~ ~128 ~ ~18 ~138 ~18 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~18 255 ~18 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~9 255 ~ ~9 255 ~18 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~ 255 ~9 ~18 255 ~9 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Carve caves and randomize
scoreboard players set xmax value 19
scoreboard players set ymax value 11
scoreboard players set zmax value 19
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/rng/run_rng

#Count the number of arenas
scoreboard players add mutant_arenas value 1

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
#kill @s

