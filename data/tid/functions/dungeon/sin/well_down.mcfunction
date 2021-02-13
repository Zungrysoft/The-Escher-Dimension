#Carve
fill ~-2 ~ ~-2 ~2 ~ ~2 polished_blackstone_bricks
fill ~-1 ~ ~-1 ~1 ~ ~1 air
setblock ~ ~ ~ chain

#Reserve this space that we're carving
fill ~-2 ~-128 ~-2 ~2 ~-128 ~2 air

#Place a secret if we're deep enough
execute if block ~ ~-180 ~ bedrock run function tid:dungeon/sin/check_secret

#Check to see if we have gone deep enough
scoreboard players set temp value 0
execute unless block ~ ~-154 ~ clay run scoreboard players set temp value 1

#If so, generate the bottom room and stop
execute unless score temp value matches 1 run function tid:dungeon/sin/well_bottom

#If not, keep going
execute if score temp value matches 1 positioned ~ ~-1 ~ run function tid:dungeon/sin/well_down
