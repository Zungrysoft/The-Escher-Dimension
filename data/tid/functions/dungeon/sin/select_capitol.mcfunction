#Determine district
execute positioned ~ ~ ~ run function tid:dungeon/sin/get_nearest_district

#Determine structure
#White
execute if score district_color value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_white", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Orange
execute if score district_color value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_orange", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Magenta
execute if score district_color value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_magenta", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Light Blue
execute if score district_color value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_light_blue", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Yellow
execute if score district_color value matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_yellow", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Lime
execute if score district_color value matches 5 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_lime", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Pink
execute if score district_color value matches 6 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_pink", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Gray
execute if score district_color value matches 7 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_gray", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Light Gray
execute if score district_color value matches 8 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_light_gray", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Cyan
execute if score district_color value matches 9 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_cyan", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Purple
execute if score district_color value matches 10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_purple", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Blue
execute if score district_color value matches 11 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_blue", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Brown
execute if score district_color value matches 12 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_brown", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Green
execute if score district_color value matches 13 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_green", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Red
execute if score district_color value matches 14 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_red", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#Black
execute if score district_color value matches 15 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/capitol_black", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~18 ~-102 ~18 air

#Add support pillar
execute positioned ~ ~-1 ~ run clone ~ 41 ~ ~18 ~-128 ~18 ~ 169 ~ masked
execute positioned ~ ~-1 ~ run fill ~ 168 ~ ~18 ~ ~18 polished_blackstone_bricks replace orange_wool

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#We're done here
kill @s

