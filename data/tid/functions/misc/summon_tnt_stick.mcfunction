#Short Stick
setblock ~ ~ ~ glass
setblock ~ ~1 ~ tnt

#Tall Stick
execute if predicate tid:random_30 run setblock ~ ~2 ~ tnt
execute if block ~ ~2 ~ tnt run setblock ~ ~1 ~ glass

#Delete the Armor Stand
kill @s