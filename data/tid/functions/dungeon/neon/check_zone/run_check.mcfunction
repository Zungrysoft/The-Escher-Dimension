#Track success
scoreboard players set counter value 0

#Reset xcount
scoreboard players set xcount value 0

#Run it
function tid:dungeon/neon/check_zone/check_x

#Return success
scoreboard players set success value 0
execute if score counter value matches 1280..5000 run scoreboard players set success value 1