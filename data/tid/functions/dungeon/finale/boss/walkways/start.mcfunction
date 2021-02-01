#Kill any existing doorway entities
kill @e[tag=walkway]

#Start it off with a platform
function tid:dungeon/finale/boss/walkways/select_platform

#Start the recursion
execute as @e[type=area_effect_cloud,tag=walkway,limit=1,sort=random] at @s run function tid:dungeon/finale/boss/walkways/generate
