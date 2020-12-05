#Determine district
execute positioned ~6 ~ ~2 run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~6 ~ ~2 minecraft:structure_block{name: "tid:sin/bridge_west_1", posX: -6, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~6 ~1 ~2 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~12 ~-122 ~4 air

#Add support pillar
execute positioned ~5 ~-1 ~ run clone ~ 41 ~ ~2 ~-128 ~4 ~ 169 ~ masked
execute positioned ~5 ~-1 ~ run fill ~ 168 ~ ~2 ~ ~4 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~12 ~6 ~4 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~12 ~6 ~4 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~12 ~6 ~4 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~12 ~6 ~4 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~12 ~6 ~4 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~12 ~6 ~4 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~12 ~6 ~4 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~12 ~6 ~4 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~12 ~6 ~4 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~12 ~6 ~4 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~12 ~6 ~4 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~12 ~6 ~4 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~12 ~6 ~4 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~12 ~6 ~4 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~12 ~6 ~4 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

