# Teams
team add overworld
team add nether
team add end
team add unknown

# Afk
team add afk
team add afk_ow
team add afk_nt
team add afk_end

# Live
team add ltwilight
team add loverworld
team add lunknown
team add lnether
team add lend


team modify overworld prefix [{"text":"Overworld","color":"green"},{"text":" » ","color":"white"}]
team modify nether prefix [{"text":"Nether","color":"red"},{"text":" » ","color":"white"}]
team modify end prefix [{"text":"End","color":"yellow"},{"text":" » ","color":"white"}]
team modify unknown prefix [{"text":"???","color":"gray"},{"text":" » ","color":"white"}]

# afk
team modify afk prefix [{"text":"AFK","color":"gray"},{"text":" » ","color":"white"}]
team modify afk_ow prefix [{"text":"AFK (Overworld)","color":"gray"},{"text":" » ","color":"white"}]
team modify afk_nt prefix [{"text":"AFK (Nether)","color":"gray"},{"text":" » ","color":"white"}]
team modify afk_end prefix [{"text":"AFK (End)","color":"gray"},{"text":" » ","color":"white"}]

# Live
team modify loverworld prefix [{"text":"Overworld","color":"green"},{"text":" » ","color":"white"}]
team modify lnether prefix [{"text":"Nether","color":"red"},{"text":" » ","color":"white"}]
team modify lend prefix [{"text":"End","color":"yellow"},{"text":" » ","color":"white"}]
team modify lunknown prefix [{"text":"???","color":"gray"},{"text":" » ","color":"white"}]

team modify loverworld suffix [{"text":" LIVE   ","color":"red","bold": true}]
team modify lnether suffix [{"text":" LIVE   ","color":"red","bold": true}]
team modify lend suffix [{"text":" LIVE   ","color":"red","bold": true}]
team modify lunknown suffix [{"text":" LIVE   ","color":"red","bold": true}]


scoreboard objectives add afk trigger
scoreboard objectives add afk_mode dummy
scoreboard objectives add afk_mcooldown trigger
scoreboard objectives add live trigger

scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy

function dimdis:main


tellraw @a ["",{"text":"---------------------------------------------","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n","bold":true},{"text":" DimensionDisplay Datapack","bold":true,"color":"green"},{"text":" - v1.0.0","color":"dark_gray"},{"text":"\n"},{"text":" Created by MrJulsen\n ","color":"gray"},{"text":"View Source Code on ","color":"dark_gray"},{"text":"GitHub","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://github.com/MisterJulsen/DimensionDisplay-Datapack"}},{"text":".","color":"gray"},{"text":"\n"},{"text":"---------------------------------------------","bold":true,"strikethrough":true,"color":"aqua"}]