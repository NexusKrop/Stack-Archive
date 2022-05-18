scoreboard players set @s cache 1172
execute as @a at @s run execute if score @s uid = @a[scores={cache=1172},limit=1] blip run scoreboard players set @s viceCache 1173
execute unless entity @a[scores={viceCache=1173}] run tellraw @s [{"text": "⚠ ","color": "red"},{"text": "指定的用户不存在","color": "yellow"}]
execute if entity @a[scores={viceCache=1173}] run tellraw @s [{"text": "⛏ ","color": "green"},{"text": "已向","color": "aqua"}, {"selector":"@a[scores={viceCache=1173}]","color": "red"},{"text": "发送信号","color": "aqua"}]
execute if entity @a[scores={viceCache=1173}] run tellraw @a[scores={level=3..}] [{"text": "⚠ ","color": "red"},{"selector": "@a[scores={cache=1172}]","color": "white"},{"text": "向","color": "yellow"},{"selector":"@a[scores={viceCache=1173}]","color": "white"},{"text": "示意","color": "yellow"}]
execute if entity @a[scores={viceCache=1173}] run execute at @a[scores={viceCache=1173},limit=1] run playsound entity.experience_orb.pickup master @a[scores={viceCache=1173},limit=1] ~ ~ ~
execute if entity @a[scores={viceCache=1173}] run tellraw @a[scores={viceCache=1173},limit=1] [{"text": "⚠ ","color": "red"},{"selector": "@a[scores={cache=1172}]","color": "white"},{"text": "想要引起你的注意。","color": "yellow"}]
scoreboard players set @a[scores={viceCache=1173}] viceCache 0
scoreboard players set @s cache 0
scoreboard players set @s blip 0