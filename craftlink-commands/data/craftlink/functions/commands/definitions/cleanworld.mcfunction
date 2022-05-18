function craftlink:optimization/cleaner_v3
tellraw @a[scores={level=3..}] [{"text": "⚠ ","color": "red"},{"text": "管理员","color": "red"},{"selector":"@s","color": "white"},{"text": "触发了一次实体清理","color": "red"}]
scoreboard players set @s cleanworld 0