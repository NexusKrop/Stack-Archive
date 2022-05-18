tellraw @s [{"text": "⛏","color": "green"},{"text": " 玩家名称：","color": "aqua"},{"selector": "@s","color": "red"}]
tellraw @s [{"text": "⛏","color": "green"},{"text": " UID：","color": "aqua"},{"score":{"name": "@s","objective": "uid"},"color": "red"}]
tellraw @s [{"text": "👑","color": "green"},{"text": " 权限等级：","color": "aqua"},{"score":{"name": "@s","objective": "level"},"color": "red"}]
execute if entity @s[tag=confirmed] run tellraw @s [{"text": "☢","color": "green"},{"text": " 确认状态：","color": "aqua"},{"text": "已确认","color": "red"}]
execute unless entity @s[tag=confirmed] run tellraw @s [{"text": "☢","color": "green"},{"text": " 确认状态：","color": "aqua"},{"text": "未确认","color": "red"}]
execute if entity @s[tag=ultimateTrust] run tellraw @s [{"text": "☢","color": "green"},{"text": " 本机信任：","color": "aqua"},{"text": "是","color": "red"}]
execute unless entity @s[tag=ultimateTrust] run tellraw @s [{"text": "☢","color": "green"},{"text": " 本机信任：","color": "aqua"},{"text": "否","color": "red"}]
execute if entity @s[tag=ultimateTrust] run tellraw @s [{"text": "⛏","color": "green"},{"text": " 缓存数据：","color": "aqua"},{"score":{"name": "@s","objective": "cache"},"color": "red"}]
scoreboard players set @s whoami 0