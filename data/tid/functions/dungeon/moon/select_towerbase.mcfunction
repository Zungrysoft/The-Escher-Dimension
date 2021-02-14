#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 3
scoreboard players operation temp value %= calc value
execute store result score temp2 value run data get entity @s Pos[1] 1
scoreboard players set calc value 7
scoreboard players operation temp2 value %= calc value

#Pick a structure from this list based on y position
setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/towerbase_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/towerbase_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp2 value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/towerbase_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Check for the portal to Infernal Industries
function tid:dungeon/moon/event1_check

#Summon the upward doorway
summon minecraft:area_effect_cloud ~ ~9 ~ {Duration:99999999,CustomName:"\"moon_bridge_up\""}

#Summon the upward doorway
summon minecraft:area_effect_cloud ~4 ~2 ~4 {Duration:99999999,CustomName:"\"moon_tower_marker\""}

#Mark this area on the map
fill ~ 255 ~ ~7 255 ~7 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~7 255 ~7 minecraft:granite replace minecraft:black_concrete
fill ~3 255 ~ ~4 255 ~7 minecraft:red_sandstone replace minecraft:granite
fill ~ 255 ~3 ~7 255 ~4 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~7 ~136 ~7 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~8 ~9 ~8 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
