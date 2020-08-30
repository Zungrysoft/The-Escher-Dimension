#Platform
fill ~-7 ~-3 ~-7 ~7 ~ ~7 minecraft:bedrock
#Air Pocket
fill ~-7 ~1 ~-7 ~7 ~5 ~7 minecraft:air
#Cage
fill ~-5 ~1 ~-5 ~5 ~5 ~5 minecraft:bedrock
fill ~-4 ~1 ~-4 ~4 ~4 ~4 minecraft:air
#Torches
setblock ~3 ~1 ~3 torch
setblock ~-3 ~1 ~3 torch
setblock ~3 ~1 ~-3 torch
setblock ~-3 ~1 ~-3 torch
#Mark this area on the map
fill ~-7 255 ~-7 ~7 255 ~7 minecraft:stone replace minecraft:black_concrete
#Reserve the area this dungeon takes up
fill ~-7 ~-131 ~-7 ~7 ~-123 ~7 minecraft:air
fill ~-7 ~125 ~-7 ~7 ~133 ~7 minecraft:air
#These chunks are no longer needed
forceload remove -7 -7 7 7