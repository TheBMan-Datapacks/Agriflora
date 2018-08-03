execute at @e[type=creeper,tag=!IsHere] if block ~1 ~ ~ dark_oak_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~-1 ~ ~ dark_oak_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~ ~ ~1 dark_oak_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~ ~ ~-1 dark_oak_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~1 ~ ~ jungle_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~-1 ~ ~ jungle_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~ ~ ~1 jungle_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~ ~ ~-1 jungle_log run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~1 ~ ~ jungle_leaves run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~-1 ~ ~ jungle_leaves run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~ ~ ~1 jungle_leaves run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere] if block ~ ~ ~-1 jungle_leaves run tag @e[type=creeper,distance=..1] add CantIWeed
execute at @e[type=creeper,tag=!IsHere,tag=!CantIWeed] if score coalshroom agri_high matches 0 if block ~ ~-1 ~ grass_block run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Redstun\"}"},Unbreakable:1b,Damage:10}}}