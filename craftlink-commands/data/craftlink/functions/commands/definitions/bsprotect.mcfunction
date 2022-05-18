summon armor_stand ~ ~ ~ {Tags:["building_protector"],Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Silent:1b}
tellraw @a[scores={level=3..}] [{"text": "⚠ ","color": "red"},{"text": "玩家","color": "yellow"},{"selector":"@s"},{"text": "放置了一个告示牌保护器","color": "yellow"}]
scoreboard players set @s bsprotect 0