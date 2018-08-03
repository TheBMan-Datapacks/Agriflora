execute as @e at @s if score @s du_data matches 953 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"QuartzFZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute as @e at @s if score @s du_data matches 953 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"IsQuartzFStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:24b}}],NoGravity:1b,DisabledSlots:2039583}






execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ netherrack run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}},OnGround:1b},tag=!IsBroke] add IsQuartzFItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ nether_quartz_ore run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}},OnGround:1b},tag=!IsBroke] add IsQuartzFItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ nether_wart_block run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}},OnGround:1b},tag=!IsBroke] add IsQuartzFItem
execute at @e[tag=IsQuartzFItem] run summon slime ~ ~ ~ {CustomName: "{\"text\":\"QuartzFZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=IsQuartzFItem] run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"IsQuartzFStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:24b}}],NoGravity:1b,DisabledSlots:2039583}
execute at @e[tag=IsQuartzFItem] run kill @e[tag=IsQuartzFItem]
effect give @e[name=QuartzFZom] minecraft:invisibility 1 1 true
function agriflora:killquartzelia