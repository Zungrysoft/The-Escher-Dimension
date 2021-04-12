#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 3
scoreboard players operation temp value %= calc value
execute store result score temp2 value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp2 value %= calc value

#Pick a structure from this list based on y position
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/connector_north_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/connector_north_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp2 value matches 0 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/connector_north_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Open wall
execute at @s run function tid:dungeon/moon/open_room

#Mark this area on the map
fill ~ 255 ~ ~8 255 ~4 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~8 255 ~4 minecraft:granite replace minecraft:black_concrete
fill ~4 255 ~ ~4 255 ~4 minecraft:red_sandstone replace minecraft:granite
fill ~1 255 ~ ~7 255 ~1 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~8 ~136 ~4 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~9 ~9 ~5 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
