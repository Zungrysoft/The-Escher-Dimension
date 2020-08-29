#Pick a structure from this list

execute if predicate tid:random_25 if blocks ~-12 ~-128 ~-7 ~7 ~-124 ~7 1 129 1 all if blocks ~-12 ~-1 ~-7 ~7 ~-1 ~7 1 155 1 all run scoreboard players set @s counter1 1
execute if predicate tid:random_25 if blocks ~-7 ~-128 ~-12 ~7 ~-124 ~7 1 129 1 all if blocks ~-7 ~-1 ~-12 ~7 ~-1 ~7 1 155 1 all run scoreboard players set @s counter1 2
execute if predicate tid:random_25 if blocks ~-7 ~-128 ~-7 ~12 ~-124 ~7 1 129 1 all if blocks ~-7 ~-1 ~-7 ~12 ~-1 ~7 1 155 1 all run scoreboard players set @s counter1 3
execute if predicate tid:random_25 if blocks ~-7 ~-128 ~-7 ~7 ~-124 ~12 1 129 1 all if blocks ~-7 ~-1 ~-7 ~7 ~-1 ~12 1 155 1 all run scoreboard players set @s counter1 4

execute if score @s counter1 matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/plat_small_stairs_1", posX: -7, posY: 0, posZ: -7, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s counter1 matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/plat_small_stairs_2", posX: -7, posY: 0, posZ: -7, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s counter1 matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/plat_small_stairs_3", posX: -7, posY: 0, posZ: -7, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s counter1 matches 4 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/plat_small_stairs_4", posX: -7, posY: 0, posZ: -7, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Count the room in the total
execute if block ~ ~ ~ structure_block run scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 1

#Mark this area as generated
execute if score @s counter1 matches 1 if block ~ ~ ~ structure_block run fill ~-12 ~-128 ~-7 ~7 ~-124 ~7 minecraft:yellow_wool
execute if score @s counter1 matches 2 if block ~ ~ ~ structure_block run fill ~-7 ~-128 ~-12 ~7 ~-124 ~7 minecraft:yellow_wool
execute if score @s counter1 matches 3 if block ~ ~ ~ structure_block run fill ~-7 ~-128 ~-7 ~12 ~-124 ~7 minecraft:yellow_wool
execute if score @s counter1 matches 4 if block ~ ~ ~ structure_block run fill ~-7 ~-128 ~-7 ~7 ~-124 ~12 minecraft:yellow_wool

#Activate whichever structure block was picked
execute if block ~ ~ ~ structure_block run setblock ~ ~1 ~ minecraft:redstone_block

#We're done here
kill @s

