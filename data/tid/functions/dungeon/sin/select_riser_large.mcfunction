#Determine district
execute positioned ~8 ~ ~8 run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~8 ~1 ~8 minecraft:structure_block{name: "tid:sin/riser_large_1", posX: -8, posY: -1, posZ: -8, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~8 ~2 ~8 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~16 ~-119 ~16 air

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~16 ~9 ~16 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~16 ~9 ~16 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~16 ~9 ~16 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~16 ~9 ~16 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~16 ~9 ~16 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~16 ~9 ~16 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~16 ~9 ~16 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~16 ~9 ~16 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~16 ~9 ~16 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~16 ~9 ~16 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~16 ~9 ~16 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~16 ~9 ~16 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~16 ~9 ~16 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~16 ~9 ~16 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~16 ~9 ~16 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Add in the up and down doorways
summon area_effect_cloud ~8 ~ ~8 {Duration:99999999,CustomName:"\"sin_down\""}
summon area_effect_cloud ~8 ~9 ~8 {Duration:99999999,CustomName:"\"sin_up\""}

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

