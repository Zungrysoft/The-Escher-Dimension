#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/jail_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~8 ~133 ~10 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~8 255 ~10 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~8 255 ~10 minecraft:stone replace minecraft:bricks
fill ~6 255 ~ ~6 255 ~10 minecraft:light_gray_concrete replace minecraft:stone

# Random doorways inside the cells
scoreboard players set door1 value 0
execute if predicate tid:random_10 run scoreboard players set door1 value 1
execute if score door1 value matches 1 run setblock ~ ~1 ~3 air
execute if score door1 value matches 1 if predicate tid:random_50 run setblock ~ ~2 ~3 air
execute if score door1 value matches 1 if predicate tid:random_50 run setblock ~ ~1 ~4 air
execute if score door1 value matches 1 if predicate tid:random_50 run setblock ~ ~1 ~2 air
execute if score door1 value matches 1 if predicate tid:random_20 run setblock ~ ~2 ~2 air
execute if score door1 value matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~3 {Duration:99999999,CustomName:"\"stronghold2_west\""}

scoreboard players set door2 value 0
execute if predicate tid:random_10 run scoreboard players set door2 value 1
execute if score door2 value matches 1 run setblock ~ ~1 ~8 air
execute if score door2 value matches 1 if predicate tid:random_50 run setblock ~ ~2 ~8 air
execute if score door2 value matches 1 if predicate tid:random_50 run setblock ~ ~1 ~9 air
execute if score door2 value matches 1 if predicate tid:random_50 run setblock ~ ~1 ~7 air
execute if score door2 value matches 1 if predicate tid:random_20 run setblock ~ ~2 ~7 air
execute if score door2 value matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~8 {Duration:99999999,CustomName:"\"stronghold2_west\""}

#Randomize blocks
scoreboard players set xmax value 9
scoreboard players set ymax value 6
scoreboard players set zmax value 11
function tid:dungeon/stronghold2/rng/run_rng

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

