#Summon a doorway to more features
execute at @s run summon minecraft:area_effect_cloud ~2 ~1 ~ {Duration:99999999,CustomName:"\"infernal_north\""}

#If no features generate here, generate an outflow pipe for decoration
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"sewer_outflow_north\""}

#Make sure we are connected to the outflow
scoreboard players set @s north 1