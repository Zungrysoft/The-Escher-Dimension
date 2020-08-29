#Preload the structure
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"soulsand_load_arena\""}

#Mark this area as generated
fill ~ ~128 ~ ~28 ~138 ~28 minecraft:green_wool

#Summon other doorways for further generation
execute unless entity @s[name="soulsand_south"] run summon minecraft:area_effect_cloud ~14 ~ ~ {Duration:99999999,CustomName:"\"soulsand_north\""}
execute unless entity @s[name="soulsand_north"] run summon minecraft:area_effect_cloud ~14 ~ ~28 {Duration:99999999,CustomName:"\"soulsand_south\""}
execute unless entity @s[name="soulsand_east"] run summon minecraft:area_effect_cloud ~ ~ ~14 {Duration:99999999,CustomName:"\"soulsand_west\""}
execute unless entity @s[name="soulsand_west"] run summon minecraft:area_effect_cloud ~28 ~ ~14 {Duration:99999999,CustomName:"\"soulsand_east\""}

#Count the room in the total
scoreboard players remove soulsand_rooms value 1

#We're done here
kill @s

