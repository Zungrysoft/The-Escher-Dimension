#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/sewer/base", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~29 ~151 ~29 minecraft:yellow_wool
execute at @s positioned ~1 ~-1 ~-2 run fill ~ ~128 ~ ~4 ~131 ~4 minecraft:blue_wool

#Summon the first sewer section
execute at @s run summon minecraft:area_effect_cloud ~1 ~-1 ~-2 {Duration:99999999,CustomName:"\"new_spawn\""}

#Mark the first section so it opens to the west
execute as @e[name="new_spawn"] run function tid:misc/init_directions
scoreboard players set @e[name="new_spawn"] west 1

#Set the first section's name
data modify entity @e[name="new_spawn",limit=1] CustomName set value '{"text":"sewer_section"}'

#Count the room in the total
scoreboard players remove infernal_rooms value 1

#We're done here
kill @s

