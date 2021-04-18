#Pick a structure from this list
setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:intro/stairs_north", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~2 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-116 ~10 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~2 ~10 {Duration:99999999,CustomName:"\"intro_south\"",Tags:["stairs"]}

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 5
scoreboard players set ymax value 13
scoreboard players set zmax value 11
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~2 ~ ~1 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~3 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~4 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~5 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~6 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~7 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~9 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players remove intro_rooms value 1

#We're done here
kill @s
