#Murder-Bees can sting an infinite number of times
data modify entity @s HasStung set value 0b

#If it is not angry at anything, find something to attack
execute if entity @s[nbt={AngerTime:0}] run function tid:gameplay/ai_bee_anger