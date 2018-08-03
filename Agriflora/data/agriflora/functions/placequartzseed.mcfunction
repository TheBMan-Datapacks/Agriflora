execute as @e at @s if score @s du_data matches 966 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"QuartzZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=QuartzZom] run scoreboard players set @e[name=QuartzZom,distance=...1] agri_quartzseed 0
tag @e[name=QuartzZom] add Spawned
execute as @e at @s if score @s du_data matches 966 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"QuartzStand\"}"}
effect give @e[name=QuartzZom] minecraft:invisibility 1 1 true
execute as @e[name=QuartzZom] at @s if score @s agri_quartzseed <= quartzgrowthree agri_quartzseed run scoreboard players add @s agri_quartzseed 1
execute at @e[name=QuartzStandone] run kill @e[name=QuartzStand,distance=...1]
execute as @e[name=QuartzZom] at @s if score @s agri_quartzseed = quartzgrowone agri_quartzseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"QuartzStandone\"}"}
execute at @e[name=QuartzStandtwo] run kill @e[name=QuartzStandone,distance=...1]
execute as @e[name=QuartzZom] at @s if score @s agri_quartzseed = quartzgrowtwo agri_quartzseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"QuartzStandtwo\"}"}
execute at @e[name=QuartzStandthree] run kill @e[name=QuartzStandtwo,distance=...1]
execute as @e[name=QuartzZom] at @s if score @s agri_quartzseed = quartzgrowthree agri_quartzseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"QuartzStandthree\"}"}
execute at @e[name=QuartzZom] if block ~ ~-1 ~ farmland run tag @e[name=QuartzZom,distance=...1] add OnFarmland
execute at @e[name=QuartzZom,tag=!OnFarmland] run kill @e[name=QuartzZom,distance=...1]
execute at @e[name=QuartzStand] if entity @e[name=QuartzZom,distance=..1] run tag @e[name=QuartzStand,distance=...1] add IsSaveQCrop
execute at @e[name=QuartzStandone] if entity @e[name=QuartzZom,distance=..1] run tag @e[name=QuartzStandone,distance=...1] add IsSaveQCrop
execute at @e[name=QuartzStandtwo] if entity @e[name=QuartzZom,distance=..1] run tag @e[name=QuartzStandtwo,distance=...1] add IsSaveQCrop
execute at @e[name=QuartzStandthree] if entity @e[name=QuartzZom,distance=..1] run tag @e[name=QuartzStandthree,distance=...1] add IsSaveQCrop
execute at @e[tag=!IsSaveQCrop,name=QuartzStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:966,du_nerf:1b,display:{Name:"{\"text\":\"Quartz Seed\",\"italic\":false}"},Unbreakable:1b,Damage:58}}}
execute at @e[tag=!IsSaveQCrop,name=QuartzStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:966,du_nerf:1b,display:{Name:"{\"text\":\"Quartz Seed\",\"italic\":false}"},Unbreakable:1b,Damage:58}}}
execute at @e[tag=!IsSaveQCrop,name=QuartzStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:966,du_nerf:1b,display:{Name:"{\"text\":\"Quartz Seed\",\"italic\":false}"},Unbreakable:1b,Damage:58}}}
execute at @e[tag=!IsSaveQCrop,name=QuartzStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:966,du_nerf:1b,display:{Name:"{\"text\":\"Quartz Seed\",\"italic\":false}"},Unbreakable:1b,Damage:58}}}
execute at @e[tag=!IsSaveQCrop,name=QuartzStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:quartz",Count:1b}}
execute at @e[tag=!IsSaveQCrop,name=QuartzStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveQCrop,name=QuartzStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveQCrop,name=QuartzStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveQCrop,name=QuartzStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveQCrop





