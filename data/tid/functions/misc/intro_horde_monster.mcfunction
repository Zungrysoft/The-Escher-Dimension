#2 Spiders
execute if score intro_horde_monsters value matches 0..1 run function tid:custom_mobs/arachnid

#3 Skeletons
execute if score intro_horde_monsters value matches 2..4 run function tid:custom_mobs/undead

#The rest are Merfolk
execute if score intro_horde_monsters value matches 5.. run function tid:custom_mobs/merfolk

#Count up the tracker
scoreboard players add intro_horde_monsters value 1
