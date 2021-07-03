#Particles
particle minecraft:explosion

#Sounds
playsound minecraft:entity.generic.explode player @a

#Break the spawner
scoreboard players set temp72 value 0
execute if score temp72 value matches 0 positioned ~0 ~ ~0 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~0 ~ ~1 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~1 ~ ~0 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~-1 ~ ~0 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~0 ~ ~-1 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~1 ~ ~1 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~-1 ~ ~1 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~1 ~ ~-1 run function tid:gameplay/breaker_arrow_break_pillar
execute if score temp72 value matches 0 positioned ~-1 ~ ~-1 run function tid:gameplay/breaker_arrow_break_pillar

#If, somehow, the spawner still wasn't broken, just do this copout
execute if score temp72 value matches 0 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace spawner
