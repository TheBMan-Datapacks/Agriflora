execute at @e[type=enderman,tag=!IsHere] run scoreboard players add SpawnEnder IsMobSpawn 1
execute at @e[type=enderman,tag=!IsHere] if block ~ ~-1 ~ end_stone if score SpawnEnder IsMobSpawn = HighEnder IsMobSpawn unless entity @e[type=ender_dragon] run summon minecraft:illusion_illager ~ ~ ~
tag @e[type=enderman] add IsHere
execute at @e if score SpawnEnder IsMobSpawn >= HighEnder IsMobSpawn run scoreboard players reset SpawnEnder IsMobSpawn