#team leave @a[tag=dimDisOff] 

execute as @a[tag=!dimDisOff] at @s unless entity @s[tag=isLive] if score @s afk_mode matches 1.. if predicate dimdis:afk/overworld run team join afk_ow @s
execute as @a[tag=!dimDisOff] at @s unless entity @s[tag=isLive] if score @s afk_mode matches 1.. if predicate dimdis:afk/the_nether run team join afk_nt @s
execute as @a[tag=!dimDisOff] at @s unless entity @s[tag=isLive] if score @s afk_mode matches 1.. if predicate dimdis:afk/the_end run team join afk_end @s

execute as @a[tag=!dimDisOff] at @s unless entity @s[tag=isLive] unless score @s afk_mode matches 1.. if predicate dimdis:overworld run team join overworld @s
execute as @a[tag=!dimDisOff] at @s unless entity @s[tag=isLive] unless score @s afk_mode matches 1.. if predicate dimdis:the_nether run team join nether @s
execute as @a[tag=!dimDisOff] at @s unless entity @s[tag=isLive] unless score @s afk_mode matches 1.. if predicate dimdis:the_end run team join end @s

execute as @a[tag=!dimDisOff] at @s if entity @s[tag=isLive] unless score @s afk_mode matches 1.. if predicate dimdis:live/overworld run team join loverworld @s
execute as @a[tag=!dimDisOff] at @s if entity @s[tag=isLive] unless score @s afk_mode matches 1.. if predicate dimdis:live/the_nether run team join lnether @s
execute as @a[tag=!dimDisOff] at @s if entity @s[tag=isLive] unless score @s afk_mode matches 1.. if predicate dimdis:live/the_end run team join lend @s

execute as @a[tag=!dimDisOff,team=] unless entity @s[tag=isLive] run team join unknown @s
execute as @a[tag=!dimDisOff,team=] if entity @s[tag=isLive] run team join lunknown @s


# AFK
execute as @a if score @s afk_mode matches 1.. run title @s times 0 100 0
execute as @a if score @s afk_mode matches 1.. run title @s subtitle ["",{"text":"Move","color":"yellow"},{"text":" to Change.","color":"blue"}]
execute as @a if score @s afk_mode matches 1.. run title @s title {"text":"You are AFK!","color":"gold"}

execute as @a[scores={live=1..}] if entity @s[tag=isLive] run tag @s add wasLive
execute as @a[scores={live=1..}] unless entity @s[tag=wasLive] run tag @s add isLive
execute as @a[scores={live=1..}] unless entity @s[tag=wasLive] run tellraw @a ["",{"text":"\n"},{"text":"» ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" is now LIVE.","color":"green"},{"text":"\n "}]
execute as @a[scores={live=1..}] unless entity @s[tag=wasLive] run tellraw @s ["",{"text":"\n"},{"text":"» ","color":"dark_gray"},{"text":"Your ","color":"yellow"},{"text":"LIVE status","color":"red"},{"text":" has been changed to ","color":"yellow"},{"text":"ON","bold":true,"color":"green"},{"text":".","color":"yellow"},{"text":"\n "}]
execute as @a[scores={live=1..}] if entity @s[tag=wasLive] run tag @s remove isLive
execute as @a[scores={live=1..}] if entity @s[tag=wasLive] run team leave @s
execute as @a[scores={live=1..}] if entity @s[tag=wasLive] run tellraw @a ["",{"text":"\n"},{"text":"» ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" is no longer LIVE.","color":"green"},{"text":"\n "}]
execute as @a[scores={live=1..}] if entity @s[tag=wasLive] run tellraw @s ["",{"text":"\n"},{"text":"» ","color":"dark_gray"},{"text":"Your ","color":"yellow"},{"text":"LIVE status","color":"red"},{"text":" has been changed to ","color":"yellow"},{"text":"OFF","bold":true,"color":"red"},{"text":".","color":"yellow"},{"text":"\n "}]
tag @a remove wasLive
scoreboard players reset @a live
scoreboard players enable @a live

schedule function dimdis:main 3s
