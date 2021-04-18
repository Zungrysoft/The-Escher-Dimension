#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:intro/bridge_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~16 ~-119 ~6 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~ ~2 ~3 {Duration:99999999,CustomName:"\"intro_west\""}
summon minecraft:area_effect_cloud ~16 ~2 ~3 {Duration:99999999,CustomName:"\"intro_east\""}

#Remove walls
execute at @s run function tid:dungeon/intro/remove_walls

#Randomize blocks
scoreboard players set xmax value 17
scoreboard players set ymax value 10
scoreboard players set zmax value 7
function tid:dungeon/intro/rng/run_rng

#Pillars
execute positioned ~8 ~ ~2 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~3 run function tid:dungeon/intro/rng/pillar
execute positioned ~8 ~ ~4 run function tid:dungeon/intro/rng/pillar

#Count the room in the total
scoreboard players remove intro_rooms value 1

#We're done here
kill @s
