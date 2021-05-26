#Hide the boss's health bar
bossbar set minecraft:boss visible false

#Display the victory message
title @a times 20 100 20
title @a title {"text":"Victory!","color":"aqua"}
title @a subtitle {"text":"You have beaten The Escher Dimension!","color":"aqua"}

#Schedule second message
schedule function tid:general/victory_after_2 7s
