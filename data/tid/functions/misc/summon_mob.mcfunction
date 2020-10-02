#Delete the Area_Effect_Cloud
kill @s

#Use color to pick the mob
execute if predicate tid:random_60 if data entity @s {Color:0} run summon zombie
execute if predicate tid:random_60 if data entity @s {Color:1} run summon creeper
execute if predicate tid:random_60 if data entity @s {Color:2} run summon skeleton
execute if predicate tid:random_60 if data entity @s {Color:3} run summon spider
execute if predicate tid:random_60 if data entity @s {Color:4} run summon blaze
execute if predicate tid:random_30 if data entity @s {Color:5} run function tid:custom_mobs/revenant
#Summon Mob Command for reference
#/summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"summon_mob\"",Color:5b}