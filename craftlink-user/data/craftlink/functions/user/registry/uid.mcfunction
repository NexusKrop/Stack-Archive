scoreboard players add @a uid 0
scoreboard players add lastMaximumUid cache 0
execute if score lastMaximumUid cache matches 0 run scoreboard players set lastMaximumUid cache 1
execute store success score uidSuccess cache run execute as @a[scores={uid=0}] run scoreboard players operation @s uid = lastMaximumUid cache
execute if score uidSuccess cache matches 1.. run scoreboard players add lastMaximumUid cache 1
execute if score uidSuccess cache matches 1.. run scoreboard players set uidSuccess cache 0