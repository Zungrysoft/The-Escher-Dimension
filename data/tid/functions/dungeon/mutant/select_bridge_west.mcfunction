#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp value %= calc value

#Pick a structure from this list
setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_west_1", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0..1 run setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_west_2", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 2 run setblock ~1 ~1 ~1 minecraft:structure_block{name: "tid:mutant/bridge_west_3", posX: -1, posY: -1, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~2 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~16 ~132 ~4 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~16 255 ~4 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~ 255 ~2 ~16 255 ~2 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~ ~2 ~2 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~16 ~2 ~2 {Duration:99999999,CustomName:"\"mutant_east\""}

#Carve caves and randomize
scoreboard players set xmax value 17
scoreboard players set ymax value 5
scoreboard players set zmax value 5
function tid:dungeon/mutant/carve/run
function tid:dungeon/mutant/rng/run_rng

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s
