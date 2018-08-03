execute as @e at @s if score @s du_data matches 968 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"LapisZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=LapisZom] run scoreboard players set @e[name=LapisZom,distance=...1] agri_lapisseed 0
tag @e[name=LapisZom] add Spawned
execute as @e at @s if score @s du_data matches 968 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:526591},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"LapisStand\"}"}
effect give @e[name=LapisZom] minecraft:invisibility 1 1 true
execute as @e[name=LapisZom] at @s if score @s agri_lapisseed <= lapisgrowthree agri_lapisseed run scoreboard players add @s agri_lapisseed 1
execute at @e[name=LapisStandone] run kill @e[name=LapisStand,distance=...1]
execute as @e[name=LapisZom] at @s if score @s agri_lapisseed = lapisgrowone agri_lapisseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:526591},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"LapisStandone\"}"}
execute at @e[name=LapisStandtwo] run kill @e[name=LapisStandone,distance=...1]
execute as @e[name=LapisZom] at @s if score @s agri_lapisseed = lapisgrowtwo agri_lapisseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:526591},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"LapisStandtwo\"}"}
execute at @e[name=LapisStandthree] run kill @e[name=LapisStandtwo,distance=...1]
execute as @e[name=LapisZom] at @s if score @s agri_lapisseed = lapisgrowthree agri_lapisseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:526591},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"LapisStandthree\"}"}
execute at @e[name=LapisZom] if block ~ ~-1 ~ farmland run tag @e[name=LapisZom,distance=...1] add OnFarmland
execute at @e[name=LapisZom,tag=!OnFarmland] run kill @e[name=LapisZom,distance=...1]
execute at @e[name=LapisStand] if entity @e[name=LapisZom,distance=..1] run tag @e[name=LapisStand,distance=...1] add IsSaveICrop
execute at @e[name=LapisStandone] if entity @e[name=LapisZom,distance=..1] run tag @e[name=LapisStandone,distance=...1] add IsSaveICrop
execute at @e[name=LapisStandtwo] if entity @e[name=LapisZom,distance=..1] run tag @e[name=LapisStandtwo,distance=...1] add IsSaveICrop
execute at @e[name=LapisStandthree] if entity @e[name=LapisZom,distance=..1] run tag @e[name=LapisStandthree,distance=...1] add IsSaveICrop
execute at @e[tag=!IsSaveICrop,name=LapisStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:968,du_nerf:1b,display:{Name:"{\"text\":\"Lapis Seed\",\"italic\":false}"},Unbreakable:1b,Damage:59}}}
execute at @e[tag=!IsSaveICrop,name=LapisStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:968,du_nerf:1b,display:{Name:"{\"text\":\"Lapis Seed\",\"italic\":false}"},Unbreakable:1b,Damage:59}}}
execute at @e[tag=!IsSaveICrop,name=LapisStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:968,du_nerf:1b,display:{Name:"{\"text\":\"Lapis Seed\",\"italic\":false}"},Unbreakable:1b,Damage:59}}}
execute at @e[tag=!IsSaveICrop,name=LapisStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:968,du_nerf:1b,display:{Name:"{\"text\":\"Lapis Seed\",\"italic\":false}"},Unbreakable:1b,Damage:59}}}
execute at @e[tag=!IsSaveICrop,name=LapisStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute at @e[tag=!IsSaveICrop,name=LapisStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveICrop,name=LapisStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveICrop,name=LapisStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveICrop,name=LapisStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveICrop





