#Pick a structure from this list
setblock ~-12 ~-9 ~1 minecraft:structure_block{name: "tid:infernal/sewer/base", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-12 ~-8 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~-12 ~119 ~1 ~17 ~142 ~30 minecraft:yellow_wool

#Summon the first sewer section
summon minecraft:area_effect_cloud ~-2 ~-1 ~1 {Duration:99999999,CustomName:"\"new_spawn\""}

#Mark the first section so it opens to the north
execute as @e[name="new_spawn"] run function tid:misc/init_directions
scoreboard players set @e[name="new_spawn"] north 1

#Set the first section's name
data modify entity @e[name="new_spawn",limit=1] CustomName set value '{"text":"sewer_section"}'

#Count the room in the total
scoreboard players add @e[name="infernal_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

