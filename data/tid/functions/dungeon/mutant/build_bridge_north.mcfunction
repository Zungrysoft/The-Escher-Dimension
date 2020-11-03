#Pick a structure from this list
setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_north_1", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/bridge_north_2", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/bridge_north_3", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~2 ~1 minecraft:redstone_block

#Carve caves
scoreboard players set xmax value 5
scoreboard players set ymax value 5
scoreboard players set zmax value 17
function tid:dungeon/mutant/carve/run
