scoreboard players set @s cache 1111
function craftlink:command_function/allofrule
tellraw @s {"text": "请仔细阅读上述规则，点击接受则代表您同意遵守上述规则。","bold": true}
tellraw @s [{"text": "[接受]","color": "green","clickEvent": {"action": "run_command","value": "/trigger register"}}," ",{"text": "[拒绝]","color": "red","clickEvent": {"action": "run_command","value": "/trigger register set -2"}}]