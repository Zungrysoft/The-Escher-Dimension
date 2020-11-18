#Check if a bridge should be here
scoreboard players set pick value 0
execute if block ~1 ~ ~ grass_block if block ~-1 ~ ~ grass_block if block ~ ~ ~1 water if block ~ ~ ~-1 water run scoreboard players set pick value 1
execute if block ~ ~ ~1 grass_block if block ~ ~ ~-1 grass_block if block ~1 ~ ~ water if block ~-1 ~ ~ water run scoreboard players set pick value 2

#Place the bridge
execute if score pick value matches 1 run setblock ~ ~1 ~ oak_slab
execute if score pick value matches 1 run setblock ~1 ~ ~ oak_planks
execute if score pick value matches 1 run setblock ~-1 ~ ~ oak_planks

execute if score pick value matches 2 run setblock ~ ~1 ~ oak_slab
execute if score pick value matches 2 run setblock ~ ~ ~1 oak_planks
execute if score pick value matches 2 run setblock ~ ~ ~-1 oak_planks

#Kill the marker
kill @s
