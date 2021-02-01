#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/walkway/platform", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:air
setblock ~ ~1 ~ minecraft:redstone_block

#Kill all other doorways
kill @e[tag=walkway]

#Summon the next doorway
#execute unless entity @s[name="finale_walkway_south"] run summon minecraft:area_effect_cloud ~1 ~2 ~ {Duration:99999999,CustomName:"\"finale_walkway_north\"",Tags:["walkway"]}
#execute unless entity @s[name="finale_walkway_north"] run summon minecraft:area_effect_cloud ~1 ~2 ~2 {Duration:99999999,CustomName:"\"finale_walkway_south\"",Tags:["walkway"]}
#execute unless entity @s[name="finale_walkway_east"] run summon minecraft:area_effect_cloud ~ ~2 ~1 {Duration:99999999,CustomName:"\"finale_walkway_west\"",Tags:["walkway"]}
#execute unless entity @s[name="finale_walkway_west"] run summon minecraft:area_effect_cloud ~2 ~2 ~1 {Duration:99999999,CustomName:"\"finale_walkway_east\"",Tags:["walkway"]}
summon minecraft:area_effect_cloud ~1 ~2 ~ {Duration:99999999,CustomName:"\"finale_walkway_north\"",Tags:["walkway"]}
summon minecraft:area_effect_cloud ~1 ~2 ~2 {Duration:99999999,CustomName:"\"finale_walkway_south\"",Tags:["walkway"]}
summon minecraft:area_effect_cloud ~ ~2 ~1 {Duration:99999999,CustomName:"\"finale_walkway_west\"",Tags:["walkway"]}
summon minecraft:area_effect_cloud ~2 ~2 ~1 {Duration:99999999,CustomName:"\"finale_walkway_east\"",Tags:["walkway"]}
