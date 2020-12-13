#Shoot every fraction of a second
scoreboard players add @s counter1 1
execute if score @s counter1 matches 10 run function tid:gameplay/turret_shoot
