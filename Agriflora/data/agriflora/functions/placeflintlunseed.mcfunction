execute as @e at @s if score @s du_data matches 964 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"FlintZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=FlintZom] run scoreboard players set @e[name=FlintZom,distance=...1] agri_flintseed 0
tag @e[name=FlintZom] add Spawned
execute as @e at @s if score @s du_data matches 964 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3354917},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"FlintStand\"}"}
effect give @e[name=FlintZom] minecraft:invisibility 1 1 true
execute as @e[name=FlintZom] at @s if score @s agri_flintseed <= flintgrowthree agri_flintseed run scoreboard players add @s agri_flintseed 1
execute at @e[name=FlintStandone] run kill @e[name=FlintStand,distance=...1]
execute as @e[name=FlintZom] at @s if score @s agri_flintseed = flintgrowone agri_flintseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3354917},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"FlintStandone\"}"}
execute at @e[name=FlintStandtwo] run kill @e[name=FlintStandone,distance=...1]
execute as @e[name=FlintZom] at @s if score @s agri_flintseed = flintgrowtwo agri_flintseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3354917},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"FlintStandtwo\"}"}
execute at @e[name=FlintStandthree] run kill @e[name=FlintStandtwo,distance=...1]
execute as @e[name=FlintZom] at @s if score @s agri_flintseed = flintgrowthree agri_flintseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3354917},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"FlintStandthree\"}"}
execute at @e[name=FlintZom] if block ~ ~-1 ~ farmland run tag @e[name=FlintZom,distance=...1] add OnFarmland
execute at @e[name=FlintZom,tag=!OnFarmland] run kill @e[name=FlintZom,distance=...1]
execute at @e[name=FlintStand] if entity @e[name=FlintZom,distance=..1] run tag @e[name=FlintStand,distance=...1] add IsSaveFCrop
execute at @e[name=FlintStandone] if entity @e[name=FlintZom,distance=..1] run tag @e[name=FlintStandone,distance=...1] add IsSaveFCrop
execute at @e[name=FlintStandtwo] if entity @e[name=FlintZom,distance=..1] run tag @e[name=FlintStandtwo,distance=...1] add IsSaveFCrop
execute at @e[name=FlintStandthree] if entity @e[name=FlintZom,distance=..1] run tag @e[name=FlintStandthree,distance=...1] add IsSaveFCrop
execute at @e[tag=!IsSaveFCrop,name=FlintStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:964,du_nerf:1b,display:{Name:"{\"text\":\"Flint Seed\",\"italic\":false}"},Unbreakable:1b,Damage:61}}}
execute at @e[tag=!IsSaveFCrop,name=FlintStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:964,du_nerf:1b,display:{Name:"{\"text\":\"Flint Seed\",\"italic\":false}"},Unbreakable:1b,Damage:61}}}
execute at @e[tag=!IsSaveFCrop,name=FlintStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:964,du_nerf:1b,display:{Name:"{\"text\":\"Flint Seed\",\"italic\":false}"},Unbreakable:1b,Damage:61}}}
execute at @e[tag=!IsSaveFCrop,name=FlintStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:964,du_nerf:1b,display:{Name:"{\"text\":\"Flint Seed\",\"italic\":false}"},Unbreakable:1b,Damage:61}}}
execute at @e[tag=!IsSaveFCrop,name=FlintStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:1b}}
execute at @e[tag=!IsSaveFCrop,name=FlintStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveFCrop,name=FlintStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveFCrop,name=FlintStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveFCrop,name=FlintStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveFCrop





