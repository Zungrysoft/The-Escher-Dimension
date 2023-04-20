#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~28 ~138 ~28 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~28 255 ~28 soul_soil replace black_concrete
fill ~14 255 ~ ~14 255 ~28 nether_bricks replace soul_soil
fill ~ 255 ~14 ~28 255 ~14 nether_bricks replace soul_soil

#Randomly pick a bunch of stuff to go inside the arena
execute if predicate tid:random_20 run function tid:dungeon/soulsand/load_arena_carve
execute if predicate tid:random_40 run function tid:dungeon/soulsand/load_arena_build
execute if predicate tid:random_20 run function tid:dungeon/soulsand/load_arena_carve
execute if predicate tid:random_40 run function tid:dungeon/soulsand/load_arena_build
execute if predicate tid:random_20 run function tid:dungeon/soulsand/load_arena_carve
execute if predicate tid:random_05 run function tid:dungeon/soulsand/load_arena_path
execute if predicate tid:random_40 run function tid:dungeon/soulsand/load_arena_build
execute if predicate tid:random_20 run function tid:dungeon/soulsand/load_arena_carve
execute if predicate tid:random_40 run function tid:dungeon/soulsand/load_arena_build
execute if predicate tid:random_20 run function tid:dungeon/soulsand/load_arena_carve
execute if predicate tid:random_50 run function tid:dungeon/soulsand/load_arena_build
execute if predicate tid:random_30 run function tid:dungeon/soulsand/load_arena_carve
function tid:dungeon/soulsand/load_arena_build
function tid:dungeon/soulsand/load_arena_carve
function tid:dungeon/soulsand/load_arena_path

#Put up torches by the doors if those spots are open
execute if block ~12 ~4 ~1 air run setblock ~12 ~4 ~1 soul_wall_torch[facing=south]
execute if block ~16 ~4 ~1 air run setblock ~16 ~4 ~1 soul_wall_torch[facing=south]
execute if block ~1 ~4 ~12 air run setblock ~1 ~4 ~12 soul_wall_torch[facing=east]
execute if block ~1 ~4 ~16 air run setblock ~1 ~4 ~16 soul_wall_torch[facing=east]
execute if block ~27 ~4 ~12 air run setblock ~27 ~4 ~12 soul_wall_torch[facing=west]
execute if block ~27 ~4 ~16 air run setblock ~27 ~4 ~16 soul_wall_torch[facing=west]
execute if block ~12 ~4 ~27 air run setblock ~12 ~4 ~27 soul_wall_torch[facing=north]
execute if block ~16 ~4 ~27 air run setblock ~16 ~4 ~27 soul_wall_torch[facing=north]

# Place soul fire randomly around the arena
execute positioned ~14 ~2 ~14 run function tid:misc/soulsand_scatter_fire

# Add slabs to ceiling to prevent spawning on top of structures
fill ~ ~10 ~ ~28 ~10 ~28 minecraft:nether_brick_slab[type=top] replace minecraft:air

#Summon other doorways for further generation
execute unless entity @s[name="soulsand_south"] run summon minecraft:area_effect_cloud ~14 ~2 ~ {Duration:99999999,CustomName:"\"soulsand_north\""}
execute unless entity @s[name="soulsand_north"] run summon minecraft:area_effect_cloud ~14 ~2 ~28 {Duration:99999999,CustomName:"\"soulsand_south\""}
execute unless entity @s[name="soulsand_east"] run summon minecraft:area_effect_cloud ~ ~2 ~14 {Duration:99999999,CustomName:"\"soulsand_west\""}
execute unless entity @s[name="soulsand_west"] run summon minecraft:area_effect_cloud ~28 ~2 ~14 {Duration:99999999,CustomName:"\"soulsand_east\""}

#Count the room in the total
scoreboard players remove soulsand_rooms value 1
scoreboard players add soulsand_arenas_built value 1

#We're done here
kill @s
