fill ~-1 ~-1 ~-1 ~4 ~-3 ~4 bedrock
fill ~1 ~-1 ~ ~2 ~-1 ~3 air
fill ~ ~-1 ~1 ~3 ~-1 ~2 air
execute if entity @s[tag=!open] run fill ~1 ~-1 ~1 ~2 ~ ~2 bedrock
execute if entity @s[tag=open] run fill ~1 ~-2 ~ ~2 ~-2 ~3 sea_lantern
execute if entity @s[tag=open] run fill ~ ~-2 ~1 ~3 ~-2 ~2 sea_lantern
tag @s add built