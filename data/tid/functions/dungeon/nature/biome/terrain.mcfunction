#This function expects the roughness, falloff, and bias values to be preselected
#roughness: How jagged the terrain is
#falloff: How large the features of the terrain are
#bias: How much the terrain prefers going up or down

#Reset the landscape
function tid:dungeon/nature/biome/biome/reset
fill 2000 50 2000 2064 50 2064 furnace{CookTimeTotal:10000s}
data modify block 2000 50 2000 CookTimeTotal set value 700
data modify block 2000 50 2064 CookTimeTotal set value 700
data modify block 2064 50 2000 CookTimeTotal set value 700
data modify block 2064 50 2064 CookTimeTotal set value 700
summon minecraft:area_effect_cloud 2000 50 2000 {Duration:99999999,Tags:["cursor"]}

#Run the generator
scoreboard players set fs value 64
function tid:dungeon/nature/biome/step
function tid:dungeon/nature/biome/step
function tid:dungeon/nature/biome/step
function tid:dungeon/nature/biome/step
function tid:dungeon/nature/biome/step
function tid:dungeon/nature/biome/step

#Delete the cursor
kill @e[type=area_effect_cloud,tag=cursor]

#Write the terrain
scoreboard players set x value 0
scoreboard players set z value 0
#execute positioned 2000 50 2000 run function tid:dungeon/nature/biome/write_x
