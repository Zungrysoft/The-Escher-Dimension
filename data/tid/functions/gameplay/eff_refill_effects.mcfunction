#Sound effect
playsound minecraft:block.brewing_stand.brew player @a

#Particles
particle dust 1 0 0 1 ~ ~1 ~ 0.5 1 0.5 0 40

#Give the player their leftover bottles
execute if score temp value matches 2.. run function tid:gameplay/eff_refill_extra_bottles
