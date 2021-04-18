#Pick a structure from this list
setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:intro/bridge_north", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~2 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~6 ~-119 ~16 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~3 ~2 ~ {Duration:99999999,CustomName:"\"intro_north\""}
summon minecraft:area_effect_cloud ~3 ~2 ~16 {Duration:99999999,CustomName:"\"intro_south\""}

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 7
scoreboard players set ymax value 10
scoreboard players set zmax value 17
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~2 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~3 ~ ~8 run function tid:dungeon/intro/rng/pillar
execute positioned ~4 ~ ~8 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players remove intro_rooms value 1

#We're done here
kill @s
