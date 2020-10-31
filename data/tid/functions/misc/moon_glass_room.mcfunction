#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Randomly place items
execute positioned ~ ~ ~2 run function tid:misc/moon_glass_room_item
execute positioned ~1 ~ ~2 run function tid:misc/moon_glass_room_item
execute positioned ~-1 ~ ~2 run function tid:misc/moon_glass_room_item
execute positioned ~ ~ ~-2 run function tid:misc/moon_glass_room_item
execute positioned ~1 ~ ~-2 run function tid:misc/moon_glass_room_item
execute positioned ~-1 ~ ~-2 run function tid:misc/moon_glass_room_item