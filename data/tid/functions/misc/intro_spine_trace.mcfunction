#Add to spine height
scoreboard players remove spine_height value 1

#Make sure we're not running into a building
scoreboard players set temp18 value 0
execute if block ~0 ~ ~0 #tid:air_or_liquid if block ~5 ~ ~0 #tid:air_or_liquid if block ~-4 ~ ~0 #tid:air_or_liquid if block ~0 ~ ~5 #tid:air_or_liquid if block ~0 ~ ~-4 #tid:air_or_liquid run scoreboard players set temp18 value 1

#Recurse
execute if score temp18 value matches 1 if score spine_height value matches 1.. positioned ~ ~1 ~ run function tid:misc/intro_spine_trace

#Build the top
execute if score spine_height value matches 0 if score success value matches 0 positioned ~ ~1 ~ run function tid:misc/intro_spine_build_top

#Tail-End: If we succeeded, build the pillar!
execute if score success value matches 1 run function tid:misc/intro_spine_build
