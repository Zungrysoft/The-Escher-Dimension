#Forceload the nearby chunks
forceload add ~-25 ~-25 ~25 ~25

#Bossbar
bossbar set minecraft:boss visible true
bossbar set minecraft:boss value 6
scoreboard players set boss_health value 6

#Carve through the earth
execute positioned ~ 145 ~ run function tid:dungeon/finale/boss/carve

#Generate bramble
execute positioned ~ 129 ~ run function tid:dungeon/finale/boss/bramble

#Build staircases
execute positioned ~ 129 ~ run function tid:dungeon/finale/boss/walkways

#Place spawners
execute positioned ~ 144 ~ run function tid:dungeon/finale/boss/spawners

#Build the spine
execute positioned ~ 129 ~ run function tid:dungeon/finale/boss/spine

#Place the cores
execute as @e[name="finale_boss_up",limit=1] at @s run function tid:dungeon/finale/boss/select_head
execute as @e[name="finale_core_location",limit=5,sort=random,y=150,dy=70,x=-1000,dx=2000,z=-1000,dz=2000] at @s run function tid:dungeon/finale/boss/select_core
kill @e[name="finale_core_location"]
