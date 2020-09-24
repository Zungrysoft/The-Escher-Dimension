#Random Potion
execute as @a[nbt={ActiveEffects:[{Amplifier:0b,Id:27b}]}] run function tid:gameplay/random_potion

#Clear the bad luck effect
effect clear @s unluck