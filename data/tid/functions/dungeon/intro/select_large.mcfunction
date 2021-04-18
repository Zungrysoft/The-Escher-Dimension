#Pick a structure from this list
setblock ~ ~1 ~ minecraft:structure_block{name: "tid:intro/large_1", posX: 0, posY: -1, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~2 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~18 ~-114 ~18 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~9 ~2 ~ {Duration:99999999,CustomName:"\"intro_north\"",Tags:["inside","large"]}
summon minecraft:area_effect_cloud ~9 ~2 ~18 {Duration:99999999,CustomName:"\"intro_south\"",Tags:["inside","large"]}
summon minecraft:area_effect_cloud ~ ~2 ~9 {Duration:99999999,CustomName:"\"intro_west\"",Tags:["inside","large"]}
summon minecraft:area_effect_cloud ~18 ~2 ~9 {Duration:99999999,CustomName:"\"intro_east\"",Tags:["inside","large"]}

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 19
scoreboard players set ymax value 15
scoreboard players set zmax value 19
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~1 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~7 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~10 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~11 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~12 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~13 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~14 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~15 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~16 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~17 ~ ~9 run function tid:dungeon/intro/rng/pillar

execute positioned ~9 ~ ~1 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~3 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~7 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~10 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~11 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~12 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~13 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~14 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~15 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~16 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~17 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players remove intro_rooms value 1
scoreboard players remove intro_large_rooms value 1

#We're done here
kill @s
