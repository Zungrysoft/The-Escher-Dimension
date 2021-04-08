#Make sure a block can actually be placed here
execute if block ~ ~ ~ #tid:overwrite if entity @a[distance=0..20,limit=1] run function tid:gameplay/deathweb_place

#Remove self
kill @s
