#Determine district
execute positioned ~6 ~ ~6 run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~6 ~1 ~6 minecraft:structure_block{name: "tid:sin/riser_medium_1", posX: -6, posY: -1, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~6 ~2 ~6 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~12 ~-121 ~12 air

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~12 ~7 ~12 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~12 ~7 ~12 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~12 ~7 ~12 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~12 ~7 ~12 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~12 ~7 ~12 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~12 ~7 ~12 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~12 ~7 ~12 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~12 ~7 ~12 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~12 ~7 ~12 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~12 ~7 ~12 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~12 ~7 ~12 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~12 ~7 ~12 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~12 ~7 ~12 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~12 ~7 ~12 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~12 ~7 ~12 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Add in the up and down doorways
summon area_effect_cloud ~6 ~ ~6 {Duration:99999999,CustomName:"\"sin_down\""}
summon area_effect_cloud ~6 ~7 ~6 {Duration:99999999,CustomName:"\"sin_up\""}

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

