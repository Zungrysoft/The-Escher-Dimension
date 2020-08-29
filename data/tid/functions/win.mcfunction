title @a times 20 100 20
title @a title {"text":"Congratulations!","color":"yellow"}
title @a subtitle {"text":"You have beaten \"The Infinite Dungeon!\"","color":"aqua"}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s

schedule function tid:outro 6s append