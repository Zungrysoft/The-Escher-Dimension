#Pick a structure from this list
setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_north_1", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_north_2", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_north_3", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~2 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~132 ~16 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~16 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~2 255 ~ ~2 255 ~16 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~2 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~2 ~2 ~16 {Duration:99999999,CustomName:"\"mutant_south\""}

#Carve caves and randomize
scoreboard players set xmax value 5
scoreboard players set ymax value 5
scoreboard players set zmax value 17
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s
