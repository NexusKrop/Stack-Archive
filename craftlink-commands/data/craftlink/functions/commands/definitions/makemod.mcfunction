scoreboard players set @s viceCache 46546
execute as @a[scores={level=..3}] at @s run execute if score @s uid = @a[scores={level=4..,viceCache=46546},limit=1] makemod run scoreboard players set @s viceCache 12567
execute unless entity @a[scores={viceCache=12567,level=..2}] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "指定的用户不存在或者你无法提拔此用户","color": "red"}]
execute if entity @a[scores={viceCache=12567,level=..2}] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"translate": "commands.ban.success","with": [{"selector":"@a[scores={viceCache=12567,level=..3}]"}],"color": "white"}]
execute if entity @a[scores={viceCache=12567,level=..2}] run scoreboard players set @a[scores={viceCache=12567,level=..2},limit=1] level 3
scoreboard players set @a[scores={viceCache=12567,level=..3}] viceCache 0
scoreboard players set @s viceCache 0
scoreboard players set @s makemod 0