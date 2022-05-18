scoreboard players set @s viceCache 3321
execute as @a at @s run execute if score @s uid = @a[scores={level=3..,viceCache=3321},limit=1] tpto run scoreboard players set @s viceCache 12356
execute unless entity @a[scores={viceCache=12356}] run tellraw @s[scores={level=3..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "指定的用户不存在","color": "red"}]
execute if entity @a[scores={viceCache=12356}] run tellraw @s[scores={level=3..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "已传送至用户","color": "white"}]
execute if entity @a[scores={viceCache=12356}] run tp @s @a[scores={viceCache=12356},limit=1]
scoreboard players set @a[scores={viceCache=12356}] viceCache 0
scoreboard players set @s viceCache 0
scoreboard players set @s tpto 0