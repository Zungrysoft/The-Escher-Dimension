#Monster-only effects
execute as @e[predicate=tid:custom_effect,type=#tid:monster] run function tid:gameplay/custom_potions_monster

#All living creatures effects
execute as @e[predicate=tid:custom_effect,type=#tid:living] run function tid:gameplay/custom_potions_living

#Player-only effects
execute as @a[predicate=tid:custom_effect] run function tid:gameplay/custom_potions_player

#0: Random Potion
#1 is used for Shredder Arrow
#2 is used for Sniper Arrow
#3 is used for Zapper Arrow
#4: Wrath Arrow
#5: Collection Potion
#6 is used for Evocation Arrow
#7: Lifesteal I
#8: Lifesteal II
#9: Lifesteal III
#10: Lifesteal IV
#11: Void
#12: Transform
#13 is used for Bouncing Arrow
#14 is used for Bouncing Arrow from Monsters
