#Recurse
execute if predicate tid:random_40 if block ~ ~ ~ water positioned ~ ~1 ~ run function tid:misc/water_ruin_shortpillar

#Build the block
function tid:misc/water_ruin_block

#Maybe build a chest
execute if predicate tid:random_05 if block ~ ~1 ~ water unless entity @e[type=area_effect_cloud,name="underwater_ruin_treasure",distance=0..37] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"underwater_ruin_treasure\""}
