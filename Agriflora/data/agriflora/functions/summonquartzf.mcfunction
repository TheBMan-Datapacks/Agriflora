execute at @e[type=zombie_pigman,tag=!IsHere] run scoreboard players add SpawnFlower IsNFSpawn 1
execute at @e[type=zombie_pigman,tag=!IsHere] if score SpawnFlower IsNFSpawn matches 30 run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Quartzelia\"}"},Unbreakable:1b,Damage:11}}}
tag @e[type=zombie_pigman] add IsHere
execute at @e if score SpawnFlower IsNFSpawn >= reset IsNFSpawn run scoreboard players reset SpawnFlower IsNFSpawn