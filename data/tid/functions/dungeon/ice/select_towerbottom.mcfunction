#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:ice/towerbottom", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~9 ~132 ~9 minecraft:blue_wool

#Summon pillar generator
summon minecraft:area_effect_cloud ~6 ~-1 ~ {Duration:99999999,CustomName:"\"ice_pillar\""}

#Place snow
execute positioned ~1 ~4 ~1 run function tid:misc/ice_snow_pile

#Surround in ice
fill ~-1 ~-1 ~-1 ~10 ~5 ~10 packed_ice replace stone

#Carve caves and randomize
scoreboard players set xmax value 10
scoreboard players set ymax value 5
scoreboard players set zmax value 10
function tid:dungeon/ice/rng/run_rng

#Count the room in the total
scoreboard players remove ice_rooms value 1

#We're done here
kill @s
