#Random Potion
execute as @a[nbt={ActiveEffects:[{Amplifier:0b,Id:27b}]}] run function tid:gameplay/random_potion
#1 is used for Shredder Arrow
#2 is used for Sniper Arrow
#3 is used for Zapper Arrow
execute as @e[type=#tid:living,nbt={ActiveEffects:[{Amplifier:4b,Id:27b}]}] at @s run function tid:gameplay/release_fireballs

#Clear the bad luck effect
effect clear @a unluck
