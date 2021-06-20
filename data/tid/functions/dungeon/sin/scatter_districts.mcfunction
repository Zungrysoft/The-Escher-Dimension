#Safety district counter
scoreboard players set s_district_count value 0

#Remove all invalid starting points
execute as @e[type=area_effect_cloud,name="scatter_marker"] run function tid:update_coords
execute as @e[type=area_effect_cloud,name="scatter_marker"] unless score @s x matches -80..80 run kill @s
execute as @e[type=area_effect_cloud,name="scatter_marker"] unless score @s z matches -80..80 run kill @s
execute as @e[type=area_effect_cloud,name="scatter_marker"] if score @s x matches -20..20 if score @s z matches -20..20 run kill @s

#Generate the district entities and scatter them
execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:0b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:1b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:2b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:3b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:4b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:5b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:6b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:7b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:8b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:9b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:10b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:11b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:12b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:13b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:14b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if predicate tid:random_40 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:15b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

#Safety Districts
execute if score s_district_count value matches ..3 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:15b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if score s_district_count value matches ..3 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:7b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if score s_district_count value matches ..3 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:3b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

execute if score s_district_count value matches ..3 run summon area_effect_cloud 0 0 0 {Duration:99999999,Color:0b,Tags:["sin_district","new"]}
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/sin/scatter_districts_position

#Remove all remaining markers
kill @e[type=area_effect_cloud,name="scatter_marker"]
