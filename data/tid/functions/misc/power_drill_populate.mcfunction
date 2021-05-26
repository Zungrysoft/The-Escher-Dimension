#Bury some ancient debris underneath the drill
#Summon entity to scatter
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}

#Set the target score for scattering debris
scoreboard players set debris_score value 8500

#Recursively add ancient debris
execute as @e[type=area_effect_cloud,name="scatter"] run function tid:misc/power_drill_populate_recurse

#Kill spread entities
kill @e[type=area_effect_cloud,name="scatter"]

#Remove lava below so the drill doesn't get stopped all the time
execute unless predicate tid:random_25 run fill ~3 111 ~3 ~-3 21 ~-3 coarse_dirt replace lava
