execute if entity @a[sort=nearest,limit=1,distance=0..15,gamemode=!creative,gamemode=!spectator] run data modify entity @s AngerTime set value 100
data modify entity @s AngryAt set from entity @a[sort=nearest,limit=1,distance=0..15,gamemode=!creative,gamemode=!spectator] UUID
