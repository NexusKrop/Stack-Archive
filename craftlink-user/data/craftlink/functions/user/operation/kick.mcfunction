# Copyright (C) RelaperCrystal, 2021
# Licensed under GNU Affero General Public License 3.0 or later

# MinecraftSTL Exception
# MinecraftSTL: I hereby grant you to use this function to implement "kick"
# in your own "room".

scoreboard objectives add leaveCache minecraft.custom:leave_game
tag @a[tag=kicked,scores={leaveCache=1..}] remove kicked
scoreboard players set @a[tag=!kicked] leaveCache 0
execute as @a[tag=kicked] at @s run particle minecraft:barrier ~ ~1 ~ 0 0 0 0.2 11111111 force @s