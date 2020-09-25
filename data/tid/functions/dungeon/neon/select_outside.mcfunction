#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/outside", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Maybe put a chest here
scoreboard players set temp value 0
execute if predicate tid:random_05 unless entity @e[type=area_effect_cloud,name="neon_chest_locator",distance=0..25] run scoreboard players set temp value 1
execute if score temp value matches 1 run setblock ~ ~2 ~1 chest{LootTable: "tid:chests/neon"}
execute if score temp value matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"neon_chest_locator\""}

#Mark this area on the map
fill ~ 255 ~ ~1 255 ~1 minecraft:green_terracotta replace minecraft:purpur_block

#We're done here
kill @s