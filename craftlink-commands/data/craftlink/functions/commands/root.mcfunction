scoreboard objectives add viceCache dummy

# Spawn
scoreboard objectives add spawn trigger
scoreboard players enable @a spawn
execute as @a[scores={spawn=1..}] run tp -22 65 -163
execute as @a[scores={spawn=1..}] run scoreboard players set @s spawn 0


# Stopsound
scoreboard objectives add stopsound trigger
scoreboard players enable @a stopsound
execute as @a[scores={stopsound=1..}] run stopsound @s master
execute as @a[scores={stopsound=1..}] run scoreboard players set @s stopsound 0

# tpprotect
scoreboard objectives add tpprotect trigger
scoreboard players enable @a[scores={level=4..}] tpprotect
scoreboard players reset @a[scores={level=..3}] tpprotect
execute as @a[scores={tpprotect=1..}] at @s run function craftlink:commands/definitions/tpprotect

# tpprotect
scoreboard objectives add tpprotect trigger
scoreboard players enable @a[scores={level=4..}] tpprotect
scoreboard players reset @a[scores={level=..3}] tpprotect
execute as @a[scores={tpprotect=1..}] at @s run function craftlink:commands/definitions/tpprotect

# Block
scoreboard objectives add block trigger
scoreboard players enable @a[scores={level=4..}] block
scoreboard players reset @a[scores={level=..3}] block
execute as @a[scores={block=1..}] at @s run function craftlink:commands/definitions/block

# makemod
scoreboard objectives add makemod trigger
scoreboard players enable @a[scores={level=4..}] makemod
scoreboard players reset @a[scores={level=..3}] makemod
execute as @a[scores={makemod=1..}] at @s run function craftlink:commands/definitions/makemod

# tpto
scoreboard objectives add tpto trigger
scoreboard players enable @a[scores={level=3..}] tpto
scoreboard players reset @a[scores={level=..2}] tpto
execute as @a[scores={tpto=1..}] at @s run function craftlink:commands/definitions/tpto

# kick
scoreboard objectives add kick trigger
scoreboard players enable @a[scores={level=4..}] kick
scoreboard players reset @a[scores={level=..3}] kick
execute as @a[scores={kick=1..}] at @s run function craftlink:commands/definitions/kick

# bsprotect
scoreboard objectives add bsprotect trigger
scoreboard players enable @a[scores={level=3..}] bsprotect
scoreboard players reset @a[scores={level=..2}] bsprotect
execute as @a[scores={bsprotect=1..}] at @s run function craftlink:commands/definitions/bsprotect

# bscreate
scoreboard objectives add bscreate trigger
scoreboard players enable @a[scores={level=3..}] bscreate
scoreboard players reset @a[scores={level=..2}] bscreate
execute as @a[scores={bscreate=1..}] at @s run function craftlink:commands/definitions/bscreate

# Unblock
scoreboard objectives add unblock trigger
scoreboard players enable @a[scores={level=4..}] unblock
scoreboard players reset @a[scores={level=..3}] unblock
execute as @a[scores={unblock=1..}] at @s run function craftlink:commands/definitions/unblock

# CleanWorld
scoreboard objectives add cleanworld trigger
scoreboard players enable @a[scores={level=3..}] cleanworld
scoreboard players reset @a[scores={level=..2}] cleanworld
execute as @a[scores={cleanworld=1..}] at @s run function craftlink:commands/definitions/cleanworld

# Play
scoreboard objectives add play trigger
scoreboard players enable @a play
execute as @a[scores={play=1..}] at @s run function craftlink:commands/definitions/play

# Whoami
scoreboard objectives add whoami trigger
scoreboard players enable @a whoami
execute as @a[scores={whoami=1..}] at @s run function craftlink:commands/definitions/whoami

# Getconnect
scoreboard objectives add getconnect trigger
scoreboard players enable @a getconnect
execute as @a[scores={getconnect=1..}] at @s run function craftlink:commands/definitions/getconnect

# Blip
scoreboard objectives add blip trigger
scoreboard players enable @a blip
execute as @a[scores={blip=1..}] at @s run function craftlink:commands/definitions/blip