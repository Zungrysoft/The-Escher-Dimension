#0: Random Potion
execute if entity @s[nbt={ActiveEffects:[{Amplifier:0b,Id:27b}]}] run function tid:gameplay/random_potion
#5: Collection Potion
execute if entity @s[nbt={ActiveEffects:[{Amplifier:5b,Id:27b}]}] at @s run function tid:gameplay/collect_items
#7: Lifesteal I
execute if entity @s[nbt={ActiveEffects:[{Amplifier:7b,Id:27b}]}] at @s run function tid:gameplay/lifesteal_grant_0
#8: Lifesteal II
execute if entity @s[nbt={ActiveEffects:[{Amplifier:8b,Id:27b}]}] at @s run function tid:gameplay/lifesteal_grant_1
#9: Lifesteal III
execute if entity @s[nbt={ActiveEffects:[{Amplifier:9b,Id:27b}]}] at @s run function tid:gameplay/lifesteal_grant_2
#10: Lifesteal IV
execute if entity @s[nbt={ActiveEffects:[{Amplifier:10b,Id:27b}]}] at @s run function tid:gameplay/lifesteal_grant_3

#Clear the bad luck effect
effect clear @s unluck
