#Select the spine piece
function tid:dungeon/finale/boss/select_spine

#Recursion
execute as @e[name="finale_boss_up",limit=1] at @s unless block ~ ~32 ~ clay run function tid:dungeon/finale/boss/spine
