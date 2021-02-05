#Set counter
scoreboard players set pedestal_score value 10500

#Summon marker
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}

#Start recursion
execute as @e[type=area_effect_cloud,name="scatter"] run function tid:dungeon/sin/scatter_pedestals_run

#Kill marker
kill @e[type=area_effect_cloud,name="scatter"]
