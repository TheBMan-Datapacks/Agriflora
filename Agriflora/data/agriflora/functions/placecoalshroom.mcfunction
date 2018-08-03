execute as @e at @s if score @s du_data matches 959 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"CoalshroomZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute as @e at @s if score @s du_data matches 959 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"CoalshroomStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:10b}}],NoGravity:1b,DisabledSlots:2039583}
effect give @e[name=CoalshroomZom] minecraft:invisibility 1 1 true
function agriflora:killcoalshroom
