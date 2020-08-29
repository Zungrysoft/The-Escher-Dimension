#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/arena_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

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
execute if block ~12 ~3 ~1 air run setblock ~12 ~3 ~1 soul_wall_torch[facing=south]
execute if block ~16 ~3 ~1 air run setblock ~16 ~3 ~1 soul_wall_torch[facing=south]
execute if block ~1 ~3 ~12 air run setblock ~1 ~3 ~12 soul_wall_torch[facing=east]
execute if block ~1 ~3 ~16 air run setblock ~1 ~3 ~16 soul_wall_torch[facing=east]
execute if block ~27 ~3 ~12 air run setblock ~27 ~3 ~12 soul_wall_torch[facing=west]
execute if block ~27 ~3 ~16 air run setblock ~27 ~3 ~16 soul_wall_torch[facing=west]
execute if block ~12 ~3 ~27 air run setblock ~12 ~3 ~27 soul_wall_torch[facing=north]
execute if block ~16 ~3 ~27 air run setblock ~16 ~3 ~27 soul_wall_torch[facing=north]

#We're done here
kill @s

