#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/jail_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~10 ~133 ~8 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~8 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~10 255 ~8 minecraft:stone replace minecraft:bricks
fill ~ 255 ~6 ~10 255 ~6 minecraft:light_gray_concrete replace minecraft:stone

# Random doorways inside the cells
scoreboard players set door1 value 0
execute if predicate tid:random_10 run scoreboard players set door1 value 1
execute if score door1 value matches 1 run setblock ~3 ~1 ~ air
execute if score door1 value matches 1 if predicate tid:random_50 run setblock ~3 ~2 ~ air
execute if score door1 value matches 1 if predicate tid:random_50 run setblock ~4 ~1 ~ air
execute if score door1 value matches 1 if predicate tid:random_50 run setblock ~2 ~1 ~ air
execute if score door1 value matches 1 if predicate tid:random_20 run setblock ~2 ~2 ~ air
execute if score door1 value matches 1 run summon minecraft:area_effect_cloud ~3 ~1 ~ {Duration:99999999,CustomName:"\"stronghold2_north\""}

scoreboard players set door2 value 0
execute if predicate tid:random_10 run scoreboard players set door2 value 1
execute if score door2 value matches 1 run setblock ~8 ~1 ~ air
execute if score door2 value matches 1 if predicate tid:random_50 run setblock ~8 ~2 ~ air
execute if score door2 value matches 1 if predicate tid:random_50 run setblock ~9 ~1 ~ air
execute if score door2 value matches 1 if predicate tid:random_50 run setblock ~7 ~1 ~ air
execute if score door2 value matches 1 if predicate tid:random_20 run setblock ~7 ~2 ~ air
execute if score door2 value matches 1 run summon minecraft:area_effect_cloud ~8 ~1 ~ {Duration:99999999,CustomName:"\"stronghold2_north\""}

#Randomize blocks
scoreboard players set xmax value 11
scoreboard players set ymax value 6
scoreboard players set zmax value 9
function tid:dungeon/stronghold2/rng/run_rng

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

