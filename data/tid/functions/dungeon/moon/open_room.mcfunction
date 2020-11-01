#Open the wall
execute if entity @s[name="moon_north"] if block ~ ~-1 ~ end_stone_bricks run fill ~1 ~ ~ ~-1 ~2 ~ air
execute if entity @s[name="moon_south"] if block ~ ~-1 ~ end_stone_bricks run fill ~1 ~ ~ ~-1 ~2 ~ air
execute if entity @s[name="moon_east"] if block ~ ~-1 ~ end_stone_bricks run fill ~ ~ ~1 ~ ~2 ~-1 air
execute if entity @s[name="moon_west"] if block ~ ~-1 ~ end_stone_bricks run fill ~ ~ ~1 ~ ~2 ~-1 air

#Edit Floor
execute if entity @s[name="moon_north"] if block ~ ~-1 ~ end_stone_bricks run fill ~1 ~-1 ~ ~-1 ~-1 ~ polished_granite
execute if entity @s[name="moon_south"] if block ~ ~-1 ~ end_stone_bricks run fill ~1 ~-1 ~ ~-1 ~-1 ~ polished_granite
execute if entity @s[name="moon_east"] if block ~ ~-1 ~ end_stone_bricks run fill ~ ~-1 ~1 ~ ~-1 ~-1 polished_granite
execute if entity @s[name="moon_west"] if block ~ ~-1 ~ end_stone_bricks run fill ~ ~-1 ~1 ~ ~-1 ~-1 polished_granite
