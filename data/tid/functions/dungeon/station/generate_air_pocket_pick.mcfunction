#Pick an air pocket to try and generate
#execute if blocks ~-15 ~128 ~-15 ~15 ~148 ~15 1033 1 1033 all if blocks ~-15 ~108 ~-15 ~15 ~127 ~15 1033 1 1033 all run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/air_pocket_1", posX: -15, posY: -20, posZ: -15, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if block ~-15 ~148 ~-15 yellow_wool if block ~15 ~148 ~-15 yellow_wool if block ~-15 ~148 ~15 yellow_wool if block ~15 ~148 ~15 yellow_wool if block ~-15 ~108 ~-15 yellow_wool if block ~15 ~108 ~-15 yellow_wool if block ~-15 ~108 ~15 yellow_wool if block ~-15 ~108 ~-15 yellow_wool run setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/air_pocket_1", posX: -15, posY: -20, posZ: -15, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Create bramble marker
execute if block ~ ~ ~ structure_block run summon minecraft:area_effect_cloud ~ ~-20 ~ {Duration:99999999,CustomName:"\"station_bramble_marker\""}

#Mark the cave segment on the map
execute if block ~ ~ ~ structure_block run fill ~-15 255 ~-15 ~15 255 ~15 minecraft:purple_concrete replace minecraft:black_concrete

#If a structure block was successfully picked, activate it with a redstone block
execute if block ~ ~ ~ structure_block run setblock ~ ~1 ~ redstone_block

