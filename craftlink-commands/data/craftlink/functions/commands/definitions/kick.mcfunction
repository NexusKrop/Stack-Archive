scoreboard players set @s viceCache 1710
execute as @a[scores={level=..3}] at @s run execute if score @s uid = @a[scores={level=4..,viceCache=1710},limit=1] kick run scoreboard players set @s viceCache 1711
execute unless entity @a[scores={viceCache=1711,level=..3}] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "指定的用户不存在或者你无法踢出此用户","color": "red"}]
execute if entity @a[scores={viceCache=1711,level=..3}] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"translate": "commands.kick.success","with": [{"selector":"@a[scores={viceCache=1711,level=..3}]"}],"color": "white"}]
execute if entity @a[scores={viceCache=1711,level=..3}] run tellraw @a [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"selector":"@a[scores={viceCache=1711,level=..3}]"},{"translate": "multiplayer.disconnect.kicked","color": "white"}]
execute if entity @a[scores={viceCache=1711,level=..3}] run tag @a[scores={viceCache=1711,level=..3},limit=1] add kicked
scoreboard players set @a[scores={viceCache=1711,level=..3}] viceCache 0
scoreboard players set @s viceCache 0
scoreboard players set @s kick 0