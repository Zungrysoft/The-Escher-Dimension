#Pick a structure from this list
execute if score ice_global value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score ice_global value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score ice_global value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/room_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score ice_global value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/room_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~11 ~134 ~11 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~11 255 ~11 minecraft:light_blue_concrete replace minecraft:black_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~5 ~2 ~ {Duration:99999999,CustomName:"\"ice_north\""}
summon minecraft:area_effect_cloud ~5 ~2 ~11 {Duration:99999999,CustomName:"\"ice_south\""}
summon minecraft:area_effect_cloud ~ ~2 ~5 {Duration:99999999,CustomName:"\"ice_west\""}
summon minecraft:area_effect_cloud ~11 ~2 ~5 {Duration:99999999,CustomName:"\"ice_east\""}

#Ice pillar
execute if score ice_global value matches 1 if predicate tid:random_05 positioned ~5 ~2 ~5 run function tid:misc/ice_stalag_up

#Surround in ice
fill ~-1 ~-1 ~-1 ~12 ~7 ~12 packed_ice replace stone

#Carve caves and randomize
scoreboard players set xmax value 12
scoreboard players set ymax value 7
scoreboard players set zmax value 12
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/rng/run_rng

#Count the room in the total
scoreboard players remove ice_rooms value 1

#We're done here
kill @s
