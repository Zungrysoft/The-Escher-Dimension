#Check if a willow should generate here
#Ensures the block it is sitting on is solid and there is a downward area for it to flow into
execute if block ~ ~-1 ~ #tid:jungle_willow_valid if block ~ ~-1 ~-1 #tid:jungle_overwrite if block ~ ~-2 ~-1 #tid:jungle_overwrite run function tid:misc/jungle_willow_start_north
execute if block ~ ~-1 ~ #tid:jungle_willow_valid if block ~ ~-1 ~1 #tid:jungle_overwrite if block ~ ~-2 ~1 #tid:jungle_overwrite run function tid:misc/jungle_willow_start_south
execute if block ~ ~-1 ~ #tid:jungle_willow_valid if block ~1 ~-1 ~ #tid:jungle_overwrite if block ~1 ~-2 ~ #tid:jungle_overwrite run function tid:misc/jungle_willow_start_east
execute if block ~ ~-1 ~ #tid:jungle_willow_valid if block ~-1 ~-1 ~ #tid:jungle_overwrite if block ~-1 ~-2 ~ #tid:jungle_overwrite run function tid:misc/jungle_willow_start_west