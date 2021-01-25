#Check for cracked nether bricks to see if we should be generating a small door instead
scoreboard players set temp value 0
execute at @s if block ~ ~-1 ~ cracked_nether_bricks run scoreboard players set temp value 1

#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_stairs_short_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_stairs_short_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/tall_stairs_short_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~1 ~5 ~139 ~5 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~6 minecraft:stone_bricks replace minecraft:black_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~3 ~2 ~ {Duration:99999999,CustomName:"\"infernal_tower_tall_north\""}
summon minecraft:area_effect_cloud ~3 ~2 ~6 {Duration:99999999,CustomName:"\"infernal_tower_tall_south\""}
summon minecraft:area_effect_cloud ~ ~2 ~3 {Duration:99999999,CustomName:"\"infernal_tower_tall_west\""}
summon minecraft:area_effect_cloud ~6 ~2 ~3 {Duration:99999999,CustomName:"\"infernal_tower_tall_east\""}
execute run summon minecraft:area_effect_cloud ~3 ~9 ~ {Duration:99999999,CustomName:"\"infernal_tower_short_north\""}
execute run summon minecraft:area_effect_cloud ~3 ~9 ~6 {Duration:99999999,CustomName:"\"infernal_tower_short_south\""}
execute run summon minecraft:area_effect_cloud ~ ~9 ~3 {Duration:99999999,CustomName:"\"infernal_tower_short_west\""}
execute run summon minecraft:area_effect_cloud ~6 ~9 ~3 {Duration:99999999,CustomName:"\"infernal_tower_short_east\""}

#Open the wall up to the adjacent room
execute if score temp value matches 1 at @s run setblock ~ ~-1 ~ cracked_nether_bricks
execute at @s run function tid:dungeon/infernal/tower/open_room

#Add marker and run update_coords on it
summon minecraft:area_effect_cloud ~3 ~3 ~3 {Duration:99999999,CustomName:"\"tower_marker\""}
execute positioned ~3 ~3 ~3 as @e[type=area_effect_cloud,name="tower_marker",distance=0..2,limit=1] run function tid:update_coords

#Randomize
scoreboard players set xmax value 7
scoreboard players set ymax value 13
scoreboard players set zmax value 7
function tid:dungeon/infernal/rng/run_rng

#Count the room in the total
scoreboard players remove infernal_rooms value 1

#We're done here
kill @s
