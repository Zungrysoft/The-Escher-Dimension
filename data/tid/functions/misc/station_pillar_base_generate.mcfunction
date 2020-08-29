#Generate the pillar base
setblock ~-3 ~-4 ~-3 minecraft:structure_block{name: "tid:station/pillar_base", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~-3 ~-3 ~-3 minecraft:redstone_block
fill ~-3 ~124 ~-3 ~3 ~131 ~3 minecraft:blue_wool

#Summon the crawler that will make its way up
summon minecraft:area_effect_cloud ~ ~4 ~ {Duration:99999999,CustomName:"\"station_pillar_crawl\""}

#Fixes the one-block-space bug
execute if block ~ ~5 ~ red_nether_bricks run fill ~-1 ~4 ~-1 ~1 ~4 ~1 red_nether_bricks