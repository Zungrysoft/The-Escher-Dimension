#Glass Balls
execute as @e[type=area_effect_cloud,name="wicked_marker",sort=furthest,limit=1] at @s if block ~ ~1 ~ air run function tid:misc/wicked_glass_ball
execute as @e[type=area_effect_cloud,name="wicked_marker",sort=random,limit=15] at @s if block ~ ~1 ~ air run function tid:misc/wicked_glass_ball

#Kill all remaining markers
kill @e[type=area_effect_cloud,name="wicked_marker"]
