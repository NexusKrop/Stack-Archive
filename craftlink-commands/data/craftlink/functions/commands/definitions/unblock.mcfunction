scoreboard players set @s viceCache 3345
execute as @a[scores={level=..3},tag=blocked] at @s run execute if score @s uid = @a[scores={level=4..,viceCache=3345},limit=1] unblock run scoreboard players set @s viceCache 12455
execute unless entity @a[scores={viceCache=12455,level=..3},tag=blocked] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "指定的用户不存在或者尚未被封禁","color": "red"}]
execute if entity @a[scores={viceCache=12455,level=..3},tag=blocked] run tellraw @s[scores={level=4..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "已执行解除封禁命令","color": "white"}]
execute if entity @a[scores={viceCache=12455,level=..3},tag=blocked] run tag @a[scores={viceCache=12455,level=..3},limit=1,tag=blocked] remove blocked
scoreboard players set @a[scores={viceCache=12455,level=..3}] viceCache 0
scoreboard players set @s viceCache 0
scoreboard players set @s unblock 0