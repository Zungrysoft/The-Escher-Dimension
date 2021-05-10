#Set the score for the recursion
scoreboard players operation counter value = temp value
scoreboard players remove counter value 1

#Start recursing
function tid:gameplay/eff_refill_extra_bottles_give
