#Generate another piece
execute if entity @s[name="finale_walkway_north"] run function tid:dungeon/finale/boss/walkways/decide_north
execute if entity @s[name="finale_walkway_south"] run function tid:dungeon/finale/boss/walkways/decide_south
execute if entity @s[name="finale_walkway_west"] run function tid:dungeon/finale/boss/walkways/decide_west
execute if entity @s[name="finale_walkway_east"] run function tid:dungeon/finale/boss/walkways/decide_east

#Recurse if we're still within the bounds
function tid:update_coords
execute if score @s y matches 128..236 as @e[type=area_effect_cloud,tag=walkway,limit=1,sort=random] at @s unless block ~ ~ ~ ancient_debris run function tid:dungeon/finale/boss/walkways/generate
