#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:soulsand/stairs_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~6 ~139 ~9 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~9 soul_soil replace black_concrete
fill ~3 255 ~ ~3 255 ~9 nether_bricks replace soul_soil

#Summon other doorways for further generation
summon minecraft:area_effect_cloud ~3 ~6 ~9 {Duration:99999999,CustomName:"\"soulsand_south\""}
summon minecraft:area_effect_cloud ~3 ~1 ~ {Duration:99999999,CustomName:"\"soulsand_north\""}

#Count the room in the total
scoreboard players remove soulsand_rooms value 1

#We're done here
kill @s

