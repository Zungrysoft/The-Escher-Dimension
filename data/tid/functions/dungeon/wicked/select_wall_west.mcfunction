#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:wicked/wall_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~8 ~-122 ~4 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~ ~ ~2 {Duration:99999999,CustomName:"\"wicked_west\""}
summon minecraft:area_effect_cloud ~8 ~ ~2 {Duration:99999999,CustomName:"\"wicked_east\""}

#Pillars
fill ~ ~-1 ~1 ~8 130 ~3 obsidian
execute positioned ~3 ~-1 ~0 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~5 ~-1 ~0 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~3 ~-1 ~4 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~5 ~-1 ~4 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~4 ~-1 ~1 run fill ~ ~ ~ ~ 130 ~ crimson_stem
execute positioned ~4 ~-1 ~3 run fill ~ ~ ~ ~ 130 ~ crimson_stem

#Count the room in the total
scoreboard players remove wicked_walls value 1

#We're done here
kill @s
