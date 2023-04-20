# Grant levitation to nearby players
execute as @a[distance=0..4] at @s if block ~ ~-1 ~ minecraft:sea_lantern run function tid:gameplay/levitation_give

# Particles
execute if entity @a[distance=0..7] run particle minecraft:soul_fire_flame ~ ~-0.35 ~ 0.8 0 0.8 0 1

# Kill if sea lantern blocks are destroyed
execute unless block ~ ~-1 ~ sea_lantern unless block ~1 ~-1 ~ sea_lantern unless block ~-1 ~-1 ~ sea_lantern unless block ~ ~-1 ~1 sea_lantern unless block ~ ~-1 ~-1 sea_lantern unless block ~1 ~-1 ~1 sea_lantern unless block ~-1 ~-1 ~1 sea_lantern unless block ~1 ~-1 ~-1 sea_lantern unless block ~-1 ~-1 ~-1 sea_lantern run kill @s
