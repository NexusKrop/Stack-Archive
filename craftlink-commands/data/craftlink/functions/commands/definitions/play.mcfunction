execute if score @s play matches 1 run function craftlink:command_function/list_play

# Alpha - C418
execute if score @s play matches 2 run playsound music.credits master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 2 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：Alpha - C418","color": "white"}]

# CZ
execute if score @s play matches 3 run playsound music.creative master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 3 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：隨機創造模式音樂","color": "white"}]

# SC
execute if score @s play matches 4 run playsound music.game master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 4 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：隨機生存模式音樂","color": "aqua"}]

# Crimson
execute if score @s play matches 5 run playsound music.nether.crimson_forest master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 5 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：Chrysopoeia - Lena Raine(或其它下界音乐)","color": "aqua"}]

# Nether Wastes
execute if score @s play matches 6 run playsound music.nether.nether_wastes master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 6 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：随机下界荒地音乐","color": "aqua"}]

# Soul Sand Valley
execute if score @s play matches 7 run playsound music.nether.soul_sand_valley master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 7 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：So Below - Lena Raine(或其它下界音乐)","color": "aqua"}]

# Pigstep
execute if score @s play matches 8 run playsound music_disc.pigstep master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 8 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：Pigstep - Lena Raine","color": "aqua"}]

# Ocean
execute if score @s play matches 9 run playsound music.under_water master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 9 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：随机海底音乐","color": "aqua"}]

# Menu
execute if score @s play matches 10 run playsound music.menu master @s ~ ~ ~ 1000000 1 1.0
execute if score @s play matches 10 run tellraw @s [{"text":"⛏ ","color":"green"},{"text": "播放音乐：随机主菜单音乐","color": "aqua"}]

tellraw @a[scores={level=3..}] [{"text": "⚠ ","color": "red"},{"text": "玩家","color": "yellow"},{"selector":"@s"},{"text": "播放了音乐","color": "yellow"},{"score":{"name": "@s","objective": "play"}}]
scoreboard players set @s play 0