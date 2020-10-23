#Delete the command block
fill ~ ~ ~ ~ ~1 ~ air

#Place the starter pile
setblock ~1 ~ ~ minecraft:structure_block{name: "tid:misc/coal_pile_base", posX: -3, posY: 0, posZ: -2, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~1 ~1 ~ redstone_block

#Add to the pile
execute positioned ~ ~4 ~ run function tid:misc/coal_pile_extend

execute positioned ~1 ~3 ~ run function tid:misc/coal_pile_extend
execute positioned ~-1 ~3 ~ run function tid:misc/coal_pile_extend
execute positioned ~ ~3 ~1 run function tid:misc/coal_pile_extend
execute positioned ~ ~3 ~-1 run function tid:misc/coal_pile_extend

execute positioned ~1 ~2 ~1 run function tid:misc/coal_pile_extend
execute positioned ~-1 ~2 ~-1 run function tid:misc/coal_pile_extend
execute positioned ~1 ~1 ~-1 run function tid:misc/coal_pile_extend
execute positioned ~-1 ~1 ~1 run function tid:misc/coal_pile_extend

execute positioned ~2 ~2 ~ run function tid:misc/coal_pile_extend
execute positioned ~-2 ~2 ~ run function tid:misc/coal_pile_extend
execute positioned ~ ~1 ~2 run function tid:misc/coal_pile_extend
execute positioned ~ ~1 ~-2 run function tid:misc/coal_pile_extend

execute positioned ~2 ~ ~1 run function tid:misc/coal_pile_extend
execute positioned ~2 ~ ~-1 run function tid:misc/coal_pile_extend
execute positioned ~-2 ~ ~1 run function tid:misc/coal_pile_extend
execute positioned ~-2 ~ ~-1 run function tid:misc/coal_pile_extend

execute positioned ~1 ~ ~2 run function tid:misc/coal_pile_extend
execute positioned ~1 ~ ~-2 run function tid:misc/coal_pile_extend
execute positioned ~-1 ~ ~2 run function tid:misc/coal_pile_extend
execute positioned ~-1 ~ ~-2 run function tid:misc/coal_pile_extend

#When these generate in starting areas, they're made of cobblestone instead of stone
execute if block ~ ~-1 ~ bedrock run fill ~-2 ~ ~-2 ~2 ~7 ~2 cobblestone replace stone




