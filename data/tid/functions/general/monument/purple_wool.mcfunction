#Grant the advancement to everyone
advancement grant @a only tid:monument/purple_wool

#If this is the first time this has been called, spawn fireworks
execute unless score placed_purple_wool value matches 1 positioned -10 59 -38 positioned ~10 ~ ~ run function tid:general/monument/sound
execute unless score placed_purple_wool value matches 1 positioned -10 59.8 -38 positioned ~10 ~ ~ run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{Count:1,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;8991416]}]}}}}

#Set the scoreboard
scoreboard players set placed_purple_wool value 1
