#Run this check once every second
schedule function tid:general/advancement_checks 20t replace

#Perform the checks
execute as @a at @s run function tid:general/advancement_checks_run

#Other advancement stuff
function tid:misc/advancement_kill_silverfish_track