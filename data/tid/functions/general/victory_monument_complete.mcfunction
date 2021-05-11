#Grant everyone the advancement
advancement grant @a only tid:layer_1/victory_monument

#If this is the first time this function was run, do some other stuff
execute unless score monument_complete value matches 1 run function tid:general/victory_monument_complete_actions

#Update the scoreboard
scoreboard players set monument_complete value 1
