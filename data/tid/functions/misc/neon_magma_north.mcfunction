#Make sure the air around is solid
scoreboard players set temp value 0
execute unless block ~1 ~1 ~1 air unless block ~-1 ~1 ~1 air unless block ~1 ~-1 ~1 air unless block ~-1 ~-1 ~1 air unless block ~1 ~1 ~-1 air unless block ~-1 ~1 ~-1 air unless block ~1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 air run scoreboard players set temp value 1
execute unless block ~ ~ ~ purpur_block run scoreboard players set temp value 1

#Make sure there isn't purpur_pillar we're getting too close to
execute if score temp value matches 0 unless block ~ ~ ~ purpur_pillar unless block ~ ~ ~-1 purpur_pillar unless block ~1 ~ ~ purpur_pillar unless block ~1 ~ ~-1 purpur_pillar unless block ~-1 ~ ~ purpur_pillar unless block ~-1 ~ ~-1 purpur_pillar unless block ~ ~1 ~ purpur_pillar unless block ~ ~1 ~-1 purpur_pillar unless block ~ ~-1 ~ purpur_pillar unless block ~ ~-1 ~-1 purpur_pillar run function tid:misc/neon_magma
