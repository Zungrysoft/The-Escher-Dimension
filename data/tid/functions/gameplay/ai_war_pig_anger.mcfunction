#Set the war pig to be angry at the nearest player
execute if entity @p[distance=0..15,gamemode=survival] run data modify entity @s AngerTime set value 100
data modify entity @s AngryAt set from entity @p[distance=0..15,gamemode=survival] UUID
