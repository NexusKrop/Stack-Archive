scoreboard players set @s viceCache 3334
execute as @e[type=armor_stand,tag=building_protector] at @s run execute if score @s protectorId = @a[scores={level=3..,viceCache=3334},limit=1] dlprotect run scoreboard players set @s viceCache 13771
execute unless entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13771}] run tellraw @s[scores={level=3..}] [{"text": "GCS3","color": "aqua"},{"text": ">> ","color": "white","bold": true},{"text": "指定的保护器不存在","color": "red"}]
execute if entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13771}] run tellraw @s[scores={level=3..}] [{"text": "GCS3","color": "aqua"},{"text": ">> ","color": "white","bold": true},{"text": "已撤销保护器","color": "white"}]
execute if entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13771}] run tellraw @a [{"text": "GCS3","color": "aqua"},{"text": ">> ","color": "white","bold": true},{"text": "管理员","color": "white"},{"selector":"@s","color": "red"},{"text": "撤销了房主告示牌保护器 ID:","color": "white"},{"score":{"name": "@e[type=armor_stand,tag=building_protector,scores={viceCache=13771},limit=1]","objective": "protectorId"}}]
execute if entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13771}] run kill @e[type=armor_stand,tag=building_protector,scores={viceCache=13771},limit=1]
scoreboard players set @e[type=armor_stand,tag=building_protector,scores={viceCache=13771}] viceCache 0
scoreboard players set @s viceCache 0
scoreboard players set @s dlprotect 0