#If we're at the ceiling, create the glowstone
execute if block ~ ~1 ~ warped_hyphae run setblock ~ ~ ~ glowstone

#If we're still in air, go up some more
execute if block ~ ~ ~ air positioned ~ ~1 ~ run function tid:misc/station_ceiling_glowstone