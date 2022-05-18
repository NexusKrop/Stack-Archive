scoreboard players set @s cache 11023
tellraw @s "§c§l警告！该动作不可撤回！"
tellraw @s "您真的想要拒绝条款吗？"
tellraw @s [{"text": "[我反悔了]","color": "green","clickEvent": {"action": "run_command","value": "trigger register set 1"}}," ",{"text": "[确认拒绝]","color": "red","clickEvent": {"action": "run_command","value": "trigger register set -3"}}]