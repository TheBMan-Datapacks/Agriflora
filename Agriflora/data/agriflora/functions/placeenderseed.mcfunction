execute as @e at @s if score @s du_data matches 971 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"EnderZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=EnderZom] run scoreboard players set @e[name=EnderZom,distance=...1] agri_endseed 0
tag @e[name=EnderZom] add Spawned
execute as @e at @s if score @s du_data matches 971 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6687088},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"EnderStand\"}"}
effect give @e[name=EnderZom] minecraft:invisibility 1 1 true
execute as @e[name=EnderZom] at @s if score @s agri_endseed <= endgrowthree agri_endseed run scoreboard players add @s agri_endseed 1
execute as @e[name=EnderZom] at @s if score @s agri_endseed = endgrowone agri_endseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6687088},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"EnderStandone\"}"}
execute at @e[name=EnderStandone] run kill @e[name=EnderStand,distance=...1]
execute as @e[name=EnderZom] at @s if score @s agri_endseed = endgrowtwo agri_endseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6687088},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"EnderStandtwo\"}"}
execute at @e[name=EnderStandtwo] run kill @e[name=EnderStandone,distance=...1]
execute as @e[name=EnderZom] at @s if score @s agri_endseed = endgrowthree agri_endseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6687088},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"EnderStandthree\"}"}
execute at @e[name=EnderStandthree] run kill @e[name=EnderStandtwo,distance=...1]
execute at @e[name=EnderZom] if block ~ ~-1 ~ farmland run tag @e[name=EnderZom,distance=...1] add OnFarmland
execute at @e[name=EnderZom,tag=!OnFarmland] run kill @e[name=EnderZom,distance=...1]
tag @e[type=slime,name=EnderZom] remove OnFarmLand
execute at @e[name=EnderStand] if entity @e[name=EnderZom,distance=..1] run tag @e[name=EnderStand,distance=...1] add IsSaveEnCrop
execute at @e[name=EnderStandone] if entity @e[name=EnderZom,distance=..1] run tag @e[name=EnderStandone,distance=...1] add IsSaveEnCrop
execute at @e[name=EnderStandtwo] if entity @e[name=EnderZom,distance=..1] run tag @e[name=EnderStandtwo,distance=...1] add IsSaveEnCrop
execute at @e[name=EnderStandthree] if entity @e[name=EnderZom,distance=..1] run tag @e[name=EnderStandthree,distance=...1] add IsSaveEnCrop
execute at @e[tag=!IsSaveEnCrop,name=EnderStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:971,du_nerf:1b,display:{Name:"{\"text\":\"Ender Seed\",\"italic\":false}"},Unbreakable:1b,Damage:60}}}
execute at @e[tag=!IsSaveEnCrop,name=EnderStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:971,du_nerf:1b,display:{Name:"{\"text\":\"Ender Seed\",\"italic\":false}"},Unbreakable:1b,Damage:60}}}
execute at @e[tag=!IsSaveEnCrop,name=EnderStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:971,du_nerf:1b,display:{Name:"{\"text\":\"Ender Seed\",\"italic\":false}"},Unbreakable:1b,Damage:60}}}
execute at @e[tag=!IsSaveEnCrop,name=EnderStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:971,du_nerf:1b,display:{Name:"{\"text\":\"Ender Seed\",\"italic\":false}"},Unbreakable:1b,Damage:60}}}
execute at @e[tag=!IsSaveEnCrop,name=EnderStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:ender_pearl",Count:1b}}
execute at @e[tag=!IsSaveEnCrop,name=EnderStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveEnCrop,name=EnderStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveEnCrop,name=EnderStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveEnCrop,name=EnderStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveEnCrop






