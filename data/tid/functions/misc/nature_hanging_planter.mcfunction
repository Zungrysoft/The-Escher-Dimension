#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Scatter random plants and grass
execute if predicate tid:random_33 run setblock ~ ~ ~ grass
execute if predicate tid:random_25 run setblock ~ ~ ~ oxeye_daisy
execute if predicate tid:random_20 run setblock ~ ~ ~ barrel{LootTable: "tid:chests/nature"}

execute if predicate tid:random_33 run setblock ~1 ~ ~ grass
execute if predicate tid:random_25 run setblock ~1 ~ ~ oxeye_daisy

execute if predicate tid:random_33 run setblock ~ ~ ~1 grass
execute if predicate tid:random_25 run setblock ~ ~ ~1 oxeye_daisy

execute if predicate tid:random_33 run setblock ~1 ~ ~1 grass
execute if predicate tid:random_25 run setblock ~1 ~ ~1 oxeye_daisy

execute if predicate tid:random_33 run setblock ~-1 ~ ~ grass
execute if predicate tid:random_25 run setblock ~-1 ~ ~ oxeye_daisy

execute if predicate tid:random_33 run setblock ~ ~ ~-1 grass
execute if predicate tid:random_25 run setblock ~ ~ ~-1 oxeye_daisy

execute if predicate tid:random_33 run setblock ~-1 ~ ~-1 grass
execute if predicate tid:random_25 run setblock ~-1 ~ ~-1 oxeye_daisy

execute if predicate tid:random_33 run setblock ~1 ~ ~-1 grass
execute if predicate tid:random_25 run setblock ~1 ~ ~-1 oxeye_daisy

execute if predicate tid:random_33 run setblock ~-1 ~ ~1 grass
execute if predicate tid:random_25 run setblock ~-1 ~ ~1 oxeye_daisy

#Randomly change the flowers
execute if predicate tid:random_10 run fill ~-1 ~ ~-1 ~1 ~ ~1 cornflower replace oxeye_daisy
execute if predicate tid:random_15 run fill ~-1 ~ ~-1 ~1 ~ ~1 lily_of_the_valley replace oxeye_daisy
execute if predicate tid:random_15 run fill ~-1 ~ ~-1 ~1 ~ ~1 dandelion replace oxeye_daisy
execute if predicate tid:random_20 run fill ~-1 ~ ~-1 ~1 ~ ~1 poppy replace oxeye_daisy
execute if predicate tid:random_25 run fill ~-1 ~ ~-1 ~1 ~ ~1 allium replace oxeye_daisy
execute if predicate tid:random_33 run fill ~-1 ~ ~-1 ~1 ~ ~1 blue_orchid replace oxeye_daisy
execute if predicate tid:random_50 run fill ~-1 ~ ~-1 ~1 ~ ~1 azure_bluet replace oxeye_daisy

