#The junctions determine which directions to go, determine which type of piece to use, determine which variant to use, then place it

#Determine directions we can go from here
#Start all values at one
scoreboard players set north value 1
scoreboard players set south value 1
scoreboard players set west value 1
scoreboard players set east value 1

#Randomly remove some directions
execute if predicate tid:random_33 run scoreboard players set north value 0
execute if predicate tid:random_33 run scoreboard players set south value 0
execute if predicate tid:random_33 run scoreboard players set west value 0
execute if predicate tid:random_33 run scoreboard players set east value 0

#Cut directions that will definitely be unable to generate
execute unless block ~ ~131 ~-3 orange_wool run scoreboard players set north value 0
execute unless block ~ ~131 ~6 orange_wool run scoreboard players set south value 0
execute unless block ~-3 ~131 ~ orange_wool run scoreboard players set west value 0
execute unless block ~6 ~131 ~ orange_wool run scoreboard players set east value 0

#Re-add doorway direction
execute if entity @s[name="moon_bridge_north"] run scoreboard players set south value 1
execute if entity @s[name="moon_bridge_south"] run scoreboard players set north value 1
execute if entity @s[name="moon_bridge_west"] run scoreboard players set east value 1
execute if entity @s[name="moon_bridge_east"] run scoreboard players set west value 1

#Determine selection
#0: none
#1: cross
#2: straight_north
#3: straight_west
#4: tee_north
#5: tee_south
#6: tee_east
#7: tee_west
#8: turn_north
#9: turn_east
#10: turn_south
#11: turn_west
#12: end_south
#13: end_north
#14: end_east
#15: end_west

#Default value
scoreboard players set selection value 0
#Cross
execute if score north value matches 1 if score south value matches 1 if score west value matches 1 if score east value matches 1 run scoreboard players set selection value 1
#Straights
execute if score north value matches 1 if score south value matches 1 if score west value matches 0 if score east value matches 0 run scoreboard players set selection value 2
execute if score north value matches 0 if score south value matches 0 if score west value matches 1 if score east value matches 1 run scoreboard players set selection value 3
#Tees
execute if score north value matches 1 if score south value matches 0 if score west value matches 1 if score east value matches 1 run scoreboard players set selection value 4
execute if score north value matches 0 if score south value matches 1 if score west value matches 1 if score east value matches 1 run scoreboard players set selection value 5
execute if score north value matches 1 if score south value matches 1 if score west value matches 0 if score east value matches 1 run scoreboard players set selection value 6
execute if score north value matches 1 if score south value matches 1 if score west value matches 1 if score east value matches 0 run scoreboard players set selection value 7
#Turns
execute if score north value matches 1 if score south value matches 0 if score west value matches 0 if score east value matches 1 run scoreboard players set selection value 8
execute if score north value matches 0 if score south value matches 1 if score west value matches 0 if score east value matches 1 run scoreboard players set selection value 9
execute if score north value matches 0 if score south value matches 1 if score west value matches 1 if score east value matches 0 run scoreboard players set selection value 10
execute if score north value matches 1 if score south value matches 0 if score west value matches 1 if score east value matches 0 run scoreboard players set selection value 11
#Ends
execute if score north value matches 0 if score south value matches 1 if score west value matches 0 if score east value matches 0 run scoreboard players set selection value 12
execute if score north value matches 1 if score south value matches 0 if score west value matches 0 if score east value matches 0 run scoreboard players set selection value 13
execute if score north value matches 0 if score south value matches 0 if score west value matches 0 if score east value matches 1 run scoreboard players set selection value 14
execute if score north value matches 0 if score south value matches 0 if score west value matches 1 if score east value matches 0 run scoreboard players set selection value 15

#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 3
scoreboard players operation temp value %= calc value
execute store result score temp2 value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp2 value %= calc value

#Use selection value to determine structure block to place
#cross
execute if score selection value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_cross_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 1 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_cross_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 1 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_cross_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#straight_north
execute if score selection value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_straight_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 2 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_straight_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 2 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_straight_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#straight_west
execute if score selection value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_straight_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 3 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_straight_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 3 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_straight_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#tee_north
execute if score selection value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 4 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 4 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#tee_south
execute if score selection value matches 5 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_south_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 5 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 5 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_south_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#tee_east
execute if score selection value matches 6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_east_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 6 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_east_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 6 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_east_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#tee_west
execute if score selection value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 7 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 7 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_tee_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#turn_north
execute if score selection value matches 8 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 8 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 8 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#turn_east
execute if score selection value matches 9 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_east_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 9 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_east_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 9 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_east_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#turn_south
execute if score selection value matches 10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_south_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 10 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 10 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_south_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#turn_west
execute if score selection value matches 11 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 11 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 11 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_turn_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#end_south
execute if score selection value matches 12 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_south_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 12 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_south_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 12 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_south_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#end_north
execute if score selection value matches 13 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 13 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 13 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#end_east
execute if score selection value matches 14 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_east_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 14 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_east_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 14 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_east_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#end_west
execute if score selection value matches 15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_west_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 15 if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_west_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score selection value matches 15 if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/junction_end_west_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area on the map
fill ~ 255 ~ ~3 255 ~3 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~3 255 ~3 minecraft:granite replace minecraft:black_concrete
fill ~1 255 ~1 ~2 255 ~2 minecraft:red_sandstone replace minecraft:granite
execute if score north value matches 1 run fill ~1 255 ~0 ~2 255 ~0 minecraft:red_sandstone replace minecraft:granite
execute if score south value matches 1 run fill ~1 255 ~3 ~2 255 ~3 minecraft:red_sandstone replace minecraft:granite
execute if score west value matches 1 run fill ~0 255 ~1 ~0 255 ~2 minecraft:red_sandstone replace minecraft:granite
execute if score east value matches 1 run fill ~3 255 ~1 ~3 255 ~2 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~3 ~134 ~3 minecraft:blue_wool

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
