#Start the counter
scoreboard players set wicked_walls value 80

#Summon starting pieces
summon minecraft:area_effect_cloud 7 138 24 {Duration:99999999,CustomName:"\"wicked_west\""}
summon minecraft:area_effect_cloud 31 138 -23 {Duration:99999999,CustomName:"\"wicked_west\""}
summon minecraft:area_effect_cloud -35 138 -28 {Duration:99999999,CustomName:"\"wicked_south\""}
summon minecraft:area_effect_cloud -45 138 0 {Duration:99999999,CustomName:"\"wicked_east\""}

#Recurse
function tid:dungeon/wicked/build_walls_recurse

#Kill remaining doorways
kill @e[name="wicked_north"]
kill @e[name="wicked_south"]
kill @e[name="wicked_west"]
kill @e[name="wicked_east"]
