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

#Place new doorways
summon minecraft:area_effect_cloud ~12 ~8 ~1 {Duration:99999999,CustomName:"\"nature_north\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~25 ~8 ~1 {Duration:99999999,CustomName:"\"nature_north\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~38 ~8 ~1 {Duration:99999999,CustomName:"\"nature_north\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~51 ~8 ~1 {Duration:99999999,CustomName:"\"nature_north\""}

execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~12 ~8 ~62 {Duration:99999999,CustomName:"\"nature_south\""}
summon minecraft:area_effect_cloud ~25 ~8 ~62 {Duration:99999999,CustomName:"\"nature_south\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~38 ~8 ~62 {Duration:99999999,CustomName:"\"nature_south\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~51 ~8 ~62 {Duration:99999999,CustomName:"\"nature_south\""}

execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~1 ~8 ~12 {Duration:99999999,CustomName:"\"nature_west\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~1 ~8 ~25 {Duration:99999999,CustomName:"\"nature_west\""}
summon minecraft:area_effect_cloud ~1 ~8 ~38 {Duration:99999999,CustomName:"\"nature_west\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~1 ~8 ~51 {Duration:99999999,CustomName:"\"nature_west\""}

execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~62 ~8 ~12 {Duration:99999999,CustomName:"\"nature_east\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~62 ~8 ~25 {Duration:99999999,CustomName:"\"nature_east\""}
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~62 ~8 ~38 {Duration:99999999,CustomName:"\"nature_east\""}
summon minecraft:area_effect_cloud ~62 ~8 ~51 {Duration:99999999,CustomName:"\"nature_east\""}

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

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

