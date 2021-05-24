#Summon the grave
function tid:general/grave_build

#Now that the grave is built, clear their inventory
clear @s

#Drop the experience orbs
function tid:general/death_xp

#Give nearby monsters persistence so the player doesn't get their items back too easy
execute as @e[type=#tid:monster,limit=5,distance=0..10] run data modify entity @s PersistenceRequired set value 1b
