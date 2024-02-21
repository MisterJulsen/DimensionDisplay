execute if score @s afk_mode matches 1 run tag @s add remafk
execute if entity @s[tag=remafk] run scoreboard players reset @s afk_mode
execute if entity @s[tag=remafk] run tellraw @a ["",{"text":"» ","color":"dark_gray"},{"selector":"@s","color":"red"},{"text":" is no longer AFK!","color":"red"}]
execute if entity @s[tag=remafk] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n» ","color":"dark_gray"},{"text":"You are no longer AFK!","color":"red"}]
execute if entity @s[tag=remafk] run title @s subtitle ["",{"text":"Welcome back!","color":"green"}]
execute if entity @s[tag=remafk] run title @s title {"text":"","color":"gold"}
execute if entity @s[tag=remafk] run title @s reset
execute if entity @s[tag=remafk] run scoreboard players reset @s afk_timer
execute if entity @s[tag=remafk] run scoreboard players reset @s afk
execute if entity @s[tag=remafk] run tag @s remove remafk