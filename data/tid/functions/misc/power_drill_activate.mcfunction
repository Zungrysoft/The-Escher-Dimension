#Play a neat sound effect
playsound minecraft:block.respawn_anchor.set_spawn block @a

#Grant the advancement
advancement grant @a[distance=0..15] only tid:infernal/use_power_drill

#Replace the iron with bedrock
setblock ~1 ~6 ~ bedrock
setblock ~-1 ~6 ~ bedrock
setblock ~ ~6 ~1 bedrock
setblock ~ ~6 ~-1 bedrock

#Get ready to dig!
scoreboard players set @s tries 15
scoreboard players set @s counter1 80