#Delete the command block
fill ~ ~ ~ ~ ~-1 ~ air

#Place the starter pile
setblock ~ ~ ~ minecraft:structure_block{name: "tid:misc/finale_stalag_base", posX: -2, posY: -3, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~ ~-1 ~ redstone_block

#Add to the pile
execute positioned ~ ~-4 ~ run function tid:misc/finale_stalag_extend

execute positioned ~1 ~-3 ~ run function tid:misc/finale_stalag_extend
execute positioned ~-1 ~-3 ~ run function tid:misc/finale_stalag_extend
execute positioned ~ ~-3 ~1 run function tid:misc/finale_stalag_extend
execute positioned ~ ~-3 ~-1 run function tid:misc/finale_stalag_extend

execute positioned ~1 ~-2 ~1 run function tid:misc/finale_stalag_extend
execute positioned ~-1 ~-2 ~-1 run function tid:misc/finale_stalag_extend
execute positioned ~1 ~-1 ~-1 run function tid:misc/finale_stalag_extend
execute positioned ~-1 ~-1 ~1 run function tid:misc/finale_stalag_extend

execute positioned ~2 ~-2 ~ run function tid:misc/finale_stalag_extend
execute positioned ~-2 ~-2 ~ run function tid:misc/finale_stalag_extend
execute positioned ~ ~-1 ~2 run function tid:misc/finale_stalag_extend
execute positioned ~ ~-1 ~-2 run function tid:misc/finale_stalag_extend

execute positioned ~2 ~ ~1 run function tid:misc/finale_stalag_extend
execute positioned ~2 ~ ~-1 run function tid:misc/finale_stalag_extend
execute positioned ~-2 ~ ~1 run function tid:misc/finale_stalag_extend
execute positioned ~-2 ~ ~-1 run function tid:misc/finale_stalag_extend

execute positioned ~1 ~ ~2 run function tid:misc/finale_stalag_extend
execute positioned ~1 ~ ~-2 run function tid:misc/finale_stalag_extend
execute positioned ~-1 ~ ~2 run function tid:misc/finale_stalag_extend
execute positioned ~-1 ~ ~-2 run function tid:misc/finale_stalag_extend

#Decide which resource block it should be
execute if predicate tid:random_05 run fill ~-2 ~ ~-2 ~2 ~-9 ~2 redstone_block replace glass
execute if predicate tid:random_10 run fill ~-2 ~ ~-2 ~2 ~-9 ~2 lapis_block replace glass
execute if predicate tid:random_25 run fill ~-2 ~ ~-2 ~2 ~-9 ~2 gold_block replace glass
execute if predicate tid:random_33 run fill ~-2 ~ ~-2 ~2 ~-9 ~2 emerald_block replace glass
execute if predicate tid:random_50 run fill ~-2 ~ ~-2 ~2 ~-9 ~2 diamond_block replace glass
fill ~-2 ~ ~-2 ~2 ~-9 ~2 iron_block replace glass

#Track which of these got generated, so the spawn room can include whatever didn't generate elsewhere
execute if block ~ ~ ~ diamond_block run scoreboard players add generated_diamond_stalag value 1
execute if block ~ ~ ~ gold_block run scoreboard players add generated_gold_stalag value 1
execute if block ~ ~ ~ emerald_block run scoreboard players add generated_emerald_stalag value 1
execute if block ~ ~ ~ lapis_block run scoreboard players add generated_lapis_stalag value 1
execute if block ~ ~ ~ iron_block run scoreboard players add generated_iron_stalag value 1




