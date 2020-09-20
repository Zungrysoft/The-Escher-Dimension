#Always open at least a little bit
fill ~ ~ ~ ~ ~1 ~ air

#Large wall open
execute if entity @s[name="jungle_tower_north"] unless block ~ ~-1 ~ chiseled_stone_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="jungle_tower_south"] unless block ~ ~-1 ~ chiseled_stone_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="jungle_tower_east"] unless block ~ ~-1 ~ chiseled_stone_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air
execute if entity @s[name="jungle_tower_west"] unless block ~ ~-1 ~ chiseled_stone_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air

#Reserve the space to prevent upper structures from cutting off the doorway
execute if entity @s[name="jungle_tower_north"] run fill ~1 ~-128 ~ ~-1 ~-126 ~ air
execute if entity @s[name="jungle_tower_south"] run fill ~1 ~-128 ~ ~-1 ~-126 ~ air
execute if entity @s[name="jungle_tower_east"] run fill ~ ~-128 ~1 ~ ~-126 ~-1 air
execute if entity @s[name="jungle_tower_west"] run fill ~ ~-128 ~1 ~ ~-126 ~-1 air
