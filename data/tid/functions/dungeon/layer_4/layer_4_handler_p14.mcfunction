say Generating Dungeons...

#Damnation Station
execute positioned 0 55 -7 positioned ~-5 ~-3 ~-31 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/entrance_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute positioned 0 55 -7 positioned ~-5 ~-3 ~-31 run setblock ~ ~1 ~ minecraft:redstone_block
execute positioned 0 55 -7 positioned ~-5 ~-3 ~-31 run fill ~ ~128 ~ ~10 ~136 ~30 minecraft:blue_wool

scoreboard players set layer_4_handler_phase value 20