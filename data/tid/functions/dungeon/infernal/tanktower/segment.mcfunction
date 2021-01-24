#Blocks
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/block_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score tanktower_mode value matches 0 if predicate tid:random_33 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/block_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score tanktower_mode value matches 0 if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/block_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score tanktower_mode value matches 0 if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/tank_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score tanktower_mode value matches 0 if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/tank_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Tanks
execute if score tanktower_mode value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/tank_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score tanktower_mode value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/tank_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Vertical shaft
execute if score tanktower_mode value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/vertical_shaft", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Vertical shaft top
execute if score tanktower_mode value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/tanktower/vertical_top", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score tanktower_mode value matches 4 run function tid:dungeon/infernal/tanktower/top

#Activate the chosen structure block
setblock ~ ~1 ~ redstone_block

#Reserve the space
fill ~ ~128 ~ ~6 ~134 ~6 blue_wool

#Randomly switch types
execute if predicate tid:random_40 if score tanktower_mode value matches 3 run scoreboard players set tanktower_mode value 4
execute if predicate tid:random_25 unless score tanktower_mode value matches 3..6 run scoreboard players set tanktower_mode value 0
execute if predicate tid:random_15 unless score tanktower_mode value matches 3..6 run scoreboard players set tanktower_mode value 1
execute if predicate tid:random_15 unless score tanktower_mode value matches 3..6 run scoreboard players set tanktower_mode value 2
execute if predicate tid:random_10 unless score tanktower_mode value matches 3..6 run scoreboard players set tanktower_mode value 3
execute if predicate tid:random_10 unless score tanktower_mode value matches 3..6 run scoreboard players set tanktower_mode value 99
execute if score tanktower_mode value matches 6 if predicate tid:random_10 run scoreboard players set tanktower_mode value 1
execute if score tanktower_mode value matches 6 if predicate tid:random_10 run scoreboard players set tanktower_mode value 2
execute if score tanktower_mode value matches 6 run scoreboard players set tanktower_mode value 0

#Build another piece
execute if score tanktower_mode value matches 0..4 positioned ~ ~7 ~ if blocks ~ ~128 ~ ~6 ~134 ~6 1001 1 1001 all run function tid:dungeon/infernal/tanktower/segment
