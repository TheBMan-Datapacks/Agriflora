execute as @e at @s if score @s du_data matches 969 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"DiamondZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=DiamondZom] run scoreboard players set @e[name=DiamondZom,distance=...1] agri_dimonseed 0
tag @e[name=DiamondZom] add Spawned
execute as @e at @s if score @s du_data matches 969 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3177727},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"DiamondStand\"}"}
effect give @e[name=DiamondZom] minecraft:invisibility 1 1 true
execute as @e[name=DiamondZom] at @s if score @s agri_dimonseed <= dimongrowthree agri_dimonseed run scoreboard players add @s agri_dimonseed 1
execute at @e[name=DiamondStandone] run kill @e[name=DiamondStand,distance=...1]
execute as @e[name=DiamondZom] at @s if score @s agri_dimonseed = dimongrowone agri_dimonseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3177727},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"DiamondStandone\"}"}
execute at @e[name=DiamondStandtwo] run kill @e[name=DiamondStandone,distance=...1]
execute as @e[name=DiamondZom] at @s if score @s agri_dimonseed = dimongrowtwo agri_dimonseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3177727},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"DiamondStandtwo\"}"}
execute at @e[name=DiamondStandthree] run kill @e[name=DiamondStandtwo,distance=...1]
execute as @e[name=DiamondZom] at @s if score @s agri_dimonseed = dimongrowthree agri_dimonseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3177727},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"DiamondStandthree\"}"}
execute at @e[name=DiamondZom] if block ~ ~-1 ~ farmland run tag @e[name=DiamondZom,distance=...1] add OnFarmland
execute at @e[name=DiamondZom,tag=!OnFarmland] run kill @e[name=DiamondZom,distance=...1]
execute at @e[name=DiamondStand] if entity @e[name=DiamondZom,distance=..1] run tag @e[name=DiamondStand,distance=...1] add IsSaveDCrop
execute at @e[name=DiamondStandone] if entity @e[name=DiamondZom,distance=..1] run tag @e[name=DiamondStandone,distance=...1] add IsSaveDCrop
execute at @e[name=DiamondStandtwo] if entity @e[name=DiamondZom,distance=..1] run tag @e[name=DiamondStandtwo,distance=...1] add IsSaveDCrop
execute at @e[name=DiamondStandthree] if entity @e[name=DiamondZom,distance=..1] run tag @e[name=DiamondStandthree,distance=...1] add IsSaveDCrop
execute at @e[tag=!IsSaveDCrop,name=DiamondStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:969,du_nerf:1b,display:{Name:"{\"text\":\"Diamond Seed\",\"italic\":false}"},Unbreakable:1b,Damage:62}}}
execute at @e[tag=!IsSaveDCrop,name=DiamondStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:969,du_nerf:1b,display:{Name:"{\"text\":\"Diamond Seed\",\"italic\":false}"},Unbreakable:1b,Damage:62}}}
execute at @e[tag=!IsSaveDCrop,name=DiamondStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:969,du_nerf:1b,display:{Name:"{\"text\":\"Diamond Seed\",\"italic\":false}"},Unbreakable:1b,Damage:62}}}
execute at @e[tag=!IsSaveDCrop,name=DiamondStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:969,du_nerf:1b,display:{Name:"{\"text\":\"Diamond Seed\",\"italic\":false}"},Unbreakable:1b,Damage:62}}}
execute at @e[tag=!IsSaveDCrop,name=DiamondStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute at @e[tag=!IsSaveDCrop,name=DiamondStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveDCrop,name=DiamondStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveDCrop,name=DiamondStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveDCrop,name=DiamondStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveDCrop





