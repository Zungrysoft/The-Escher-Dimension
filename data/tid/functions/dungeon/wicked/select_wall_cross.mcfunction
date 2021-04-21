#Pick a structure from this list
setblock ~2 ~ ~2 minecraft:structure_block{name: "tid:wicked/wall_cross", posX: -2, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~2 ~1 ~2 minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~8 ~-122 ~8 minecraft:blue_wool

#Summon doorways
summon minecraft:area_effect_cloud ~4 ~ ~ {Duration:99999999,CustomName:"\"wicked_north\""}
summon minecraft:area_effect_cloud ~4 ~ ~8 {Duration:99999999,CustomName:"\"wicked_south\""}
summon minecraft:area_effect_cloud ~ ~ ~4 {Duration:99999999,CustomName:"\"wicked_west\""}
summon minecraft:area_effect_cloud ~8 ~ ~4 {Duration:99999999,CustomName:"\"wicked_east\""}

#Pillars
fill ~3 ~-1 ~ ~5 130 ~8 obsidian
fill ~ ~-1 ~3 ~8 130 ~5 obsidian

execute positioned ~2 ~-1 ~1 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~1 ~-1 ~2 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks

execute positioned ~6 ~-1 ~1 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~7 ~-1 ~2 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks

execute positioned ~2 ~-1 ~7 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~1 ~-1 ~6 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks

execute positioned ~6 ~-1 ~7 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks
execute positioned ~7 ~-1 ~6 run fill ~ ~ ~ ~ 130 ~ polished_blackstone_bricks

execute positioned ~2 ~-1 ~2 run fill ~ ~ ~ ~ 130 ~ obsidian
execute positioned ~2 ~-1 ~6 run fill ~ ~ ~ ~ 130 ~ obsidian
execute positioned ~6 ~-1 ~2 run fill ~ ~ ~ ~ 130 ~ obsidian
execute positioned ~6 ~-1 ~6 run fill ~ ~ ~ ~ 130 ~ obsidian

#Count the room in the total
scoreboard players remove wicked_walls value 1

#We're done here
kill @s
