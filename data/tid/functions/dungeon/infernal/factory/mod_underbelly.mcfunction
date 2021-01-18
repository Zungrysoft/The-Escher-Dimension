#Lava pool below
execute positioned ~ 0 ~ run fill ~20 ~11 ~20 ~-20 ~20 ~-20 lava

#Create the empty space
execute positioned ~ 0 ~ run fill ~20 ~21 ~20 ~-20 ~30 ~-20 air
execute positioned ~ 0 ~ run fill ~20 ~31 ~20 ~-20 ~40 ~-20 air

#Re-reserve the space
execute positioned ~ 128 ~ run fill ~17 ~11 ~17 ~-17 ~20 ~-17 blue_wool
execute positioned ~ 128 ~ run fill ~17 ~21 ~17 ~-17 ~30 ~-17 blue_wool
execute positioned ~ 128 ~ run fill ~17 ~31 ~17 ~-17 ~40 ~-17 blue_wool
