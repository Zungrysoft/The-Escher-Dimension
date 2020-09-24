execute if entity @e[type=#tid:summon_attack,sort=nearest,limit=1,distance=0..15] run data modify entity @s AngerTime set value 100
#data modify entity @s AngryAt set from entity @e[type=#tid:summon_attack_low_priority,sort=nearest,limit=1,distance=0..15] UUID
data modify entity @s AngryAt set from entity @e[type=#tid:summon_attack,sort=nearest,limit=1,distance=0..15] UUID
