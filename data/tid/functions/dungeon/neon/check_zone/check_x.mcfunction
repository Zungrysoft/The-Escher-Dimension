#Next direction
scoreboard players set zcount value 0
function tid:dungeon/neon/check_zone/check_z

#Recurse
scoreboard players add xcount value 1
execute if score counter value matches ..5000 unless score xcount value > xmax value positioned ~1 ~ ~ run function tid:dungeon/neon/check_zone/check_x

