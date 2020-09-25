#Next direction
scoreboard players set ycount value 0
function tid:dungeon/neon/check_zone/check_y

#Recurse
scoreboard players add zcount value 1
execute if score counter value matches ..5000 unless score zcount value > zmax value positioned ~ ~ ~1 run function tid:dungeon/neon/check_zone/check_z

