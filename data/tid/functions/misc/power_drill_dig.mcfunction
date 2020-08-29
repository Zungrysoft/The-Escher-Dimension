#Play a sound effect
playsound minecraft:item.trident.thunder block @a

#Summon the tnt
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers ~ ~ 0 1 under 79 false @e[type=area_effect_cloud,name="scatter"]
execute at @e[type=area_effect_cloud,name="scatter"] run summon tnt
execute at @e[type=area_effect_cloud,name="scatter"] run summon tnt
kill @e[type=area_effect_cloud,name="scatter"]

#Spawn some particles
particle dust 1 1 0 7 ~ ~ ~
particle dust 1 1 0 3 ~ ~-1 ~
particle dust 1 1 0 2 ~ ~-2 ~
particle dust 1 1 0 1 ~ ~-3 ~
particle dust 1 1 0 1 ~ ~-4 ~
particle dust 1 1 0 1 ~ ~-5 ~
particle dust 1 1 0 1 ~ ~-6 ~
particle dust 1 1 0 1 ~ ~-7 ~
particle dust 1 1 0 1 ~ ~-8 ~
particle dust 1 1 0 1 ~ ~-9 ~
particle dust 1 1 0 1 ~ ~-10 ~
particle dust 1 1 0 1 ~ ~-11 ~
particle dust 1 1 0 1 ~ ~-12 ~
particle dust 1 1 0 1 ~ ~-13 ~
particle dust 1 1 0 1 ~ ~-14 ~
particle dust 1 1 0 1 ~ ~-15 ~
particle dust 1 1 0 1 ~ ~-16 ~
particle dust 1 1 0 1 ~ ~-17 ~
particle dust 1 1 0 1 ~ ~-18 ~
particle dust 1 1 0 1 ~ ~-19 ~
particle dust 1 1 0 1 ~ ~-20 ~

#Reduce the number of charges left and reset the timer
scoreboard players remove @s tries 1
scoreboard players set @s counter1 40