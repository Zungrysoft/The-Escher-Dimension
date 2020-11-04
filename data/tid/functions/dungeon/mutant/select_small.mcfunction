#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_5", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_8", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_9", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_11", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_12", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_13", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_14", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_15", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Unstackable structures
execute if predicate tid:random_08 unless entity @s[name="mutant_up"] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_4", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 unless entity @s[name="mutant_up"] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_6", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 unless entity @s[name="mutant_up"] run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_7", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:mutant/small_10", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~10 ~135 ~10 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~10 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~5 255 ~ ~5 255 ~10 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~ 255 ~5 ~10 255 ~5 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~5 ~3 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~5 ~3 ~10 {Duration:99999999,CustomName:"\"mutant_south\""}
summon minecraft:area_effect_cloud ~ ~3 ~5 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~10 ~3 ~5 {Duration:99999999,CustomName:"\"mutant_east\""}
summon minecraft:area_effect_cloud ~5 ~7 ~5 {Duration:99999999,CustomName:"\"mutant_up\""}

#Carve the floor out
execute if entity @s[name="mutant_up"] run fill ~4 ~ ~4 ~6 ~2 ~6 air

#Carve caves and randomize
scoreboard players set xmax value 11
scoreboard players set ymax value 9
scoreboard players set zmax value 11
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

