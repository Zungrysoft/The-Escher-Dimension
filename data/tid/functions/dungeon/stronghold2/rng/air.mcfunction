#Vines
execute if block ~ ~1 ~ stone_bricks run setblock ~ ~ ~ vine[up=true]
execute if block ~1 ~ ~ stone_bricks run setblock ~ ~ ~ vine[east=true]
execute if block ~-1 ~ ~ stone_bricks run setblock ~ ~ ~ vine[west=true]
execute if block ~ ~ ~1 stone_bricks run setblock ~ ~ ~ vine[south=true]
execute if block ~ ~ ~-1 stone_bricks run setblock ~ ~ ~ vine[north=true]

execute if block ~ ~ ~-1 mossy_stone_bricks run setblock ~ ~ ~ vine[north=true]
execute if block ~ ~ ~1 mossy_stone_bricks run setblock ~ ~ ~ vine[south=true]
execute if block ~-1 ~ ~ mossy_stone_bricks run setblock ~ ~ ~ vine[west=true]
execute if block ~1 ~ ~ mossy_stone_bricks run setblock ~ ~ ~ vine[east=true]
execute if block ~ ~1 ~ mossy_stone_bricks run setblock ~ ~ ~ vine[up=true]
