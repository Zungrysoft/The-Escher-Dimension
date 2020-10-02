#Damnation Station Outskirts
execute if block ~ ~-1 ~ warped_hyphae run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:red_dye,Count:1}],HandDropChances:[1.00F]}

#Damnation Station Interior
execute if block ~ ~-1 ~ red_nether_bricks run function tid:custom_mobs/revenant

#Kill the source mob
tp @s 1 -100 1