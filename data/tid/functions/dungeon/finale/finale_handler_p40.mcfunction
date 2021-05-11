#Remove the cage
fill -5 143 -5 5 147 5 air replace bedrock

#Build the boss fight
execute as @e[type=area_effect_cloud,name="boss_marker",limit=1] at @s run function tid:dungeon/finale/boss/start

#Place backup chests
execute unless entity @e[type=area_effect_cloud,name="finale_chest_north"] unless entity @e[type=area_effect_cloud,name="finale_chest_south"] unless entity @e[type=area_effect_cloud,name="finale_chest_west"] unless entity @e[type=area_effect_cloud,name="finale_chest_east"] positioned 0 155 0 run function tid:misc/finale_chest_backup

#Place the chests
execute as @e[type=area_effect_cloud,name="finale_chest_north"] at @s run function tid:misc/finale_chest_north
execute as @e[type=area_effect_cloud,name="finale_chest_south"] at @s run function tid:misc/finale_chest_south
execute as @e[type=area_effect_cloud,name="finale_chest_west"] at @s run function tid:misc/finale_chest_west
execute as @e[type=area_effect_cloud,name="finale_chest_east"] at @s run function tid:misc/finale_chest_east

#Add the teleporter
summon minecraft:area_effect_cloud 3 143 3 {Duration:99999999,CustomName:"\"teleporter\"",Color:13b,Tags:["starts_open"]}

#Build stalags at entrance room
execute positioned 0 172 0 run function tid:misc/finale_entrance_stalags

#These chunks are no longer needed
forceload remove all

say Done!

#Move to nonexistent phase
scoreboard players set finale_handler_phase value 666
