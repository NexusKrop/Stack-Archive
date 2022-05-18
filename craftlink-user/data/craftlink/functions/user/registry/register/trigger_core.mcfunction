scoreboard objectives add register trigger
scoreboard players enable @a[tag=!confirmed] register
scoreboard players reset @a[tag=confirmed] register

execute as @a[scores={register=1,cache=1110}] run function craftlink:user/registry/register/beginrule
execute as @a[scores={register=1,cache=11023}] run function craftlink:user/registry/register/beginrule
execute as @a[scores={register=-2,cache=1110}] run function craftlink:user/registry/register/deny
execute as @a[scores={register=2,cache=1111}] run function craftlink:user/registry/register/accept
execute as @a[scores={register=-3,cache=11023}] run tag @s add blocked
execute as @a[scores={register=-3,cache=11023}] run tellraw @a [{"text": "⚠","color": "red"},{"text": " 玩家","color": "yellow"},{"selector":"@s"},{"text": "因两次拒绝协议，已被封禁。"}]
execute as @a[scores={register=-3,cache=11023}] run scoreboard players reset @s register
execute as @a[scores={cache=11023}] run scoreboard players reset @s cache