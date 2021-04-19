#Pick a structure from this list
setblock ~ ~1 ~ minecraft:structure_block{name: "tid:ice/arena", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~2 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~25 ~138 ~25 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~25 255 ~25 minecraft:light_blue_concrete replace minecraft:black_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~12 ~3 ~ {Duration:99999999,CustomName:"\"ice_north\""}
summon minecraft:area_effect_cloud ~12 ~3 ~25 {Duration:99999999,CustomName:"\"ice_south\""}
summon minecraft:area_effect_cloud ~ ~3 ~12 {Duration:99999999,CustomName:"\"ice_west\""}
summon minecraft:area_effect_cloud ~25 ~3 ~12 {Duration:99999999,CustomName:"\"ice_east\""}

#Generate the arena totems
execute positioned ~12 ~3 ~12 run function tid:misc/ice_arena_totems

#Surround in ice
fill ~-1 ~1 ~-1 ~26 ~11 ~26 packed_ice replace stone

#Carve caves and randomize
scoreboard players set xmax value 26
scoreboard players set ymax value 11
scoreboard players set zmax value 26
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/carve/run
function tid:dungeon/ice/rng/run_rng

#Summon marker entity for spacing
summon minecraft:area_effect_cloud ~12 ~3 ~12 {Duration:99999999,CustomName:"\"ice_arena_marker\""}

#Count the room in the total
scoreboard players remove ice_rooms value 1

#We're done here
kill @s
