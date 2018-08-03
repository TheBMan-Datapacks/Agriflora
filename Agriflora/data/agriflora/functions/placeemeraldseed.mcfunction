execute as @e at @s if score @s du_data matches 970 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"EmeraldZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=EmeraldZom] run scoreboard players set @e[name=EmeraldZom,distance=...1] agri_emseed 0
tag @e[name=EmeraldZom] add Spawned
execute as @e at @s if score @s du_data matches 970 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752281},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"EmeraldStand\"}"}
effect give @e[name=EmeraldZom] minecraft:invisibility 1 1 true
execute as @e[name=EmeraldZom] at @s if score @s agri_emseed <= emgrowthree agri_emseed run scoreboard players add @s agri_emseed 1
execute at @e[name=EmeraldStandone] run kill @e[name=EmeraldStand,distance=...1]
execute as @e[name=EmeraldZom] at @s if score @s agri_emseed = emgrowone agri_emseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752281},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"EmeraldStandone\"}"}
execute at @e[name=EmeraldStandtwo] run kill @e[name=EmeraldStandone,distance=...1]
execute as @e[name=EmeraldZom] at @s if score @s agri_emseed = emgrowtwo agri_emseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752281},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"EmeraldStandtwo\"}"}
execute at @e[name=EmeraldStandthree] run kill @e[name=EmeraldStandtwo,distance=...1]
execute as @e[name=EmeraldZom] at @s if score @s agri_emseed = emgrowthree agri_emseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752281},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"EmeraldStandthree\"}"}
execute at @e[name=EmeraldZom] if block ~ ~-1 ~ farmland run tag @e[name=EmeraldZom,distance=...1] add OnFarmland
execute at @e[name=EmeraldZom,tag=!OnFarmland] run kill @e[name=EmeraldZom,distance=...1]
execute at @e[name=EmeraldStand] if entity @e[name=EmeraldZom,distance=..1] run tag @e[name=EmeraldStand,distance=...1] add IsSaveRCrop
execute at @e[name=Emeraldtandone] if entity @e[name=EmeraldZom,distance=..1] run tag @e[name=EmeraldStandone,distance=...1] add IsSaveRCrop
execute at @e[name=EmeraldStandtwo] if entity @e[name=EmeraldZom,distance=..1] run tag @e[name=EmeraldStandtwo,distance=...1] add IsSaveRCrop
execute at @e[name=EmeraldStandthree] if entity @e[name=EmeraldZom,distance=..1] run tag @e[name=EmeraldStandthree,distance=...1] add IsSaveRCrop
execute at @e[tag=!IsSaveRCrop,name=EmeraldStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:970,du_nerf:1b,display:{Name:"{\"text\":\"Emerald Seed\",\"italic\":false}"},Unbreakable:1b,Damage:63}}}
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:970,du_nerf:1b,display:{Name:"{\"text\":\"Emerald Seed\",\"italic\":false}"},Unbreakable:1b,Damage:63}}}
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:970,du_nerf:1b,display:{Name:"{\"text\":\"Emerald Seed\",\"italic\":false}"},Unbreakable:1b,Damage:63}}}
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:970,du_nerf:1b,display:{Name:"{\"text\":\"Emerald Seed\",\"italic\":false}"},Unbreakable:1b,Damage:63}}}
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute at @e[tag=!IsSaveRCrop,name=EmeraldStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=EmeraldStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveRCrop





