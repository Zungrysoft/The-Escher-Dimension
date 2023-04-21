# Track how long it has been since we have last seen a reflected fireball
scoreboard players remove @s counter1 1

# Detect if there is a fireball nearby
execute if entity @e[type=minecraft:fireball,tag=reflected_fireball,distance=0..9] run scoreboard players set @s counter1 10

# Check if the spawner has been destroyed
scoreboard players set spawner_destroyed value 0
execute unless block ~ ~ ~ minecraft:spawner run scoreboard players set spawner_destroyed value 1
execute if score spawner_destroyed value matches 1 if score @s counter1 matches 1.. run advancement grant @a only tid:layer_3/reflect_fireball_at_spawner
execute if score spawner_destroyed value matches 1 run kill @s

