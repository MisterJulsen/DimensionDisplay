# movedByPis
execute as @a[tag=movedByPis] run scoreboard players set @s afk_mcooldown 5
execute as @a[tag=movedByPis] run tag @s remove movedByPis

tag @a remove moving
execute as @a unless score @s afk_mcooldown matches 1.. run tag @s add moving
tag @a[scores={walking_on_water=0,sneaking=0,aviating=0,sprinting=0,walking=0,climbing=0,boating=0,flying=0,crouching=0,swimming=0,horsing=0,pigging=0,stridering=0}] remove moving
execute as @a[scores={walking_on_water=1..}] unless block ~ ~ ~ water[level=0] run tag @s remove moving

execute as @a at @s unless block ~ ~ ~ water run tag @s add inAir
execute as @a at @s if block ~ ~ ~ water run tag @s add inWater

execute as @a store result score @s PositionX run data get entity @s Pos[0]
execute as @a store result score @s PositionZ run data get entity @s Pos[2]

execute as @a run scoreboard players operation @s PositionXd = @s PositionX2
execute as @a run scoreboard players operation @s PositionZd = @s PositionZ2
execute as @a run scoreboard players operation @s PositionXd -= @s PositionX
execute as @a run scoreboard players operation @s PositionZd -= @s PositionZ

execute as @a if entity @s[tag=wasAir,tag=isWater,scores={walking_under=1..}] run tag @s remove moving
execute as @a if entity @s[tag=wasWater,tag=isAir,scores={walking_under=1..}] run tag @s remove moving

execute as @a if entity @s[scores={walking_under=1..,PositionXd=-2..2,PositionZd=-2..2}] run tag @s remove moving
execute as @a[scores={walking_on_water=1..}] unless block ~ ~ ~ water[level=0] if entity @s[tag=wasWater] run tag @s remove moving
execute as @a if entity @s[scores={boating=1..,PositionXd=-2..2,PositionZd=-2..2}] run tag @s remove moving
execute as @a if entity @s[scores={flying=1..,PositionXd=-2..2,PositionZd=-2..2}] run tag @s remove moving
execute as @a if entity @s[scores={walking=1..,PositionXd=-1..1,PositionZd=-1..1}] run tag @s remove moving

execute as @a store result score @s PositionX2 run data get entity @s Pos[0]
execute as @a store result score @s PositionZ2 run data get entity @s Pos[2]
tag @a remove wasAir
tag @a remove wasWater
tag @a remove inAir
tag @a remove inWater
execute as @a at @s unless block ~ ~ ~ water run tag @s add wasAir
execute as @a at @s if block ~ ~ ~ water run tag @s add wasWater


execute as @a[tag=moving] if score @s afk_mode matches 1 run function dimdis:remove_afk

scoreboard players set @a[tag=moving] afk_timer 0
scoreboard players add @a[tag=!moving] afk_timer 1

scoreboard players set @a walking_under 0
scoreboard players set @a walking_on_water 0
scoreboard players set @a sneaking 0
scoreboard players set @a aviating 0
scoreboard players set @a sprinting 0
scoreboard players set @a walking 0
scoreboard players set @a climbing 0
scoreboard players set @a boating 0
scoreboard players set @a crouching 0
scoreboard players set @a carting 0
scoreboard players set @a swimming 0
scoreboard players set @a flying 0
scoreboard players set @a horsing 0
scoreboard players set @a pigging 0
#scoreboard players set @a falling 0
scoreboard players set @a stridering 0

execute as @a[scores={afk_timer=300..}] unless score @s afk_mode matches 1 run function dimdis:set_afk

scoreboard players remove @a[scores={afk_mcooldown=1..}] afk_mcooldown 1


schedule function dimdis:afk/test 1s