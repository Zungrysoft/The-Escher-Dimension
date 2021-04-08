#Check
execute if block ~ ~ ~ seagrass run function tid:misc/water_kelp_build

#Recurse
execute if block ~ ~ ~ water positioned ~ ~-1 ~ run function tid:misc/water_kelp_search
