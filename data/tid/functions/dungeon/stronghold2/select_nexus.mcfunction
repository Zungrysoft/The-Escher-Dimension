#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_60 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_03 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_01 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_10", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_03 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_11", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Direction-exclusive rooms
#North
execute if entity @s[name="stronghold2_north"] if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#South
execute if entity @s[name="stronghold2_south"] if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_south_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if entity @s[name="stronghold2_south"] if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#East
execute if entity @s[name="stronghold2_east"] if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_east_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#West
execute if entity @s[name="stronghold2_west"] if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~12 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~12 255 ~12 minecraft:stone replace minecraft:bricks

#Check for the portal to Hellion Heights
function tid:dungeon/stronghold2/event1_check

#Rest of the map
fill ~6 255 ~ ~6 255 ~12 minecraft:light_gray_concrete replace minecraft:stone
fill ~ 255 ~6 ~12 255 ~6 minecraft:light_gray_concrete replace minecraft:stone
fill ~6 255 ~ ~6 255 ~12 minecraft:light_gray_concrete replace minecraft:white_concrete
fill ~ 255 ~6 ~12 255 ~6 minecraft:light_gray_concrete replace minecraft:white_concrete

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~135 ~12 minecraft:blue_wool replace minecraft:orange_wool

#Secret rooms
scoreboard players set temp value 0
execute if predicate tid:random_07 run scoreboard players set temp value 1
execute if predicate tid:random_25 if score stronghold2_secrets value matches ..1 run scoreboard players set temp value 1
execute if score temp value matches 1 run function tid:dungeon/stronghold2/secret_place

#Randomize blocks
scoreboard players set xmax value 13
scoreboard players set ymax value 8
scoreboard players set zmax value 13
function tid:dungeon/stronghold2/rng/run_rng

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

