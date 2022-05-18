scoreboard objectives add invac_cache dummy
execute as @a run execute store success score @s invac_cache run clear @s #craftlink:eggs{EntityTag:{}} 0
execute as @a run execute store success score @s invac_cache run clear @s #craftlink:pistons{BlockStateTag:{"extended":true}} 0
tag @a[nbt={Inventory:[{tag:{AttributeModifiers:[{}]}}]}] add invac_flag
tag @a[nbt={Inventory:[{tag:{Tags:[]}}]}] add invac_flag
tag @a[nbt={Inventory:[{tag:{EntityTag:{}}}]}] add invac_flag
tag @a[nbt={Inventory:[{tag:{CustomPotionEffects:[{}]}}]}] add invac_flag
tag @a[nbt={Inventory:[{tag:{BlockEntityTag:{Items:[{tag:{CustomPotionEffects:[{}]}}]}}}]}] add invac_flag
tag @a[nbt={Inventory:[{tag:{BlockEntityTag:{Items:[{tag:{EntityTag:{}}}]}}}]}] add invac_flag
#execute as @a run execute store success score @s invac_cache run clear @s #craftlink:potions{CustomPotionEffects:[{}]} 0
execute as @a run execute store success score @s invac_cache run clear @s #craftlink:shulkers{BlockEntityTag:{Items:[{tag:{CustomPotionEffects:[{}]}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s chest{BlockEntityTag:{Items:[{tag:{CustomPotionEffects:[{}]}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s #craftlink:shulkers{BlockEntityTag:{Items:[{id:"minecraft:piston",tag:{BlockStateTag:{"extended":"true"}}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s #craftlink:shulkers{BlockEntityTag:{Items:[{id:"minecraft:sticky_piston",tag:{BlockStateTag:{"extended":"true"}}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s #craftlink:shulkers{BlockEntityTag:{Items:[{tag:{AttributeModifiers:[{}]}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s #craftlink:shulkers{BlockEntityTag:{Items:[{id:"minecraft:command_block"}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s chest{BlockEntityTag:{Items:[{id:"minecraft:piston",tag:{BlockStateTag:{"extended":"true"}}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s chest{BlockEntityTag:{Items:[{id:"minecraft:sticky_piston",tag:{BlockStateTag:{"extended":"true"}}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s chest{BlockEntityTag:{Items:[{tag:{AttributeModifiers:[{}]}}]}} 0
#execute as @a run execute store success score @s invac_cache run clear @s chest{BlockEntityTag:{Items:[{id:"minecraft:command_block"}]}} 0

execute as @e[type=item,nbt={Item:{tag:{EntityTag:{}}}}] at @s run tellraw @a [{"text": "[","color": "white"},{"text": "CraftLink天網系統","color": "aqua"},{"text": "] ","color": "white"},{"selector":"@a[tag=invac_flag]"},{"text": "已發現並清理NBT蛋，附近玩家：","color": "white"},{"selector":"@a[distance=..3]"}]
kill @e[type=item,nbt={Item:{tag:{EntityTag:{}}}}]

execute as @a[tag=invac_flag,tag=!ultimateTrust] run title @a[tag=ultimateTrust] actionbar [" -- BLOCKED ",{"selector":"@a[tag=invac_flag]"}, " BY SKYNET -- "]
execute as @a[tag=invac_flag] run clear @s
execute as @a[tag=invac_flag] run tag @s[tag=!ultimateTrust] add blocked
execute as @a[tag=invac_flag] run tag @s remove invac_flag
execute as @a[tag=invac_flag,tag=ultimateTrust] run title @s actionbar "--- SKYNET ACTIVE ---" 
execute as @a[tag=invac_flag,tag=ultimateTrust] run tag @s remove invac_flag