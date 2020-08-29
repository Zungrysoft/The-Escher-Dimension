#Start Generating more land on top of the main land
#say MASTER PHASE 1

#Spread the districts
kill @e[tag=sin_district]
execute if predicate tid:random_40 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:0b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:1b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:2b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:3b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:4b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:5b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:6b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:7b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:8b}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:9b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:10b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:11b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:12b}
execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:13b}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:14b}
execute if predicate tid:random_40 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:15b}
#execute if predicate tid:random_01 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["sin_district"],Color:16b}

#Spread the districts
spreadplayers 0 0 0 150 false @e[tag=sin_district]

#Reset the room counter
scoreboard players set @e[name="sin_roomcount"] tries 0

#Move onto phase 2
scoreboard players set @s phase 2