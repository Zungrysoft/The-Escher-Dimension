#Decide whether to generate the pillar base
execute if block ~ ~-1 ~ warped_hyphae if block ~ ~ ~ air if blocks ~-3 ~128 ~-3 ~3 ~131 ~3 33 1 33 all run function tid:misc/station_pillar_base_generate

#Kill self
kill @s