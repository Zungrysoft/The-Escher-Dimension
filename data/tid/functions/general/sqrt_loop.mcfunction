#Based on square root code by NOPEname
scoreboard players operation sqrt_return value += sqrt_temp value
scoreboard players operation sqrt_return value /= sqrt_2 value

scoreboard players operation sqrt_temp value = sqrt value
scoreboard players operation sqrt_temp value /= sqrt_return value

execute if score sqrt_return value > sqrt_temp value run function tid:general/sqrt_loop
