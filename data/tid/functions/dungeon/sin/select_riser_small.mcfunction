#Determine district
execute positioned ~4 ~ ~4 run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~4 ~1 ~4 minecraft:structure_block{name: "tid:sin/riser_small_1", posX: -4, posY: -1, posZ: -4, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Light Gray
execute if score district_color value matches 8 run setblock ~4 ~1 ~4 minecraft:structure_block{name: "tid:sin/riser_small_2", posX: -4, posY: -1, posZ: -4, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Yellow
execute if score district_color value matches 8 if predicate tid:random_30 run setblock ~4 ~1 ~4 minecraft:structure_block{name: "tid:sin/riser_small_2", posX: -4, posY: -1, posZ: -4, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Blue
execute if score district_color value matches 6 if predicate tid:random_11 run setblock ~4 ~1 ~4 minecraft:structure_block{name: "tid:sin/riser_small_2", posX: -4, posY: -1, posZ: -4, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~4 ~2 ~4 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~8 ~-121 ~8 air

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~8 ~7 ~8 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~8 ~7 ~8 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~8 ~7 ~8 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~8 ~7 ~8 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~8 ~7 ~8 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~8 ~7 ~8 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~8 ~7 ~8 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~8 ~7 ~8 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~8 ~7 ~8 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~8 ~7 ~8 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~8 ~7 ~8 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~8 ~7 ~8 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~8 ~7 ~8 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~8 ~7 ~8 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~8 ~7 ~8 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Add in the up and down doorways
summon area_effect_cloud ~4 ~ ~4 {Duration:99999999,CustomName:"\"sin_down\""}
summon area_effect_cloud ~4 ~7 ~4 {Duration:99999999,CustomName:"\"sin_up\""}

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

