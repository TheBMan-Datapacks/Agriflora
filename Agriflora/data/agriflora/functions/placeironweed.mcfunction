execute as @e at @s if score @s du_data matches 955 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"IWeedZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute as @e at @s if score @s du_data matches 955 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"IWeedStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:20b}}],NoGravity:1b,DisabledSlots:2039583}






execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ grass_block run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}},OnGround:1b},tag=!IsBroke] add IsIWeedItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ dirt run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}},OnGround:1b},tag=!IsBroke] add IsIWeedItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ coarse_dirt run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}},OnGround:1b},tag=!IsBroke] add IsIWeedItem
execute at @e[tag=IsIWeedItem] run summon slime ~ ~ ~ {CustomName: "{\"text\":\"IWeedZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=IsIWeedItem] run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"IWeedStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:20b}}],NoGravity:1b,DisabledSlots:2039583}
execute at @e[tag=IsIWeedItem] run kill @e[tag=IsIWeedItem]
effect give @e[name=IWeedZom] minecraft:invisibility 1 1 true
function agriflora:killironweed