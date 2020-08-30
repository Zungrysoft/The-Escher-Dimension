#Preload the structure
summon minecraft:area_effect_cloud ~ ~4 ~ {Duration:99999999,CustomName:"\"new_spawn\""}

#Mark the structures so they connect to each other
execute as @e[name="new_spawn"] run function tid:misc/init_directions
scoreboard players set @e[name="new_spawn"] down 1
scoreboard players set @s up 1

#Set its name
data modify entity @e[name="new_spawn",limit=1] CustomName set value '{"text":"sewer_section"}'

#Mark this area as generated
fill ~ ~132 ~ ~4 ~135 ~4 minecraft:blue_wool