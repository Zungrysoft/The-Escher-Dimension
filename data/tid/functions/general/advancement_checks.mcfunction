#Run this check once every second
schedule function tid:general/advancement_checks 1s replace

#Perform the checks
execute as @a at @s run function tid:general/advancement_checks_run