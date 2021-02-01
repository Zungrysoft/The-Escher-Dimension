#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/nexus", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~14 ~-112 ~14 minecraft:blue_wool

#Build the stalag
execute positioned ~7 ~15 ~7 run function tid:misc/finale_stalag

#Open the room up
execute at @s run function tid:dungeon/finale/doorway

#Kill all other doorways
kill @e[type=area_effect_cloud,name="finale_north"]
kill @e[type=area_effect_cloud,name="finale_east"]
kill @e[type=area_effect_cloud,name="finale_west"]
kill @e[type=area_effect_cloud,name="boss_marker"]

#Create new doorways
summon minecraft:area_effect_cloud ~7 ~1 ~ {Duration:99999999,CustomName:"\"finale_north\""}
summon minecraft:area_effect_cloud ~ ~1 ~7 {Duration:99999999,CustomName:"\"finale_west\""}
summon minecraft:area_effect_cloud ~14 ~1 ~7 {Duration:99999999,CustomName:"\"finale_east\""}

#Summon the end marker
summon minecraft:area_effect_cloud ~7 ~1 ~ {Duration:99999999,CustomName:"\"boss_marker\""}

#We're done here
kill @s
