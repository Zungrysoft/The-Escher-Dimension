#Message to notify that the world is being built
say Please wait while the city generates...
say Generating Land

#Spawn Platform (Temporary)
execute in tid:layer_sin run fill -5 183 -5 5 187 5 minecraft:bedrock
execute in tid:layer_sin run fill -4 183 -4 4 186 4 minecraft:air
execute in tid:layer_sin run fill -5 182 -5 5 182 5 minecraft:bedrock
execute in tid:layer_sin run fill -5 54 -5 5 59 5 minecraft:blue_wool
execute in tid:layer_sin run setblock 2 183 2 torch
execute in tid:layer_sin run setblock -2 183 2 torch
execute in tid:layer_sin run setblock 2 183 -2 torch
execute in tid:layer_sin run setblock -2 183 -2 torch
#Storehouse for orange wool
execute in tid:layer_sin run fill 0 129 0 32 156 32 minecraft:bedrock
execute in tid:layer_sin run fill 1 129 1 32 155 32 minecraft:orange_wool
execute in tid:layer_sin run fill 0 1 0 32 28 32 minecraft:blue_wool
#Storehouse for yellow wool
execute in tid:layer_sin run fill 33 129 33 65 156 65 minecraft:bedrock
execute in tid:layer_sin run fill 33 129 33 64 155 64 minecraft:yellow_wool
execute in tid:layer_sin run fill 33 1 33 65 28 65 minecraft:blue_wool
#Storehouse for green wool
execute in tid:layer_sin run fill 0 129 33 32 156 65 minecraft:bedrock
execute in tid:layer_sin run fill 1 129 33 32 155 64 minecraft:green_wool
execute in tid:layer_sin run fill 0 1 32 32 28 65 minecraft:blue_wool
#Storehouse for purple wool
execute in tid:layer_sin run fill 33 129 0 65 156 32 minecraft:bedrock
execute in tid:layer_sin run fill 33 129 1 64 155 32 minecraft:purple_wool
execute in tid:layer_sin run fill 33 1 0 65 28 32 minecraft:blue_wool
#Storehouse for Polished Blackstone Bricks
execute in tid:layer_sin run fill 0 155 0 65 155 65 minecraft:polished_blackstone_bricks

#Build the First Platform
setblock -15 169 -15 minecraft:structure_block{name: "tid:sin/land_large", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock -15 170 -15 minecraft:redstone_block
fill -15 41 -15 14 53 14 minecraft:yellow_wool

#Create an entity for carrying the global number of rooms generated
execute in tid:layer_sin run kill @e[type=minecraft:area_effect_cloud,name="sin_roomcount"]
execute in tid:layer_sin run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"sin_roomcount\""}
execute in tid:layer_sin run scoreboard players set @e[type=minecraft:area_effect_cloud,name="sin_roomcount"] tries 0

execute in tid:layer_sin run kill @e[type=minecraft:area_effect_cloud,name="sin_chambers_roomcount"]
execute in tid:layer_sin run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"sin_chambers_roomcount\""}
execute in tid:layer_sin run scoreboard players set @e[type=minecraft:area_effect_cloud,name="sin_chambers_roomcount"] tries 0

#Summon the handler
execute in tid:layer_sin run kill @e[type=minecraft:area_effect_cloud,name="sin_handler"]
execute in tid:layer_sin run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"sin_handler\""}
