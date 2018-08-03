execute at @e[type=illusioner,tag=!IsHere] if block ~ ~-1 ~ end_stone run summon slime ~ ~ ~ {CustomName: "{\"text\":\"EnderiaZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[type=illusioner,tag=!IsHere] if block ~ ~-1 ~ end_stone run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"EnderiaStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:16b}}],NoGravity:1b,DisabledSlots:2039583}
tag @e[type=illusioner] add IsHere 
