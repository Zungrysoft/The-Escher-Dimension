#Always open at least a little bit
fill ~ ~ ~ ~ ~1 ~ air

#Large wall open
execute if entity @s[name="infernal_tower_short_north"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="infernal_tower_short_south"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="infernal_tower_short_east"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air
execute if entity @s[name="infernal_tower_short_west"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air

execute if entity @s[name="infernal_tower_tall_north"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="infernal_tower_tall_south"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="infernal_tower_tall_east"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air
execute if entity @s[name="infernal_tower_tall_west"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air

#Reserve the space to prevent upper structures from cutting off the doorway
execute if entity @s[name="infernal_tower_short_north"] run fill ~1 ~-128 ~ ~-1 ~-126 ~ air
execute if entity @s[name="infernal_tower_short_south"] run fill ~1 ~-128 ~ ~-1 ~-126 ~ air
execute if entity @s[name="infernal_tower_short_east"] run fill ~ ~-128 ~1 ~ ~-126 ~-1 air
execute if entity @s[name="infernal_tower_short_west"] run fill ~ ~-128 ~1 ~ ~-126 ~-1 air

execute if entity @s[name="infernal_tower_tall_north"] run fill ~1 ~-128 ~ ~-1 ~-126 ~ air
execute if entity @s[name="infernal_tower_tall_south"] run fill ~1 ~-128 ~ ~-1 ~-126 ~ air
execute if entity @s[name="infernal_tower_tall_east"] run fill ~ ~-128 ~1 ~ ~-126 ~-1 air
execute if entity @s[name="infernal_tower_tall_west"] run fill ~ ~-128 ~1 ~ ~-126 ~-1 air
