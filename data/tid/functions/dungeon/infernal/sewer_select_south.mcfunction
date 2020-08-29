#Preload the structure
summon minecraft:area_effect_cloud ~ ~ ~5 {Duration:99999999,CustomName:"\"new_spawn\""}

#Mark the structures so they connect to each other
execute as @e[name="new_spawn"] run function tid:misc/init_directions
scoreboard players set @e[name="new_spawn"] north 1
scoreboard players set @s south 1

#Set its name
data modify entity @e[name="new_spawn",limit=1] CustomName set value '{"text":"sewer_section"}'

#Mark this area as generated
fill ~0 ~128 ~5 ~4 ~131 ~9 minecraft:blue_wool