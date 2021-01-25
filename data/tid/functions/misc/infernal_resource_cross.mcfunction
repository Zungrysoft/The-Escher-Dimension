#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Build the blocks
execute positioned ~ ~ ~ run function tid:misc/infernal_resource_stack_block
execute positioned ~1 ~ ~ run function tid:misc/infernal_resource_stack_block
execute positioned ~2 ~ ~ run function tid:misc/infernal_resource_stack_block
execute positioned ~-1 ~ ~ run function tid:misc/infernal_resource_stack_block
execute positioned ~-2 ~ ~ run function tid:misc/infernal_resource_stack_block
execute positioned ~ ~ ~1 run function tid:misc/infernal_resource_stack_block
execute positioned ~ ~ ~2 run function tid:misc/infernal_resource_stack_block
execute positioned ~ ~ ~-1 run function tid:misc/infernal_resource_stack_block
execute positioned ~ ~ ~-2 run function tid:misc/infernal_resource_stack_block
