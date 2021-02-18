#Particles
particle minecraft:soul ~ ~.1 ~ 0.2 0 0.2 0.06 1

#Kill self if there is no priest nearby
execute unless entity @e[type=zombie,tag=priest,distance=0..15] run function tid:gameplay/ai_grave_break
