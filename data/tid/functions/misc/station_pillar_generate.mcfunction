#Generate the pillar top
setblock ~-1 ~-3 ~-1 minecraft:structure_block{name: "tid:station/pillar_top", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~-1 ~-2 ~-1 minecraft:redstone_block
fill ~-1 ~125 ~-1 ~1 ~127 ~1 minecraft:blue_wool

#Start the success value at 0
scoreboard players set temp value 0

#Start crawling down
execute positioned ~ ~-4 ~ run function tid:misc/station_pillar_crawl