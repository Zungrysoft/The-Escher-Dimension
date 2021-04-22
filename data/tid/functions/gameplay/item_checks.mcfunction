#Dynamic effects items
execute if score @s kill_mob matches 1.. run function tid:gameplay/act_kill_mob
execute if score @s damage_dealt matches 1.. run function tid:gameplay/act_deal_damage
execute if score @s block_damage matches 1.. run function tid:gameplay/act_block_damage
execute if score @s mine_spawner matches 1.. run function tid:gameplay/act_mine_spawner
function tid:gameplay/act_take_damage
function tid:gameplay/act_kill_creeper
function tid:gameplay/act_kill_skeleton
function tid:gameplay/act_kill_blaze
function tid:gameplay/act_kill_piglin

#Tomes
execute if score @s tome_use matches 1.. run function tid:gameplay/tome_checks

#Other items
function tid:gameplay/heart_scroll
function tid:gameplay/speed_scroll
function tid:gameplay/damage_scroll
#function tid:gameplay/float_orb
function tid:gameplay/conditional_weapons
#function tid:gameplay/no_sprint
function tid:gameplay/lava_saver_leggings
function tid:gameplay/safety_helmet
function tid:gameplay/igneous
function tid:gameplay/slow_clock
function tid:gameplay/weakness_compass
function tid:gameplay/fire_diamond
function tid:gameplay/book_barrier
function tid:gameplay/spurs
function tid:gameplay/lifesteal

#Reset per-frame check scores
scoreboard players set @s damage_dealt 0
scoreboard players set @s tome_use 0
scoreboard players set @s item_used 0
