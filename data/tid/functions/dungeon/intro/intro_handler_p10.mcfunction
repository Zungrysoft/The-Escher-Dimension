#Message to notify that the world is being built
say Generating world...

#Storehouse for orange wool
fill 1000 129 1000 1033 156 1033 minecraft:bedrock
fill 1001 129 1001 1032 155 1033 minecraft:orange_wool
fill 1000 1 1000 1032 28 1032 minecraft:air
#Storehouse for purple wool
fill 1000 129 1033 1033 156 1065 minecraft:bedrock
fill 1001 129 1033 1032 155 1064 minecraft:purple_wool
fill 1000 1 1032 1065 28 1065 minecraft:air

#Determine the global room selection
scoreboard players set intro_global value 0
execute if predicate tid:random_50 run scoreboard players add intro_global value 1
execute if predicate tid:random_50 run scoreboard players add intro_global value 2

#Determine the number of rooms to generate
scoreboard players set intro_rooms value 50
scoreboard players set intro_large_rooms value 2
scoreboard players set intro_horde_spawned value 0
scoreboard players set intro_horde_monsters value 0
scoreboard players set intro_spine_chests value 0
scoreboard players reset @a mine_diorite

#Summon starting room
execute positioned -8 217 -14 run function tid:dungeon/intro/select_entrance

#Done, now move to the next phase
scoreboard players set intro_handler_phase value 20

