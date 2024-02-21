execute unless score @s afk_mode matches 1 run tag @s add addafk
execute if entity @s[tag=addafk] run scoreboard players set @s afk_mode 1
execute if entity @s[tag=addafk] run tellraw @a ["",{"text":"» ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" is now AFK!","color":"green"}]
execute if entity @s[tag=addafk] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n» ","color":"dark_gray"},{"text":"You are now AFK!","color":"green"}]
execute if entity @s[tag=addafk] run scoreboard players reset @s afk
execute if entity @s[tag=addafk] run tag @s remove addafk