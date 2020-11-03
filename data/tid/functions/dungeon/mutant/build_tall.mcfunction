#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 unless entity @s[tag=stacked] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_4", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_5", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_6", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_7", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_8", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Carve the floor out
execute if entity @s[tag=stacked] run fill ~2 ~ ~2 ~4 ~2 ~4 air

#Carve caves
scoreboard players set xmax value 7
scoreboard players set ymax value 17
scoreboard players set zmax value 7
function tid:dungeon/mutant/carve/run
