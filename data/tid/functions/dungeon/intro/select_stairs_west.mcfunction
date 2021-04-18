#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:intro/stairs_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~10 ~-116 ~4 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~10 ~2 ~2 {Duration:99999999,CustomName:"\"intro_east\"",Tags:["stairs"]}

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 11
scoreboard players set ymax value 13
scoreboard players set zmax value 5
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~1 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~2 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~5 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~6 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~7 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~9 ~ ~2 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players remove intro_rooms value 1

#We're done here
kill @s
