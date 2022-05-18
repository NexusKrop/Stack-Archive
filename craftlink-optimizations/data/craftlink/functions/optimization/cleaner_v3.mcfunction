scoreboard players set totalKills cache 0

execute store result score totalKills cache run kill @e[type=#craftlink:cleaned]

execute if score totalKills cache matches 1.. run tellraw @a [{"text": "♻","color": "green"},{"text": " 已清理","color": "aqua"},{"score":{"name": "totalKills","objective": "cache"},"color": "gold"},{"text": "个实体","color": "aqua"}]