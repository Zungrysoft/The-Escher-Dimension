#Always open at least a little bit
fill ~ ~ ~ ~ ~1 ~ air

#Large wall open
execute if entity @s[name="infernal_tower_short_north"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="infernal_tower_short_south"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="infernal_tower_short_east"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air
execute if entity @s[name="infernal_tower_short_west"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~2 ~-2 air

execute if entity @s[name="infernal_tower_tall_north"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~5 ~ air
execute if entity @s[name="infernal_tower_tall_south"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~2 ~ ~ ~-2 ~5 ~ air
execute if entity @s[name="infernal_tower_tall_east"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~5 ~-2 air
execute if entity @s[name="infernal_tower_tall_west"] unless block ~ ~-1 ~ cracked_nether_bricks run fill ~ ~ ~2 ~ ~5 ~-2 air
