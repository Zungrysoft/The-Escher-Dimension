#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:intro/small_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~10 ~-120 ~10 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~5 ~2 ~ {Duration:99999999,CustomName:"\"intro_north\"",Tags:["inside"]}
summon minecraft:area_effect_cloud ~5 ~2 ~10 {Duration:99999999,CustomName:"\"intro_south\"",Tags:["inside"]}
summon minecraft:area_effect_cloud ~ ~2 ~5 {Duration:99999999,CustomName:"\"intro_west\"",Tags:["inside"]}
summon minecraft:area_effect_cloud ~10 ~2 ~5 {Duration:99999999,CustomName:"\"intro_east\"",Tags:["inside"]}

#Summon marker
summon minecraft:area_effect_cloud ~5 ~2 ~5 {Duration:99999999,CustomName:"\"intro_marker\""}

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 11
scoreboard players set ymax value 9
scoreboard players set zmax value 11
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~1 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~7 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~5 run function tid:dungeon/intro/rng/pillar

execute positioned ~5 ~ ~1 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~3 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~7 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~9 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players remove intro_rooms value 1

#We're done here
kill @s
