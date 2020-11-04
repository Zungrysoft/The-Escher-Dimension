#Pick a structure from this list
execute if score mutant_global value matches 0 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:mutant/medium_1", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score mutant_global value matches 1 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:mutant/medium_2", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score mutant_global value matches 2 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:mutant/medium_3", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score mutant_global value matches 3 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:mutant/medium_4", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~6 ~1 ~6 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~145 ~12 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~12 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~6 255 ~ ~6 255 ~12 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~ 255 ~6 ~12 255 ~6 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~6 ~3 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~6 ~3 ~12 {Duration:99999999,CustomName:"\"mutant_south\""}
summon minecraft:area_effect_cloud ~ ~3 ~6 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~12 ~3 ~6 {Duration:99999999,CustomName:"\"mutant_east\""}

#Carve the floor out
fill ~5 ~ ~5 ~7 ~2 ~7 air

#Carve caves and randomize
scoreboard players set xmax value 13
scoreboard players set ymax value 18
scoreboard players set zmax value 13
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

