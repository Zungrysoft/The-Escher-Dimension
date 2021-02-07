#Check if the player has pending hunger
execute if score @s pending_hunger matches 1.. run function tid:gameplay/restore_hunger
