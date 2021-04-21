#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:wicked/wall_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~4 ~-122 ~8 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~ ~ {Duration:99999999,CustomName:"\"wicked_north\""}
summon minecraft:area_effect_cloud ~2 ~ ~8 {Duration:99999999,CustomName:"\"wicked_south\""}

#Pillars
fill ~1 ~-1 ~ ~3 130 ~8 obsidian
execute positioned ~0 ~-1 ~3 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~0 ~-1 ~5 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~4 ~-1 ~3 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~4 ~-1 ~5 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~1 ~-1 ~4 run fill ~ ~ ~ ~ 130 ~ crimson_stem
execute positioned ~3 ~-1 ~4 run fill ~ ~ ~ ~ 130 ~ crimson_stem

#Count the room in the total
scoreboard players remove wicked_walls value 1

#We're done here
kill @s
