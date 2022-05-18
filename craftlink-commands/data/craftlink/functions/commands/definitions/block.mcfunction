scoreboard players set @s viceCache 3342
execute as @a[scores={level=..3}] at @s run execute if score @s uid = @a[scores={level=4..,viceCache=3342},limit=1] block run scoreboard players set @s viceCache 12440
execute unless entity @a[scores={viceCache=12440,level=..3}] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "指定的用户不存在或者你无法查封此用户","color": "red"}]
execute if entity @a[scores={viceCache=12440,level=..3}] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"translate": "commands.ban.success","with": [{"selector":"@a[scores={viceCache=12440,level=..3}]"}],"color": "white"}]
execute if entity @a[scores={viceCache=12440,level=..3}] run tellraw @a[scores={level=3..}] [{"text": "⚠","color": "red"},{"text": "管理员","color": "yellow"},{"selector":"@a[scores={level=4..,viceCache=3342}]","color": "white"},{"text": "封禁了玩家","color": "yellow"},{"selector":"@a[scores={viceCache=12440,level=..3}]","color": "white"}]
execute if entity @a[scores={viceCache=12440,level=..3}] run tag @a[scores={viceCache=12440,level=..3},limit=1] add blocked
scoreboard players set @a[scores={viceCache=12440,level=..3}] viceCache 0
scoreboard players set @s viceCache 0
scoreboard players set @s block 0