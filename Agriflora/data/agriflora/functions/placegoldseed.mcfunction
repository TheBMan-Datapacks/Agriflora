execute as @e at @s if score @s du_data matches 962 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"GoldZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=GoldZom] run scoreboard players set @e[name=GoldZom,distance=...1] agri_goldseed 0
tag @e[name=GoldZom] add Spawned
execute as @e at @s if score @s du_data matches 962 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16766720},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"GoldStand\"}"}
effect give @e[name=GoldZom] minecraft:invisibility 1 1 true
execute as @e[name=GoldZom] at @s if score @s agri_goldseed <= goldgrowthree agri_goldseed run scoreboard players add @s agri_goldseed 1
execute at @e[name=GoldStandone] run kill @e[name=GoldStand,distance=...1]
execute as @e[name=GoldZom] at @s if score @s agri_goldseed = goldgrowone agri_goldseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16766720},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"GoldStandone\"}"}
execute at @e[name=GoldStandtwo] run kill @e[name=GoldStandone,distance=...1]
execute as @e[name=GoldZom] at @s if score @s agri_goldseed = goldgrowtwo agri_goldseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16766720},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"GoldStandtwo\"}"}
execute at @e[name=GoldStandthree] run kill @e[name=GoldStandtwo,distance=...1]
execute as @e[name=GoldZom] at @s if score @s agri_goldseed = goldgrowthree agri_goldseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16766720},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"GoldStandthree\"}"}
execute at @e[name=GoldZom] if block ~ ~-1 ~ farmland run tag @e[name=GoldZom,distance=...1] add OnFarmland
execute at @e[name=GoldZom,tag=!OnFarmland] run kill @e[name=GoldZom,distance=...1]
execute at @e[name=GoldStand] if entity @e[name=GoldZom,distance=..1] run tag @e[name=GoldStand,distance=...1] add IsSaveRCrop
execute at @e[name=GoldStandone] if entity @e[name=GoldZom,distance=..1] run tag @e[name=GoldStandone,distance=...1] add IsSaveRCrop
execute at @e[name=GoldStandtwo] if entity @e[name=GoldZom,distance=..1] run tag @e[name=GoldStandtwo,distance=...1] add IsSaveRCrop
execute at @e[name=GoldStandthree] if entity @e[name=GoldZom,distance=..1] run tag @e[name=GoldStandthree,distance=...1] add IsSaveRCrop
execute at @e[tag=!IsSaveRCrop,name=GoldStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:962,du_nerf:1b,display:{Name:"{\"text\":\"Gold Seed\",\"italic\":false}"},Unbreakable:1b,Damage:56}}}
execute at @e[tag=!IsSaveRCrop,name=GoldStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:962,du_nerf:1b,display:{Name:"{\"text\":\"Gold Seed\",\"italic\":false}"},Unbreakable:1b,Damage:56}}}
execute at @e[tag=!IsSaveRCrop,name=GoldStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:962,du_nerf:1b,display:{Name:"{\"text\":\"Gold Seed\",\"italic\":false}"},Unbreakable:1b,Damage:56}}}
execute at @e[tag=!IsSaveRCrop,name=GoldStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:962,du_nerf:1b,display:{Name:"{\"text\":\"Gold Seed\",\"italic\":false}"},Unbreakable:1b,Damage:56}}}
execute at @e[tag=!IsSaveRCrop,name=GoldStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute at @e[tag=!IsSaveRCrop,name=GoldStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=GoldStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=GoldStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveRCrop,name=GoldStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveRCrop





