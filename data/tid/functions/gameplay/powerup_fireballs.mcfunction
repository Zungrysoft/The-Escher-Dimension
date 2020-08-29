#In order to make it so the player can use reflected Ghast fireballs to destroy Ghast spawners, this function will increase the explosion power of any fireball owner by a player to 2.

#Store the UUID of a random player
execute store result score @s tries run data get entity @r UUID[0]
#Store the UUID of this fireball's owner
execute store result score @s counter1 run data get entity @s Owner[0]
#If they are the same and no player is too close to the fireball, power up the fireball.
execute if score @s tries = @s counter1 unless entity @p[distance=..8] run data modify entity @s ExplosionPower set value 2