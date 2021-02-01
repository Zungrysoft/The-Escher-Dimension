#Message to notify that the world is being built
say Generating Final Challenge...

#Storehouse for orange wool
fill 1000 129 1000 1033 156 1033 minecraft:bedrock
fill 1001 129 1001 1033 155 1033 minecraft:orange_wool
fill 1000 1 0 1032 28 1032 minecraft:air

#Reset some globals
scoreboard players set generated_gold_stalag value 0
scoreboard players set generated_diamond_stalag value 0
scoreboard players set generated_iron_stalag value 0
scoreboard players set generated_lapis_stalag value 0
scoreboard players set finale_stalag_type value 0
scoreboard players reset victory value

#Generate the entrance room
execute positioned -12 140 -12 run function tid:dungeon/finale/select_entrance

#Done, now move to the next phase
scoreboard players set finale_handler_phase value 20
