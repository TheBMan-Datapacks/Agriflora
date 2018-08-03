execute as @e at @s if score @s du_data matches 952 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"RedstunZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute as @e at @s if score @s du_data matches 952 run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"RedstunStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:26b}}],NoGravity:1b,DisabledSlots:2039583}




execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ stone run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] add IsRedstunItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ granite run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] add IsRedstunItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ diorite run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] add IsRedstunItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ andesite run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] add IsRedstunItem
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] if block ~ ~-1 ~ gravel run tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}},OnGround:1b},tag=!IsBroke] add IsRedstunItem
execute at @e[tag=IsRedstunItem] run summon slime ~ ~ ~ {CustomName: "{\"text\":\"RedstunZom\"}",NoGravity:1b,IsVillager:0,IsBaby:1,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=IsRedstunItem] run summon armor_stand ~ ~0.4 ~ {CustomName: "{\"text\":\"RedstunStand\"}",Small:1,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1,Damage:26b}}],NoGravity:1b,DisabledSlots:2039583}
execute at @e[tag=IsRedstunItem] run kill @e[tag=IsRedstunItem]
effect give @e[name=RedstunZom] minecraft:invisibility 1 1 true
function agriflora:killredstun