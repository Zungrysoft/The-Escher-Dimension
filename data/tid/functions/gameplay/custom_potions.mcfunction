#0: Random Potion
execute as @a[nbt={ActiveEffects:[{Amplifier:0b,Id:27b}]}] run function tid:gameplay/random_potion
#1 is used for Shredder Arrow
#2 is used for Sniper Arrow
#3 is used for Zapper Arrow
#4: Wrath Arrow
execute as @e[type=#tid:living,nbt={ActiveEffects:[{Amplifier:4b,Id:27b}]}] at @s run function tid:gameplay/release_fireballs
#5: Collection Potion
execute as @a[nbt={ActiveEffects:[{Amplifier:5b,Id:27b}]}] at @s run function tid:gameplay/collect_items

#Clear the bad luck effect
effect clear @a unluck
