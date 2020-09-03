summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute as @e[name="scatter"] at @s run function tid:dungeon/nature/biome/generate_land_randomize
kill @e[name="scatter"]