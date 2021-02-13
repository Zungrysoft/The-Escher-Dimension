#Determine district
execute positioned ~5 ~ ~5 run function tid:dungeon/sin/get_nearest_district

#Universal Structures
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_11", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_12", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Exclusive Structures
#Light Gray
execute if score district_color value matches 8 if predicate tid:random_70 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Purple
execute if score district_color value matches 0 if predicate tid:random_40 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#White
execute if score district_color value matches 10 if predicate tid:random_40 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Yellow
execute if score district_color value matches 4 if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Gray
execute if score district_color value matches 7 if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Brown
execute if score district_color value matches 12 if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Red
execute if score district_color value matches 14 if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score district_color value matches 14 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cyan
execute if score district_color value matches 9 if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_7", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Magenta
execute if score district_color value matches 2 if predicate tid:random_30 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Blue
execute if score district_color value matches 11 if predicate tid:random_20 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Light Blue
execute if score district_color value matches 3 if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_9", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Rare Structures
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_10", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_13", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_02 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~10 ~-121 ~10 air

#Add support pillar
execute positioned ~ ~-1 ~ run clone ~ 41 ~ ~10 ~-128 ~10 ~ 169 ~ masked
execute positioned ~ ~-1 ~ run fill ~ 168 ~ ~10 ~ ~10 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~10 ~8 ~10 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~10 ~8 ~10 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~10 ~8 ~10 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~10 ~8 ~10 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~10 ~8 ~10 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~10 ~8 ~10 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~10 ~8 ~10 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~10 ~8 ~10 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~10 ~8 ~10 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~10 ~8 ~10 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~10 ~8 ~10 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~10 ~8 ~10 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~10 ~8 ~10 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~10 ~8 ~10 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~10 ~8 ~10 black_concrete replace light_blue_concrete

#Recolor the stained glass in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~10 ~8 ~10 white_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 1 run fill ~ ~ ~ ~10 ~8 ~10 orange_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 2 run fill ~ ~ ~ ~10 ~8 ~10 magenta_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 4 run fill ~ ~ ~ ~10 ~8 ~10 yellow_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 5 run fill ~ ~ ~ ~10 ~8 ~10 lime_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 6 run fill ~ ~ ~ ~10 ~8 ~10 pink_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 7 run fill ~ ~ ~ ~10 ~8 ~10 gray_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 8 run fill ~ ~ ~ ~10 ~8 ~10 light_gray_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 9 run fill ~ ~ ~ ~10 ~8 ~10 cyan_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 10 run fill ~ ~ ~ ~10 ~8 ~10 purple_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 11 run fill ~ ~ ~ ~10 ~8 ~10 blue_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 12 run fill ~ ~ ~ ~10 ~8 ~10 brown_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 13 run fill ~ ~ ~ ~10 ~8 ~10 green_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 14 run fill ~ ~ ~ ~10 ~8 ~10 red_stained_glass replace light_blue_stained_glass
execute if score district_color value matches 15 run fill ~ ~ ~ ~10 ~8 ~10 black_stained_glass replace light_blue_stained_glass

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Summon doorways
summon minecraft:area_effect_cloud ~5 ~1 ~ {Duration:99999999,CustomName:"\"sin_north\""}
summon minecraft:area_effect_cloud ~5 ~1 ~10 {Duration:99999999,CustomName:"\"sin_south\""}
summon minecraft:area_effect_cloud ~ ~1 ~5 {Duration:99999999,CustomName:"\"sin_west\""}
summon minecraft:area_effect_cloud ~10 ~1 ~5 {Duration:99999999,CustomName:"\"sin_east\""}

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

