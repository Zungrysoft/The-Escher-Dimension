#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 unless entity @s[name="mutant_up"] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_4", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_5", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_6", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_7", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/tall_8", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~6 ~143 ~6 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~6 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~3 255 ~ ~3 255 ~6 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~ 255 ~3 ~6 255 ~3 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~3 ~3 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~3 ~3 ~6 {Duration:99999999,CustomName:"\"mutant_south\""}
summon minecraft:area_effect_cloud ~ ~3 ~3 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~6 ~3 ~3 {Duration:99999999,CustomName:"\"mutant_east\""}
summon minecraft:area_effect_cloud ~3 ~15 ~3 {Duration:99999999,CustomName:"\"mutant_up\""}

#Carve the floor out
execute if entity @s[name="mutant_up"] run fill ~2 ~ ~2 ~4 ~2 ~4 air

#Carve caves and randomize
scoreboard players set xmax value 7
scoreboard players set ymax value 17
scoreboard players set zmax value 7
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

