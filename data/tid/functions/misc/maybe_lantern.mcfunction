#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Decide whether to generate a lantern
execute if predicate tid:random_10 run setblock ~ ~ ~ soul_lantern

#Fill in with hyphae to prevent holes in bridge pieces
execute if block ~ ~2 ~ warped_hyphae run fill ~ ~ ~ ~ ~1 ~ warped_hyphae
execute if block ~1 ~ ~ warped_hyphae run fill ~ ~ ~ ~ ~1 ~ warped_hyphae
execute if block ~-1 ~ ~ warped_hyphae run fill ~ ~ ~ ~ ~1 ~ warped_hyphae