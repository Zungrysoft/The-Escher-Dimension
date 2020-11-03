#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 unless entity @s[tag=stacked] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_4", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_5", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 unless entity @s[tag=stacked] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_6", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 unless entity @s[tag=stacked] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_7", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Carve the floor out
execute if entity @s[tag=stacked] run fill ~4 ~ ~4 ~6 ~2 ~6 air

#Carve caves
scoreboard players set xmax value 11
scoreboard players set ymax value 9
scoreboard players set zmax value 11
execute positioned ~-2 ~1 ~-2 run function tid:dungeon/mutant/carve/run
