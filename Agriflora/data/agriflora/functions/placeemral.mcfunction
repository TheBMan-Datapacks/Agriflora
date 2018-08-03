execute as @e at @s if score @s du_data matches 961 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"EmralZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"agri_none"}
execute as @e at @s if score @s du_data matches 961 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"EmralStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:14b}}],NoGravity:1b,DisabledSlots:2039583}
effect give @e[name=EmralZom] minecraft:invisibility 1 1 true
function agriflora:killemral
