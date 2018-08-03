execute as @e at @s if score @s du_data matches 963 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"CoalZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=CoalZom] run scoreboard players set @e[name=CoalZom,distance=...1] agri_coalseed 0
tag @e[name=CoalZom] add Spawned
execute as @e at @s if score @s du_data matches 963 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"CoalStand\"}"}
effect give @e[name=CoalZom] minecraft:invisibility 1 1 true
execute as @e[name=CoalZom] at @s if score @s agri_coalseed <= coalgrowthree agri_coalseed run scoreboard players add @s agri_coalseed 1
execute at @e[name=CoalStandone] run kill @e[name=CoalStand,distance=...1]
execute as @e[name=CoalZom] at @s if score @s agri_coalseed = coalgrowone agri_coalseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"CoalStandone\"}"}
execute at @e[name=CoalStandtwo] run kill @e[name=CoalStandone,distance=...1]
execute as @e[name=CoalZom] at @s if score @s agri_coalseed = coalgrowtwo agri_coalseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"CoalStandtwo\"}"}
execute at @e[name=CoalStandthree] run kill @e[name=CoalStandtwo,distance=...1]
execute as @e[name=CoalZom] at @s if score @s agri_coalseed = coalgrowthree agri_coalseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"CoalStandthree\"}"}
execute at @e[name=CoalZom] if block ~ ~-1 ~ farmland run tag @e[name=CoalZom,distance=...1] add OnFarmland
execute at @e[name=CoalZom,tag=!OnFarmland] run kill @e[name=CoalZom,distance=...1]
execute at @e[name=CoalStand] if entity @e[name=CoalZom,distance=..1] run tag @e[name=CoalStand,distance=...1] add IsSaveCCrop
execute at @e[name=CoalStandone] if entity @e[name=CoalZom,distance=..1] run tag @e[name=CoalStandone,distance=...1] add IsSaveCCrop
execute at @e[name=CoalStandtwo] if entity @e[name=CoalZom,distance=..1] run tag @e[name=CoalStandtwo,distance=...1] add IsSaveCCrop
execute at @e[name=CoalStandthree] if entity @e[name=CoalZom,distance=..1] run tag @e[name=CoalStandthree,distance=...1] add IsSaveCCrop
execute at @e[tag=!IsSaveCCrop,name=CoalStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:963,du_nerf:1b,display:{Name:"{\"text\":\"Coal Seed\",\"italic\":false}"},Unbreakable:1b,Damage:54}}}
execute at @e[tag=!IsSaveCCrop,name=CoalStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:963,du_nerf:1b,display:{Name:"{\"text\":\"Coal Seed\",\"italic\":false}"},Unbreakable:1b,Damage:54}}}
execute at @e[tag=!IsSaveCCrop,name=CoalStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:963,du_nerf:1b,display:{Name:"{\"text\":\"Coal Seed\",\"italic\":false}"},Unbreakable:1b,Damage:54}}}
execute at @e[tag=!IsSaveCCrop,name=CoalStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:963,du_nerf:1b,display:{Name:"{\"text\":\"Coal Seed\",\"italic\":false}"},Unbreakable:1b,Damage:54}}}
execute at @e[tag=!IsSaveCCrop,name=CoalStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b}}
execute at @e[tag=!IsSaveCCrop,name=CoalStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveCCrop,name=CoalStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveCCrop,name=CoalStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveCCrop,name=CoalStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveCCrop





