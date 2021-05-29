#Determine a random number
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

#Pick a structure from this list
execute if score temp value matches 0..1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/end_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0..1 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/end_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 2..4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/end_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 5..6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/end_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/end_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
fill ~ 255 ~ ~16 255 ~16 minecraft:oak_planks replace minecraft:black_concrete
fill ~ 255 ~16 ~16 255 ~16 minecraft:stone replace minecraft:oak_planks
fill ~ 255 ~ ~ 255 ~16 minecraft:stone replace minecraft:oak_planks
fill ~ 255 ~ ~16 255 ~ minecraft:stone replace minecraft:oak_planks
fill ~16 255 ~ ~16 255 ~16 minecraft:stone replace minecraft:oak_planks

#Check for the portal to Hellion Heights
function tid:dungeon/nature/event1_check

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Add the flowers in
scoreboard players set xmax value 15
scoreboard players set zmax value 15
execute if score temp value matches 2..4 positioned ~1 ~2 ~1 run function tid:dungeon/nature/rng/flower_run_rng

#If this is a bee room, spawn bees and randomize the honeycomb
execute if score temp value matches 0..1 positioned ~8 ~3 ~8 run function tid:misc/summon_bees
scoreboard players set ymax value 8
execute if score temp value matches 0..1 positioned ~1 ~1 ~1 run function tid:dungeon/nature/rng/honey_run_rng

#Remove the entrance doorway
execute if entity @s[name="nature_north"] at @s run fill ~-1 ~ ~-1 ~1 ~3 ~-1 air
execute if entity @s[name="nature_south"] at @s run fill ~-1 ~ ~1 ~1 ~3 ~1 air
execute if entity @s[name="nature_west"] at @s run fill ~-1 ~ ~-1 ~-1 ~3 ~1 air
execute if entity @s[name="nature_east"] at @s run fill ~1 ~ ~-1 ~1 ~3 ~1 air

#Mark this area as generated
fill ~ ~128 ~ ~16 ~137 ~16 blue_wool

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

