#Build the snow bridge
execute unless entity @e[distance=0..0.3,type=area_effect_cloud,name="snow_placer"] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"snow_placer\""}