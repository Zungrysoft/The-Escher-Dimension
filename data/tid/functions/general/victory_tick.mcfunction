#Grant everyone the advancement
advancement grant @a only tid:finale/kill_boss

#Run the explosions
execute if score explosion_timeleft value matches 1.. at @e[type=area_effect_cloud,name="boss_marker",limit=1] positioned ~ 135 ~ run function tid:misc/finale_explosion
