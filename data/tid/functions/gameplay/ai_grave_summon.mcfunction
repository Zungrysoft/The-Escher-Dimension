#Make sure there is a priest nearby that could revive this grave
execute if entity @e[type=zombie,tag=priest,distance=0..15,limit=1] run function tid:gameplay/ai_grave_summon_run

#Kill self
kill @s
