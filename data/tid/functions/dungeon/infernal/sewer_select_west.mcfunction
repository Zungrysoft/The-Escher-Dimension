#Preload the structure
summon minecraft:area_effect_cloud ~-5 ~ ~ {Duration:99999999,CustomName:"\"new_spawn\""}

#Mark the structures so they connect to each other
execute as @e[name="new_spawn"] run function tid:misc/init_directions
scoreboard players set @e[name="new_spawn"] east 1
scoreboard players set @s west 1

#Set its name
data modify entity @e[name="new_spawn",limit=1] CustomName set value '{"text":"sewer_section"}'

#Mark this area as generated
fill ~-5 ~128 ~0 ~-1 ~131 ~4 minecraft:blue_wool