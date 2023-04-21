#Place all four structure blocks
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/biome", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~63 ~ ~ minecraft:structure_block{name: "tid:nature/biome", posX: 0, posY: 0, posZ: 0, rotation: "CLOCKWISE_90", ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~63 ~ ~63 minecraft:structure_block{name: "tid:nature/biome", posX: 0, posY: 0, posZ: 0, rotation: "CLOCKWISE_180", ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~ ~ ~63 minecraft:structure_block{name: "tid:nature/biome", posX: 0, posY: 0, posZ: 0, rotation: "COUNTERCLOCKWISE_90", ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure blocks
setblock ~ ~1 ~ minecraft:redstone_block
setblock ~63 ~1 ~ minecraft:redstone_block
setblock ~63 ~1 ~63 minecraft:redstone_block
setblock ~ ~1 ~63 minecraft:redstone_block

#Open up the doorway
execute at @s run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace oak_planks
execute at @s run fill ~-2 ~ ~-2 ~2 ~4 ~2 smooth_stone_slab[type=double] replace oak_planks

#Select biome for generation
execute positioned ~6 ~1 ~6 run function tid:dungeon/nature/biome/start

#Mark this area as generated
fill ~1 ~128 ~1 ~31 ~154 ~31 minecraft:blue_wool replace minecraft:orange_wool
fill ~32 ~128 ~1 ~62 ~154 ~31 minecraft:blue_wool replace minecraft:orange_wool
fill ~1 ~128 ~32 ~31 ~154 ~62 minecraft:blue_wool replace minecraft:orange_wool
fill ~32 ~128 ~32 ~62 ~154 ~62 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~63 255 ~63 minecraft:oak_planks replace minecraft:black_concrete
fill ~6 255 ~6 ~57 255 ~57 minecraft:green_concrete replace minecraft:oak_planks

#Place new doorways
execute positioned ~12 ~8 ~1 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_north\"",Tags:["biome"]}
execute positioned ~25 ~8 ~1 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_north\"",Tags:["biome"]}
execute positioned ~38 ~8 ~1 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_north\"",Tags:["biome"]}
execute positioned ~51 ~8 ~1 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_north\"",Tags:["biome"]}

execute positioned ~12 ~8 ~62 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_south\"",Tags:["biome"]}
execute positioned ~25 ~8 ~62 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_south\"",Tags:["biome"]}
execute positioned ~38 ~8 ~62 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_south\"",Tags:["biome"]}
execute positioned ~51 ~8 ~62 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_south\"",Tags:["biome"]}

execute positioned ~1 ~8 ~12 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_west\"",Tags:["biome"]}
execute positioned ~1 ~8 ~25 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_west\"",Tags:["biome"]}
execute positioned ~1 ~8 ~38 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_west\"",Tags:["biome"]}
execute positioned ~1 ~8 ~51 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_west\"",Tags:["biome"]}

execute positioned ~62 ~8 ~12 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_east\"",Tags:["biome"]}
execute positioned ~62 ~8 ~25 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_east\"",Tags:["biome"]}
execute positioned ~62 ~8 ~38 if predicate tid:random_70 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_east\"",Tags:["biome"]}
execute positioned ~62 ~8 ~51 if block ~ ~2 ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_east\"",Tags:["biome"]}

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

