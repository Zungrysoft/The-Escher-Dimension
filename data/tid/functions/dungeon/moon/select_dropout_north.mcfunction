#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 3
scoreboard players operation temp value %= calc value
execute store result score temp2 value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp2 value %= calc value

#Pick a structure from this list based on y position
setblock ~1 ~ ~ minecraft:structure_block{name: "tid:moon/dropout_north_1", posX: -1, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0 run setblock ~1 ~ ~ minecraft:structure_block{name: "tid:moon/dropout_north_2", posX: -1, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp2 value matches 0 run setblock ~1 ~ ~ minecraft:structure_block{name: "tid:moon/dropout_north_3", posX: -1, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~ minecraft:redstone_block

#Mark this area on the map
fill ~ 255 ~ ~9 255 ~9 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~9 255 ~9 minecraft:granite replace minecraft:black_concrete
fill ~8 255 ~9 ~7 255 ~1 minecraft:red_sandstone replace minecraft:granite
fill ~6 255 ~1 ~2 255 ~2 minecraft:red_sandstone replace minecraft:granite
fill ~2 255 ~3 ~4 255 ~3 minecraft:red_sandstone replace minecraft:granite
fill ~1 255 ~8 ~5 255 ~4 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~9 ~134 ~9 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~11 ~7 ~11 end_stone replace stone

#Add the dropout entity
summon minecraft:area_effect_cloud ~3 ~1 ~6 {Duration:99999999,CustomName:"\"moon_dropout\""}

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
