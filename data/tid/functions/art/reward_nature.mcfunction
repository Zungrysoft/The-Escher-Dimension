#Update score so the player can't get it twice
scoreboard players set art_nature value 1

#Sound Effects
function tid:art/complete_sound

#Chest
setblock ~-1 ~ ~1 chest[facing=west]

#Remove the bedrock
fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 stone replace bedrock
