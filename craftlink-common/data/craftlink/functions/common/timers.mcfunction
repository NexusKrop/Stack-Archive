scoreboard players add timer60 cache 1
execute if score timer60 cache matches 1200.. run function #craftlink:each_minute
execute if score timer60 cache matches 1200.. run scoreboard players set timer60 cache 0