execute as @e at @s if score @s du_data matches 956 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"FlintlunZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute as @e at @s if score @s du_data matches 956 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"FlintlunStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:18b}}],NoGravity:1b,DisabledSlots:2039583}




execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:17}}},tag=!IsBroke] if block ~ ~ ~ water if block ~ ~-0.1 ~ gravel run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:17}}},tag=!IsBroke] add IsFlintlunItem
execute at @e[tag=IsFlintlunItem] run summon slime ~ ~ ~ {CustomName: "{\"text\":\"FlintlunZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=IsFlintlunItem] run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"FlintlunStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:18b}}],NoGravity:1b,DisabledSlots:2039583}
execute at @e[tag=IsFlintlunItem] run kill @e[tag=IsFlintlunItem]
effect give @e[name=FlintlunZom] minecraft:invisibility 1 1 true
effect give @e[name=FlintlunZom] minecraft:water_breathing 1 1 true
function agriflora:killflintlun