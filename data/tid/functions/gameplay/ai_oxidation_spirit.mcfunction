#Convert arrows to fireballs
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:2b}],pickup:0b},distance=..3] at @s run function tid:gameplay/ai_oxidation_spirit_shoot
