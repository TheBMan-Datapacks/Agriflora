execute as @e[type=creeper,tag=!IsHere] at @s positioned ~ 125 ~ if entity @s[dy=255] run scoreboard players set coalshroom agri_high 1
execute at @e[type=creeper,tag=!IsHere] if score coalshroom agri_high matches 1 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"CoalshroomZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[type=creeper,tag=!IsHere] if score coalshroom agri_high matches 1 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"CoalshroomStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:10b}}],NoGravity:1b,DisabledSlots:2039583}
execute as @e[type=zombie,tag=!IsHere] at @s positioned ~ 30 ~ if entity @s[dy=-255] run scoreboard players set coalshroom agri_low 1
execute at @e[type=zombie] if block ~ ~-1 ~ stone run tag @e[type=zombie,distance=..1] add CanPlace
execute at @e[type=zombie] if block ~ ~-1 ~ andesite run tag @e[type=zombie,distance=..1] add CanPlace
execute at @e[type=zombie] if block ~ ~-1 ~ diorite run tag @e[type=zombie,distance=..1] add CanPlace
execute at @e[type=zombie] if block ~ ~-1 ~ granite run tag @e[type=zombie,distance=..1] add CanPlace
execute at @e[type=zombie] if block ~ ~-1 ~ cobblestone run tag @e[type=zombie,distance=..1] add CanPlace
execute at @e[type=zombie,tag=!IsHere,tag=CanPlace] if score coalshroom agri_low matches 1 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"CoalshroomZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[type=zombie,tag=!IsHere,tag=CanPlace] if score coalshroom agri_low matches 1 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"CoalshroomStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:10b}}],NoGravity:1b,DisabledSlots:2039583}
tag @e[type=zombie] remove CanPlace
tag @e[type=zombie] add IsHere
scoreboard players set coalshroom agri_low 0


