#Generate the base land for everything else to generate on.
#say MASTER PHASE 0

execute unless entity @e[name="sin_land_north"] unless entity @e[name="sin_land_south"] unless entity @e[name="sin_land_east"] unless entity @e[name="sin_land_west"] unless entity @e[name="sin_pool_north"] unless entity @e[name="sin_pool_south"] unless entity @e[name="sin_pool_east"] unless entity @e[name="sin_pool_west"] run scoreboard players set @s phase 1