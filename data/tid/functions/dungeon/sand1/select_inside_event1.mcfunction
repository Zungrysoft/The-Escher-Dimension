#Pick the Room
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand1/event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Mark the map with an X as an extra hint to dig here
execute positioned ~5 ~ ~5 run setblock ~ 255 ~ red_sand

execute positioned ~5 ~ ~5 run setblock ~-1 255 ~-1 red_sand
execute positioned ~5 ~ ~5 run setblock ~1 255 ~1 red_sand
execute positioned ~5 ~ ~5 run setblock ~1 255 ~-1 red_sand
execute positioned ~5 ~ ~5 run setblock ~-1 255 ~1 red_sand

execute positioned ~5 ~ ~5 run setblock ~-2 255 ~-2 red_sand
execute positioned ~5 ~ ~5 run setblock ~2 255 ~2 red_sand
execute positioned ~5 ~ ~5 run setblock ~2 255 ~-2 red_sand
execute positioned ~5 ~ ~5 run setblock ~-2 255 ~2 red_sand

execute positioned ~5 ~ ~5 run setblock ~-3 255 ~-3 red_sand
execute positioned ~5 ~ ~5 run setblock ~3 255 ~3 red_sand
execute positioned ~5 ~ ~5 run setblock ~3 255 ~-3 red_sand
execute positioned ~5 ~ ~5 run setblock ~-3 255 ~3 red_sand

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block

#Set the event value to 1 so the game knows not to generate any other rooms
scoreboard players set north value 1
scoreboard players set south value 1
scoreboard players set east value 1
scoreboard players set west value 1
scoreboard players set event1 value 1

#Set this room as having been generated
scoreboard players set sand1_x_spot_build value 1