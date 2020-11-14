#This function expects the roughness, falloff, and bias values to be preselected
#roughness: How jagged the terrain is
#falloff: How large the features of the terrain are
#bias: How much the terrain prefers going up or down

#Reset the landscape
function tid:dungeon/nature/biome/reset
fill 2000 50 2000 2064 50 2064 furnace{CookTimeTotal:10000s}
data modify block 2000 50 2000 CookTimeTotal set value 700
data modify block 2000 50 2064 CookTimeTotal set value 700
data modify block 2064 50 2000 CookTimeTotal set value 700
data modify block 2064 50 2064 CookTimeTotal set value 700

#Run the generator
function tid:dungeon/nature/biome/terrain_generate

#Write the terrain
scoreboard players set x value 6
scoreboard players set z value 6
execute positioned 2006 50 2006 run function tid:dungeon/nature/biome/write_x
