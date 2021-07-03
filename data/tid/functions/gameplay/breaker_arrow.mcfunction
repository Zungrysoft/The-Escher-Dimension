#See if this was embedded in a spawner
execute if entity @s[nbt={inBlockState:{Name:"minecraft:spawner"}}] run function tid:gameplay/breaker_arrow_effect
