#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/short_small_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tower/short_small_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~1 ~5 ~131 ~5 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~5 255 ~5 minecraft:stone_bricks replace minecraft:black_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~3 ~1 ~ {Duration:99999999,CustomName:"\"infernal_tower_short_north\""}
summon minecraft:area_effect_cloud ~3 ~1 ~6 {Duration:99999999,CustomName:"\"infernal_tower_short_south\""}
summon minecraft:area_effect_cloud ~ ~1 ~3 {Duration:99999999,CustomName:"\"infernal_tower_short_west\""}
summon minecraft:area_effect_cloud ~6 ~1 ~3 {Duration:99999999,CustomName:"\"infernal_tower_short_east\""}

#Randomize
scoreboard players set xmax value 7
scoreboard players set ymax value 5
scoreboard players set zmax value 7
function tid:dungeon/infernal/rng/run_rng

#Count the room in the total
scoreboard players remove infernal_rooms value 1

#We're done here
kill @s
say SELECT