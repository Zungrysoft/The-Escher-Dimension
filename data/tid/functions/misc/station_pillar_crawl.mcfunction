#If it's clear here, keep going
execute if block ~ ~ ~ air if blocks ~1 ~128 ~1 ~-1 ~128 ~-1 1033 1 1033 all positioned ~ ~-1 ~ run function tid:misc/station_pillar_crawl

#If we've hit ground, check whether we should generate a base
execute if block ~ ~-1 ~ warped_hyphae if block ~ ~ ~ air if blocks ~-3 ~128 ~-3 ~3 ~131 ~3 1033 1 1033 all run function tid:misc/station_pillar_base_generate

#If the base was successfully generated, build the pillar on the way back up
execute if score temp value matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 red_nether_bricks replace air
execute if score temp value matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 red_nether_bricks replace warped_hyphae
execute if score temp value matches 1 run fill ~-1 ~128 ~-1 ~1 ~128 ~1 blue_wool