#Check for cracked nether bricks to see if we should be generating a small door instead
scoreboard players set temp value 0
execute at @s if block ~ ~-1 ~ cracked_nether_bricks run scoreboard players set temp value 1

#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_80 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_01 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_10", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_11", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_medium_12", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~1 ~11 ~135 ~11 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~12 minecraft:stone_bricks replace minecraft:black_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~3 ~2 ~ {Duration:99999999,CustomName:"\"infernal_tower_tall_north\""}
summon minecraft:area_effect_cloud ~6 ~2 ~ {Duration:99999999,CustomName:"\"infernal_tower_tall_north\""}
summon minecraft:area_effect_cloud ~9 ~2 ~ {Duration:99999999,CustomName:"\"infernal_tower_tall_north\""}
summon minecraft:area_effect_cloud ~3 ~2 ~12 {Duration:99999999,CustomName:"\"infernal_tower_tall_south\""}
summon minecraft:area_effect_cloud ~6 ~2 ~12 {Duration:99999999,CustomName:"\"infernal_tower_tall_south\""}
summon minecraft:area_effect_cloud ~9 ~2 ~12 {Duration:99999999,CustomName:"\"infernal_tower_tall_south\""}
summon minecraft:area_effect_cloud ~ ~2 ~3 {Duration:99999999,CustomName:"\"infernal_tower_tall_west\""}
summon minecraft:area_effect_cloud ~ ~2 ~6 {Duration:99999999,CustomName:"\"infernal_tower_tall_west\""}
summon minecraft:area_effect_cloud ~ ~2 ~9 {Duration:99999999,CustomName:"\"infernal_tower_tall_west\""}
summon minecraft:area_effect_cloud ~12 ~2 ~3 {Duration:99999999,CustomName:"\"infernal_tower_tall_east\""}
summon minecraft:area_effect_cloud ~12 ~2 ~6 {Duration:99999999,CustomName:"\"infernal_tower_tall_east\""}
summon minecraft:area_effect_cloud ~12 ~2 ~9 {Duration:99999999,CustomName:"\"infernal_tower_tall_east\""}

#Open the wall up to the adjacent room
execute if score temp value matches 1 at @s run setblock ~ ~-1 ~ cracked_nether_bricks
execute at @s run function tid:dungeon/infernal/tower/open_room

#Build pillars beneath this room
execute positioned ~2 ~-1 ~2 run function tid:misc/infernal_tower_pillar
execute positioned ~2 ~-1 ~10 run function tid:misc/infernal_tower_pillar
execute positioned ~10 ~-1 ~2 run function tid:misc/infernal_tower_pillar
execute positioned ~10 ~-1 ~10 run function tid:misc/infernal_tower_pillar

#Randomize
scoreboard players set xmax value 13
scoreboard players set ymax value 9
scoreboard players set zmax value 13
function tid:dungeon/infernal/rng/run_rng

#Count the room in the total
scoreboard players remove infernal_rooms value 1

#We're done here
kill @s
