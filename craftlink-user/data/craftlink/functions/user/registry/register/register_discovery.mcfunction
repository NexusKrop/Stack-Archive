scoreboard players add @a cache 0
execute as @a[tag=!confirmed] run execute if entity @s[scores={cache=0}] run function craftlink:user/registry/register/register