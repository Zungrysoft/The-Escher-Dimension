#Mark that we've found an endpoint
scoreboard players set found value 1

#Build the endpoint attachment
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 andesite
execute positioned ~2 ~ ~ run function tid:misc/water_chain_end_xpanel
execute positioned ~-2 ~ ~ run function tid:misc/water_chain_end_xpanel
execute positioned ~ ~2 ~ run function tid:misc/water_chain_end_ypanel
execute positioned ~ ~-2 ~ run function tid:misc/water_chain_end_ypanel
execute positioned ~ ~ ~2 run function tid:misc/water_chain_end_zpanel
execute positioned ~ ~ ~-2 run function tid:misc/water_chain_end_zpanel
