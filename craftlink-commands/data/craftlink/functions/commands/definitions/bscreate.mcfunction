execute unless block ~ ~ ~ #minecraft:signs run tellraw @s [{"text": "⚠","color": "red"},{"text": " 无法设置建筑物告示牌。","color": "yellow"}]
#execute if block ~ ~ ~ #signs run data merge block ~ ~ ~ {Text1:'{"color":"aqua"}',Text2:'{"color":"yellow"}',Text3:'{"color":"red","bold":"true"}'}
execute if block ~ ~ ~ #signs run data modify block ~ ~ ~ Text1 merge value {Text1:'{"color":"aqua"}'}

scoreboard players set @s bscreate 0