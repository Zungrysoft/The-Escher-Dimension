#Blocks
execute if block ~ ~ ~ mossy_cobblestone run setblock ~ ~ ~ cobblestone

#Stairs
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=north,half=bottom] run setblock ~ ~ ~ cobblestone_stairs[facing=north,half=bottom]
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=south,half=bottom] run setblock ~ ~ ~ cobblestone_stairs[facing=south,half=bottom]
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=east,half=bottom] run setblock ~ ~ ~ cobblestone_stairs[facing=east,half=bottom]
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=west,half=bottom] run setblock ~ ~ ~ cobblestone_stairs[facing=west,half=bottom]

execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=north,half=top] run setblock ~ ~ ~ cobblestone_stairs[facing=north,half=top]
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=south,half=top] run setblock ~ ~ ~ cobblestone_stairs[facing=south,half=top]
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=east,half=top] run setblock ~ ~ ~ cobblestone_stairs[facing=east,half=top]
execute if block ~ ~ ~ mossy_cobblestone_stairs[facing=west,half=top] run setblock ~ ~ ~ cobblestone_stairs[facing=west,half=top]

#Slabs
execute if block ~ ~ ~ mossy_cobblestone_slab[type=bottom] run setblock ~ ~ ~ cobblestone_slab[type=bottom]
execute if block ~ ~ ~ mossy_cobblestone_slab[type=top] run setblock ~ ~ ~ cobblestone_slab[type=top]

#Walls
execute if block ~ ~ ~ mossy_cobblestone_wall run setblock ~ ~ ~ cobblestone_wall