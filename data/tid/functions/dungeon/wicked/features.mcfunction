#Glass Balls
execute as @e[type=area_effect_cloud,name="wicked_marker",sort=furthest,limit=1] at @s if block ~ ~1 ~ air run function tid:misc/wicked_glass_ball
execute as @e[type=area_effect_cloud,name="wicked_marker",sort=random,limit=9] at @s if block ~ ~1 ~ air run function tid:misc/wicked_glass_ball

#Spawners
execute as @e[type=area_effect_cloud,name="wicked_marker",sort=random,limit=40] at @s if block ~ ~1 ~ air run function tid:misc/wicked_random_spawner

#Kill all remaining markers
kill @e[type=area_effect_cloud,name="wicked_marker"]
