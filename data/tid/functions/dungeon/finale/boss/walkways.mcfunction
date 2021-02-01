#Start carving
function tid:dungeon/finale/boss/walkways/start

#Recursion
execute positioned ~ ~10 ~ unless block ~ ~50 ~ clay run function tid:dungeon/finale/boss/walkways
