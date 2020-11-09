#Moves the cursor into position based on scoreboard values
scoreboard players set tempx value 2000
scoreboard players set tempz value 2000
scoreboard players operation tempx value += x value
scoreboard players operation tempz value += z value
execute store result entity @e[type=area_effect_cloud,tag=cursor,limit=1] Pos[0] double 1 run scoreboard players get tempx value
execute store result entity @e[type=area_effect_cloud,tag=cursor,limit=1] Pos[2] double 1 run scoreboard players get tempz value
