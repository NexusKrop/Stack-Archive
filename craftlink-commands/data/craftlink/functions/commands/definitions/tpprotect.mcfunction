scoreboard players set @s viceCache 3333
execute as @e[type=armor_stand,tag=building_protector] at @s run execute if score @s protectorId = @a[scores={level=3..,viceCache=3333},limit=1] tpprotect run scoreboard players set @s viceCache 13770
execute unless entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13770}] run tellraw @s[scores={level=3..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "指定的保护器不存在","color": "red"}]
execute if entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13770}] run tellraw @s[scores={level=3..}] [{"text": "[","color": "white"},{"text": "CraftLink","color": "aqua"},{"text": "] ","color": "white"},{"text": "已传送至保护器","color": "white"}]
execute if entity @e[type=armor_stand,tag=building_protector,scores={viceCache=13770}] run tp @s @e[type=armor_stand,tag=building_protector,scores={viceCache=13770},limit=1]
scoreboard players set @s viceCache 0
scoreboard players set @e[type=armor_stand,tag=building_protector,scores={viceCache=13770}] viceCache 0
scoreboard players set @s tpprotect 0