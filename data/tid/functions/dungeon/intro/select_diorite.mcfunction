#Pick a structure from this list
setblock ~ ~1 ~ minecraft:structure_block{name: "tid:intro/diorite", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~2 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~12 ~-121 ~12 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~6 ~2 ~ {Duration:99999999,CustomName:"\"intro_north\"",Tags:["inside"]}
summon minecraft:area_effect_cloud ~6 ~2 ~12 {Duration:99999999,CustomName:"\"intro_south\"",Tags:["inside"]}
summon minecraft:area_effect_cloud ~ ~2 ~6 {Duration:99999999,CustomName:"\"intro_west\"",Tags:["inside"]}
summon minecraft:area_effect_cloud ~12 ~2 ~6 {Duration:99999999,CustomName:"\"intro_east\"",Tags:["inside"]}

#Build diorite pile
execute positioned ~6 ~2 ~6 run function tid:misc/intro_diorite

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 13
scoreboard players set ymax value 8
scoreboard players set zmax value 13
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~1 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~7 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~10 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~11 ~ ~6 run function tid:dungeon/intro/rng/pillar

execute positioned ~6 ~ ~1 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~3 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~7 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~10 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~11 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players set intro_rooms value 0

#We're done here
kill @s
