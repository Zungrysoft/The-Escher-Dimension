#Display the victory message
title @a times 20 100 20
title @a title {"text":"Thank you for playing!","color":"aqua"}
title @a subtitle {"text":"","color":"aqua"}

#Schedule second message
schedule function tid:general/victory_after_3 10s
