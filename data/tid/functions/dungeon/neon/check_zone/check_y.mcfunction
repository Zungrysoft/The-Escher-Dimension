#Fail the check if it has found a reserved block
execute unless block ~ ~128 ~ orange_wool unless block ~ ~128 ~ green_wool run scoreboard players set counter value 9999999
execute if block ~ ~128 ~ green_wool run scoreboard players add counter value 1

#Recurse
scoreboard players add ycount value 1
execute if score counter value matches ..5000 unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/neon/check_zone/check_y