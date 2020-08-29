#Preload the structure
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"soulsand_load_hall_west\""}

#Mark this area as generated
fill ~ ~128 ~ ~16 ~134 ~6 minecraft:green_wool

#Summon other doorways for further generation
summon minecraft:area_effect_cloud ~16 ~ ~3 {Duration:99999999,CustomName:"\"soulsand_east\""}
summon minecraft:area_effect_cloud ~ ~ ~3 {Duration:99999999,CustomName:"\"soulsand_west\""}

#Count the room in the total
scoreboard players remove soulsand_rooms value 1

#We're done here
kill @s

