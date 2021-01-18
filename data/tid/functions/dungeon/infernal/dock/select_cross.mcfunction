#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/dock/cross_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/dock/cross_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/dock/cross_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~1 ~6 ~136 ~6 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~7 255 ~7 minecraft:stone_bricks replace minecraft:black_concrete

#Reserve the space between the pieces
execute at @s run fill ~-2 ~127 ~-2 ~2 ~133 ~2 blue_wool

#Randomize
scoreboard players set xmax value 8
scoreboard players set ymax value 4
scoreboard players set zmax value 8
function tid:dungeon/infernal/rng/run_rng

#Add a dock marker
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"dock_marker\""}

#Count the room in the total
scoreboard players remove infernal_rooms value 1

#We're done here
kill @s
