summon minecraft:area_effect_cloud 0 0 0 {Duration:99999999,CustomName:"\"scatter\""}

execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~-1 ~ ~
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~-2 ~ ~
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~-4 ~ ~
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~-8 ~ ~
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~-16 ~ ~
execute if predicate tid:random_33 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~-32 ~ ~

execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~-1
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~-2
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~-4
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~-8
execute if predicate tid:random_50 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~-16
execute if predicate tid:random_33 as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ ~ ~-32

#Reserve the space
execute at @e[type=area_effect_cloud,name="scatter"] run fill ~ 31 ~ ~8 52 ~8 air
execute if predicate tid:random_60 at @e[type=area_effect_cloud,name="scatter"] run fill ~ 32 ~ ~8 67 ~8 air
execute if predicate tid:random_50 at @e[type=area_effect_cloud,name="scatter"] run fill ~ 68 ~ ~8 92 ~8 air

#Maybe put a loot island there
execute at @e[type=area_effect_cloud,name="scatter"] if predicate tid:random_15 run setblock ~ 170 ~ structure_block{name: "tid:hellion/island_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute at @e[type=area_effect_cloud,name="scatter"] if predicate tid:random_15 run setblock ~ 170 ~ structure_block{name: "tid:hellion/island_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute at @e[type=area_effect_cloud,name="scatter"] if predicate tid:random_15 run setblock ~ 170 ~ structure_block{name: "tid:hellion/island_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute at @e[type=area_effect_cloud,name="scatter"] if predicate tid:random_15 run setblock ~ 170 ~ structure_block{name: "tid:hellion/island_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute at @e[type=area_effect_cloud,name="scatter"] if predicate tid:random_15 run setblock ~ 170 ~ structure_block{name: "tid:hellion/island_5", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Active the structure block if an island was generated
execute at @e[type=area_effect_cloud,name="scatter"] if block ~ 170 ~ structure_block run setblock ~ 171 ~ redstone_block

#Get rid of the structure block and redstone block
execute at @e[type=area_effect_cloud,name="scatter"] run fill ~ 170 ~ ~ 171 ~ lava

#Kill the scatterer
kill @e[type=area_effect_cloud,name="scatter"]