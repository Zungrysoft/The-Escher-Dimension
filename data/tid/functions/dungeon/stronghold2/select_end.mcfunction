#Pick a structure from this list
execute if score stronghold2_global value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/end_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score stronghold2_global value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/end_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score stronghold2_global value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/end_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score stronghold2_global value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/end_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~6 ~137 ~6 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~6 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~6 255 ~6 minecraft:stone replace minecraft:bricks
fill ~2 255 ~2 ~4 255 ~4 minecraft:light_gray_concrete replace minecraft:stone

#Finish the room based on the doorway
execute if entity @s[name="stronghold2_north"] run setblock ~3 ~3 ~3 chest[facing=south]{LootTable: "tid:chests/stronghold2"}
execute if entity @s[name="stronghold2_north"] run fill ~3 255 ~3 ~3 255 ~6 minecraft:light_gray_concrete replace minecraft:stone
execute if entity @s[name="stronghold2_north"] run fill ~2 ~3 ~6 ~4 ~6 ~6 air
execute if entity @s[name="stronghold2_west"] run setblock ~3 ~3 ~3 chest[facing=east]{LootTable: "tid:chests/stronghold2"}
execute if entity @s[name="stronghold2_west"] run fill ~3 255 ~3 ~6 255 ~3 minecraft:light_gray_concrete replace minecraft:stone
execute if entity @s[name="stronghold2_west"] run fill ~6 ~3 ~2 ~6 ~6 ~4 air
execute if entity @s[name="stronghold2_south"] run setblock ~3 ~3 ~3 chest[facing=north]{LootTable: "tid:chests/stronghold2"}
execute if entity @s[name="stronghold2_south"] run fill ~3 255 ~3 ~3 255 ~ minecraft:light_gray_concrete replace minecraft:stone
execute if entity @s[name="stronghold2_south"] run fill ~2 ~3 ~ ~4 ~6 ~ air
execute if entity @s[name="stronghold2_east"] run setblock ~3 ~3 ~3 chest[facing=west]{LootTable: "tid:chests/stronghold2"}
execute if entity @s[name="stronghold2_east"] run fill ~3 255 ~3 ~ 255 ~3 minecraft:light_gray_concrete replace minecraft:stone
execute if entity @s[name="stronghold2_east"] run fill ~ ~3 ~2 ~ ~6 ~4 air

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

