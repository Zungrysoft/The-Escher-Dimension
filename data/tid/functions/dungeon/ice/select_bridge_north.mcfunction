#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/platform", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~3 ~130 ~3 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~3 255 ~3 minecraft:light_blue_concrete replace minecraft:black_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~1 ~ ~ {Duration:99999999,CustomName:"\"ice_north\""}
summon minecraft:area_effect_cloud ~1 ~ ~3 {Duration:99999999,CustomName:"\"ice_south\""}
summon minecraft:area_effect_cloud ~ ~ ~1 {Duration:99999999,CustomName:"\"ice_west\""}
summon minecraft:area_effect_cloud ~3 ~ ~1 {Duration:99999999,CustomName:"\"ice_east\""}

#Carve caves and randomize
scoreboard players set xmax value 4
scoreboard players set ymax value 3
scoreboard players set zmax value 4
execute if predicate tid:random_20 run function tid:dungeon/ice/carve/run
#function tid:dungeon/ice/rng/run_rng

#Count the room in the total
scoreboard players remove ice_rooms value 1

#We're done here
kill @s
