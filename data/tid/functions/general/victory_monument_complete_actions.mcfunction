#VM Message
title @a times 20 100 20
title @a title {"text":"The VM is Complete!","color":"yellow"}

#Mark the monument as complete
scoreboard players set monument_complete value 1

#Schedule the opening of the finale portal
schedule function tid:general/open_finale_portal 6s replace
