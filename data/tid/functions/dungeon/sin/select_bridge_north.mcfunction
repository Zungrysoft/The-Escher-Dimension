#Determine district
execute positioned ~2 ~ ~6 run function tid:dungeon/sin/get_nearest_district

#Pick a structure from this list
setblock ~2 ~ ~6 minecraft:structure_block{name: "tid:sin/bridge_north_1", posX: -2, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~6 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-122 ~12 air

#Add support pillar
execute positioned ~ ~-1 ~5 run clone ~ 41 ~ ~4 ~-128 ~2 ~ 169 ~ masked
execute positioned ~ ~-1 ~5 run fill ~ 168 ~ ~4 ~ ~2 polished_blackstone_bricks replace orange_wool

#Recolor the concrete blocks in the room
execute if score district_color value matches 0 run fill ~ ~ ~ ~4 ~6 ~12 white_concrete replace light_blue_concrete
execute if score district_color value matches 1 run fill ~ ~ ~ ~4 ~6 ~12 orange_concrete replace light_blue_concrete
execute if score district_color value matches 2 run fill ~ ~ ~ ~4 ~6 ~12 magenta_concrete replace light_blue_concrete
execute if score district_color value matches 4 run fill ~ ~ ~ ~4 ~6 ~12 yellow_concrete replace light_blue_concrete
execute if score district_color value matches 5 run fill ~ ~ ~ ~4 ~6 ~12 lime_concrete replace light_blue_concrete
execute if score district_color value matches 6 run fill ~ ~ ~ ~4 ~6 ~12 pink_concrete replace light_blue_concrete
execute if score district_color value matches 7 run fill ~ ~ ~ ~4 ~6 ~12 gray_concrete replace light_blue_concrete
execute if score district_color value matches 8 run fill ~ ~ ~ ~4 ~6 ~12 light_gray_concrete replace light_blue_concrete
execute if score district_color value matches 9 run fill ~ ~ ~ ~4 ~6 ~12 cyan_concrete replace light_blue_concrete
execute if score district_color value matches 10 run fill ~ ~ ~ ~4 ~6 ~12 purple_concrete replace light_blue_concrete
execute if score district_color value matches 11 run fill ~ ~ ~ ~4 ~6 ~12 blue_concrete replace light_blue_concrete
execute if score district_color value matches 12 run fill ~ ~ ~ ~4 ~6 ~12 brown_concrete replace light_blue_concrete
execute if score district_color value matches 13 run fill ~ ~ ~ ~4 ~6 ~12 green_concrete replace light_blue_concrete
execute if score district_color value matches 14 run fill ~ ~ ~ ~4 ~6 ~12 red_concrete replace light_blue_concrete
execute if score district_color value matches 15 run fill ~ ~ ~ ~4 ~6 ~12 black_concrete replace light_blue_concrete

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

