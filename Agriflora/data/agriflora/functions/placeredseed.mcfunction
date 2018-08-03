execute as @e at @s if score @s du_data matches 967 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"RedstoneZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=RedstoneZom] run scoreboard players set @e[name=RedstoneZom,distance=...1] agri_redseed 0
tag @e[name=RedstoneZom] add Spawned
execute as @e at @s if score @s du_data matches 967 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13565952},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"RedstoneStand\"}"}
effect give @e[name=RedstoneZom] minecraft:invisibility 1 1 true
execute as @e[name=RedstoneZom] at @s if score @s agri_redseed <= redgrowthree agri_redseed run scoreboard players add @s agri_redseed 1
execute at @e[name=RedstoneStandone] run kill @e[name=RedstoneStand,distance=...1]
execute as @e[name=RedstoneZom] at @s if score @s agri_redseed = redgrowone agri_redseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13565952},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"RedstoneStandone\"}"}
execute at @e[name=RedstoneStandtwo] run kill @e[name=RedstoneStandone,distance=...1]
execute as @e[name=RedstoneZom] at @s if score @s agri_redseed = redgrowtwo agri_redseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13565952},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"RedstoneStandtwo\"}"}
execute at @e[name=RedstoneStandthree] run kill @e[name=RedstoneStandtwo,distance=...1]
execute as @e[name=RedstoneZom] at @s if score @s agri_redseed = redgrowthree agri_redseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13565952},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"RedstoneStandthree\"}"}
execute at @e[name=RedstoneZom] if block ~ ~-1 ~ farmland run tag @e[name=RedstoneZom,distance=...1] add OnFarmland
execute at @e[name=RedstoneZom,tag=!OnFarmland] run kill @e[name=RedstoneZom,distance=...1]
execute at @e[name=RedstoneStand] if entity @e[name=RedstoneZom,distance=..1] run tag @e[name=RedstoneStand,distance=...1] add IsSaveRCrop
execute at @e[name=RedstoneStandone] if entity @e[name=RedstoneZom,distance=..1] run tag @e[name=RedstoneStandone,distance=...1] add IsSaveRCrop
execute at @e[name=RedstoneStandtwo] if entity @e[name=RedstoneZom,distance=..1] run tag @e[name=RedstoneStandtwo,distance=...1] add IsSaveRCrop
execute at @e[name=RedstoneStandthree] if entity @e[name=RedstoneZom,distance=..1] run tag @e[name=RedstoneStandthree,distance=...1] add IsSaveRCrop
execute at @e[tag=!IsSaveRCrop,name=RedstoneStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:967,du_nerf:1b,display:{Name:"{\"text\":\"Redstone Seed\",\"italic\":false}"},Unbreakable:1b,Damage:57}}}
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:967,du_nerf:1b,display:{Name:"{\"text\":\"Redstone Seed\",\"italic\":false}"},Unbreakable:1b,Damage:57}}}
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:967,du_nerf:1b,display:{Name:"{\"text\":\"Redstone Seed\",\"italic\":false}"},Unbreakable:1b,Damage:57}}}
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:967,du_nerf:1b,display:{Name:"{\"text\":\"Redstone Seed\",\"italic\":false}"},Unbreakable:1b,Damage:57}}}
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
execute at @e[tag=!IsSaveRCrop,name=RedstoneStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=RedstoneStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveRCrop





