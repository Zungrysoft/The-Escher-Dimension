#Pick a structure from this list
setblock ~ ~6 ~ minecraft:structure_block{name: "tid:intro/entrance", posX: 0, posY: -6, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~7 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~16 ~-111 ~30 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~8 ~6 ~ {Duration:99999999,CustomName:"\"intro_north\""}
summon minecraft:area_effect_cloud ~ ~6 ~4 {Duration:99999999,CustomName:"\"intro_west\""}
summon minecraft:area_effect_cloud ~16 ~6 ~4 {Duration:99999999,CustomName:"\"intro_east\""}

#Randomize blocks
scoreboard players set xmax value 17
scoreboard players set ymax value 18
scoreboard players set zmax value 31
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~1 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~7 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~10 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~11 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~12 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~13 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~14 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~15 ~ ~4 run function tid:dungeon/intro/rng/pillar

execute positioned ~1 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~7 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~10 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~11 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~12 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~13 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~14 ~ ~25 run function tid:dungeon/intro/rng/pillar
execute positioned ~15 ~ ~25 run function tid:dungeon/intro/rng/pillar

execute positioned ~8 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~7 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~9 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~10 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~11 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~12 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~13 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~14 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~15 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~16 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~17 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~18 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~19 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~20 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~21 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~22 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~23 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~24 run function tid:dungeon/intro/rng/pillar
