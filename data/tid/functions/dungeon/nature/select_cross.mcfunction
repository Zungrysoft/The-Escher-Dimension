#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/cross_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/cross_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/cross_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/cross_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/cross_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Totem Room
execute if predicate tid:random_40 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/cross_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~12 minecraft:oak_planks replace minecraft:black_concrete
fill ~6 255 ~ ~6 255 ~12 minecraft:stone replace minecraft:oak_planks
fill ~ 255 ~6 ~12 255 ~6 minecraft:stone replace minecraft:oak_planks

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#If this is a totem room, generate the totem
execute positioned ~6 ~1 ~6 if block ~ ~ ~ cobblestone run function tid:dungeon/nature/select_totem

#Add the flowers in
scoreboard players set xmax value 13
scoreboard players set zmax value 13
execute positioned ~ ~2 ~ run function tid:dungeon/nature/rng/flower_run_rng

#If this is a bee room, spawn bees and randomize the honeycomb
execute if block ~6 ~1 ~6 honeycomb_block positioned ~6 ~3 ~ run function tid:misc/summon_bees
scoreboard players set xmax value 7
scoreboard players set zmax value 6
scoreboard players set ymax value 13
execute if block ~6 ~1 ~6 honeycomb_block positioned ~3 ~1 ~4 run function tid:dungeon/nature/rng/honey_run_rng

#Mark this area as generated
fill ~1 ~128 ~1 ~11 ~142 ~11 minecraft:blue_wool replace minecraft:orange_wool

#Add in doorways
summon minecraft:area_effect_cloud ~6 ~1 ~ {Duration:99999999,CustomName:"\"nature_north\""}
summon minecraft:area_effect_cloud ~6 ~1 ~12 {Duration:99999999,CustomName:"\"nature_south\""}
summon minecraft:area_effect_cloud ~ ~1 ~6 {Duration:99999999,CustomName:"\"nature_west\""}
summon minecraft:area_effect_cloud ~12 ~1 ~6 {Duration:99999999,CustomName:"\"nature_east\""}

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

