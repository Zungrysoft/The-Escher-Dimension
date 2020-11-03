#Vines
execute if block ~1 ~ ~ dark_prismarine run setblock ~ ~ ~ vine[east=true]
execute if block ~-1 ~ ~ dark_prismarine run setblock ~ ~ ~ vine[west=true]
execute if block ~ ~ ~1 dark_prismarine run setblock ~ ~ ~ vine[south=true]
execute if block ~ ~ ~-1 dark_prismarine run setblock ~ ~ ~ vine[north=true]

execute if block ~1 ~ ~ warped_planks run setblock ~ ~ ~ vine[east=true]
execute if block ~-1 ~ ~ warped_planks run setblock ~ ~ ~ vine[west=true]
execute if block ~ ~ ~1 warped_planks run setblock ~ ~ ~ vine[south=true]
execute if block ~ ~ ~-1 warped_planks run setblock ~ ~ ~ vine[north=true]