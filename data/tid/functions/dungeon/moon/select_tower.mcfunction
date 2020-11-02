#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 5
scoreboard players operation temp value %= calc value

#Pick a structure from this list based on y position
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_exit_north", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_exit_west", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_exit_east", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_exit_south", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_01 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_exit_cross", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Summon the upward doorway
summon minecraft:area_effect_cloud ~ ~6 ~ {Duration:99999999,CustomName:"\"moon_bridge_up\""}

#Mark this area as generated
fill ~ ~128 ~ ~7 ~133 ~7 minecraft:blue_wool

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
