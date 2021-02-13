#Universal Structures
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/secret_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~6 ~-125 ~4 air

#Add in the skull
scoreboard players set temp4 value 0
execute if predicate tid:random_50 run scoreboard players set temp4 value 1
execute if predicate tid:random_50 run scoreboard players set temp4 value 2
execute if predicate tid:random_50 run scoreboard players set temp4 value 3
execute if score temp4 value matches 0 run setblock ~4 ~1 ~1 wither_skeleton_skull[rotation=10]
execute if score temp4 value matches 1 run setblock ~4 ~1 ~1 wither_skeleton_skull[rotation=8]
execute if score temp4 value matches 2 run setblock ~4 ~1 ~3 wither_skeleton_skull[rotation=1]
execute if score temp4 value matches 3 run setblock ~4 ~1 ~3 wither_skeleton_skull[rotation=14]
