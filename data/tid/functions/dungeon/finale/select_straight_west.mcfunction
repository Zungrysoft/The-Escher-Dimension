#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/straight_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~29 ~-119 ~10 minecraft:blue_wool

#Kill all other doorways
kill @e[type=area_effect_cloud,name="finale_north"]
kill @e[type=area_effect_cloud,name="finale_east"]
kill @e[type=area_effect_cloud,name="finale_west"]
kill @e[type=area_effect_cloud,name="boss_marker"]

#Create new doorways
summon minecraft:area_effect_cloud ~ ~1 ~5 {Duration:99999999,CustomName:"\"finale_west\""}
summon minecraft:area_effect_cloud ~29 ~1 ~5 {Duration:99999999,CustomName:"\"finale_east\""}

#Summon the end marker
execute if entity @s[name="finale_west"] run summon minecraft:area_effect_cloud ~ ~1 ~5 {Duration:99999999,CustomName:"\"boss_marker\""}
execute if entity @s[name="finale_east"] run summon minecraft:area_effect_cloud ~29 ~1 ~5 {Duration:99999999,CustomName:"\"boss_marker\""}

#We're done here
kill @s
