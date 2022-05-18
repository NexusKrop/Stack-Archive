scoreboard objectives add protectorId dummy
scoreboard players add @e[type=armor_stand,tag=building_protector] protectorId 0
execute if score maxProtectorId cache matches 0..1 run scoreboard players set maxProtectorId cache 2
scoreboard players add @e[type=armor_stand,tag=building_protector] cache 0

execute store success score pIdSuccess cache run execute as @e[type=armor_stand,tag=building_protector,scores={protectorId=0}] run scoreboard players operation @s protectorId = maxProtectorId cache
execute if score pIdSuccess cache matches 1.. run scoreboard players add maxProtectorId cache 1
execute if score pIdSuccess cache matches 1.. run scoreboard players set pIdSuccess cache 0

execute as @e[type=armor_stand,tag=building_protector] at @s run execute if score @s cache matches 0 run scoreboard players set @s cache 1241
execute as @e[type=armor_stand,tag=building_protector] at @s run execute unless block ~ ~ ~ #minecraft:signs run scoreboard players set @s[scores={cache=1241}] cache 1245
execute as @e[type=armor_stand,tag=building_protector] at @s run execute if block ~ ~ ~ #minecraft:signs run scoreboard players set @s[scores={cache=1247}] cache 1241
execute as @e[type=armor_stand,scores={cache=1245}] at @s run tellraw @a[scores={level=3..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "木牌被毁,ID","color": "white"},{"score":{"name":"@s[type=armor_stand]","objective": "protectorId"},"color": "red"},{"text": " | 最近的玩家："},{"selector":"@a[distance=..5]","color": "red"}]
execute store success score ifSuccessProtect cache run execute as @e[type=armor_stand,scores={cache=1245}] run scoreboard players set @s cache 1247

scoreboard players set ifSuccessProtect cache 0