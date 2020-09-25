function tid:dungeon/neon/zone_room_checks

#Summon the entity we're checking from
summon minecraft:area_effect_cloud ~-44 ~-20 ~-30 {Duration:99999999,Tags:["new"]}
execute as @e[type=area_effect_cloud,tag=new] run function tid:dungeon/neon/zone_randomize_position

#Do the check
scoreboard players set xmax value 32
scoreboard players set ymax value 15
scoreboard players set zmax value 20
execute at @e[type=area_effect_cloud,tag=new] run function tid:dungeon/neon/check_zone/run_check

#If succeeded, build the zone!
execute if score success value matches 1 at @e[type=area_effect_cloud,tag=new] run function tid:dungeon/neon/zone_build

#Remove the entity
kill @e[type=area_effect_cloud,tag=new]