#Generate the Redstone Block (As long as something didn't happen to the command block)
execute if block ~1 ~ ~ command_block run setblock ~ ~ ~ redstone_block
execute if block ~-1 ~ ~ command_block run setblock ~ ~ ~ redstone_block
execute if block ~ ~1 ~ command_block run setblock ~ ~ ~ redstone_block
execute if block ~ ~-1 ~ command_block run setblock ~ ~ ~ redstone_block
execute if block ~ ~ ~1 command_block run setblock ~ ~ ~ redstone_block
execute if block ~ ~ ~-1 command_block run setblock ~ ~ ~ redstone_block

#Delete the Area_Effect_Cloud
kill @s