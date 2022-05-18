scoreboard players set @s cache 0
tag @s add confirmed
tellraw @s "感谢您的理解与配合。"
tellraw @a[scores={level=3..}] [{"text": "✏","color": "red"},{"text": " 玩家","color": "yellow"},{"selector":"@s"},{"text": "完成了房间条款流程，已被允许使用創造模式！"}]