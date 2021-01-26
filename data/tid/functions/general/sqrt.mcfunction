#Based on square root code by NOPEname

#Set the "sqrt value" global scoreboard variable to the number to be operated on, then run this function

#Set up the variables
scoreboard players operation sqrt_return value = sqrt value
scoreboard players set sqrt_temp value 1
scoreboard players set sqrt_2 value 2

#Run the process
execute if score sqrt_return value > sqrt_temp value run function tid:general/sqrt_loop

#Set the return value and we're done
scoreboard players operation sqrt value = sqrt_return value
