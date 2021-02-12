#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/magma_room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/magma_room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/magma_room_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~18 ~-124 ~18 minecraft:blue_wool

#Randomize blocks in the room
scoreboard players set xmax value 19
scoreboard players set ymax value 5
scoreboard players set zmax value 9
function tid:dungeon/sin/chambers/rng/run_rng

#Summon doorways
summon minecraft:area_effect_cloud ~9 ~1 ~ {Duration:99999999,CustomName:"\"sin_chambers_north\""}
summon minecraft:area_effect_cloud ~9 ~1 ~18 {Duration:99999999,CustomName:"\"sin_chambers_south\""}
summon minecraft:area_effect_cloud ~ ~1 ~9 {Duration:99999999,CustomName:"\"sin_chambers_west\""}
summon minecraft:area_effect_cloud ~18 ~1 ~9 {Duration:99999999,CustomName:"\"sin_chambers_east\""}

#Count the room in the total
scoreboard players remove sin_chambers_rooms value 1

#We're done here
kill @s

