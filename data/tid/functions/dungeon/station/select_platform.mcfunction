#Pick a structure from this list
execute if score station_global value matches 0 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_1", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score station_global value matches 1 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_2", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score station_global value matches 2 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_3", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score station_global value matches 3 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_4", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Random structures
execute if predicate tid:random_05 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_1", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_2", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_3", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_4", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Special Structure (Only one and must be far from entrance)
scoreboard players set temp8 value 1
execute if score station_special value matches 1.. run scoreboard players set temp8 value 0
execute positioned 0 55 -32 if entity @s[distance=0..55] run scoreboard players set temp8 value 0
execute if score temp8 value matches 1 run scoreboard players set station_special value 1
execute if score temp8 value matches 1 run setblock ~6 ~ ~6 minecraft:structure_block{name: "tid:station/platform_special", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~6 ~1 ~6 minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~136 ~12 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~12 minecraft:red_nether_bricks replace minecraft:purple_concrete
fill ~ 255 ~ ~12 255 ~12 minecraft:red_nether_bricks replace minecraft:black_concrete
fill ~6 255 ~ ~6 255 ~12 minecraft:red_concrete replace minecraft:red_nether_bricks
fill ~ 255 ~6 ~12 255 ~6 minecraft:red_concrete replace minecraft:red_nether_bricks

#Count the room in the total
scoreboard players remove station_rooms value 1

#We're done here
kill @s

