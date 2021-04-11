#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/junction", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~8 ~138 ~8 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~8 255 ~8 soul_soil replace black_concrete
fill ~4 255 ~ ~4 255 ~8 nether_bricks replace soul_soil
fill ~ 255 ~4 ~8 255 ~4 nether_bricks replace soul_soil

#Summon other doorways for further generation
execute unless entity @s[name="soulsand_south"] run summon minecraft:area_effect_cloud ~4 ~2 ~ {Duration:99999999,CustomName:"\"soulsand_north\""}
execute unless entity @s[name="soulsand_north"] run summon minecraft:area_effect_cloud ~4 ~2 ~8 {Duration:99999999,CustomName:"\"soulsand_south\""}
execute unless entity @s[name="soulsand_east"] run summon minecraft:area_effect_cloud ~ ~2 ~4 {Duration:99999999,CustomName:"\"soulsand_west\""}
execute unless entity @s[name="soulsand_west"] run summon minecraft:area_effect_cloud ~8 ~2 ~4 {Duration:99999999,CustomName:"\"soulsand_east\""}

#Count the room in the total
scoreboard players remove soulsand_rooms value 1

#We're done here
kill @s
