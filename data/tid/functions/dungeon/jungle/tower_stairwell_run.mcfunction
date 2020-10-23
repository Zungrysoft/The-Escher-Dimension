#An Evoker should guard this stairwell if this level has at least 5 rooms
#Then get rid of any other evokers in this tower, so only one appears and at the highest valid floor
execute store result score temp2 value if entity @e[type=area_effect_cloud,name="jungle_tower_room",distance=0..30]
execute if score temp2 value matches 5.. run tp @e[type=evoker,distance=0..30] 0 -100 0
execute if score temp2 value matches 5.. run function tid:custom_mobs/evoker

#Kill all rooms in this tower
kill @e[type=area_effect_cloud,name="jungle_tower_room",distance=0..30]

#Generate the layer's first room
execute positioned ~-3 ~3 ~-3 run function tid:dungeon/jungle/select_tower_quad

#Empty out both rooms to make room for the stairwell
fill ~-2 ~ ~-2 ~2 ~2 ~2 air
fill ~-2 ~4 ~-2 ~2 ~6 ~2 air

#If this layer only one room, stop going up any further. Prevents weird single-wide towers. Also put that top room
execute if score temp2 value matches ..1 run kill @e[type=area_effect_cloud,name="jungle_tower_room",distance=0..10]
execute if score temp2 value matches ..1 run setblock ~2 ~4 ~2 chest{LootTable: "tid:chests/jungle"}

#Place the stairwell
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/stairwell_short", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~ ~1 ~ redstone_block