execute as @e at @s if score @s du_data matches 2 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"VudoliaZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute as @e at @s if score @s du_data matches 2 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"VudoliaStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:28b}}],NoGravity:1b,DisabledSlots:2039583}




execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ grass_block run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] add IsVudoliaItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ dirt run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] add IsVudoliaItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ sand run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] add IsVudoliaItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ red_sand run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] add IsVudoliaItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ coarse_dirt run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}},OnGround:1b},tag=!IsBroke] add IsVudoliaItem
execute at @e[tag=IsVudoliaItem] run summon slime ~ ~ ~ {CustomName: "{\"text\":\"VudoliaZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=IsVudoliaItem] run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"VudoliaStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:28b}}],NoGravity:1b,DisabledSlots:2039583}
execute at @e[tag=IsVudoliaItem] run kill @e[tag=IsVudoliaItem]
effect give @e[name=VudoliaZom] minecraft:invisibility 1 1 true
function agriflora:killvudolia