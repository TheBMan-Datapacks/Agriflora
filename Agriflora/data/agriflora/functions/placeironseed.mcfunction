execute as @e at @s if score @s du_data matches 965 align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {CustomName: "{\"text\":\"IronZom\"}",NoGravity:1b,Health:0.5f,NoAI:1,Silent:1b,DeathLootTable:"none"}
execute at @e[tag=!Spawned,name=IronZom] run scoreboard players set @e[name=IronZom,distance=...1] agri_ironseed 0
tag @e[name=IronZom] add Spawned
execute as @e at @s if score @s du_data matches 965 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14405258},Unbreakable:1b,Damage:1}}],CustomName:"{\"text\":\"IronStand\"}"}
effect give @e[name=IronZom] minecraft:invisibility 1 1 true
execute as @e[name=IronZom] at @s if score @s agri_ironseed <= irongrowthree agri_ironseed run scoreboard players add @s agri_ironseed 1
execute at @e[name=IronStandone] run kill @e[name=IronStand,distance=...1]
execute as @e[name=IronZom] at @s if score @s agri_ironseed = irongrowone agri_ironseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14405258},Unbreakable:1b,Damage:2}}],CustomName:"{\"text\":\"IronStandone\"}"}
execute at @e[name=IronStandtwo] run kill @e[name=IronStandone,distance=...1]
execute as @e[name=IronZom] at @s if score @s agri_ironseed = irongrowtwo agri_ironseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14405258},Unbreakable:1b,Damage:3}}],CustomName:"{\"text\":\"IronStandtwo\"}"}
execute at @e[name=IronStandthree] run kill @e[name=IronStandtwo,distance=...1]
execute as @e[name=IronZom] at @s if score @s agri_ironseed = irongrowthree agri_ironseed run summon armor_stand ~ ~0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14405258},Unbreakable:1b,Damage:4}}],CustomName:"{\"text\":\"IronStandthree\"}"}
execute at @e[name=IronZom] if block ~ ~-1 ~ farmland run tag @e[name=IronZom,distance=...1] add OnFarmland
execute at @e[name=IronZom,tag=!OnFarmland] run kill @e[name=IronZom,distance=...1]
execute at @e[name=IronStand] if entity @e[name=IronZom,distance=..1] run tag @e[name=IronStand,distance=...1] add IsSaveICrop
execute at @e[name=IronStandone] if entity @e[name=IronZom,distance=..1] run tag @e[name=IronStandone,distance=...1] add IsSaveICrop
execute at @e[name=IronStandtwo] if entity @e[name=IronZom,distance=..1] run tag @e[name=IronStandtwo,distance=...1] add IsSaveICrop
execute at @e[name=IronStandthree] if entity @e[name=IronZom,distance=..1] run tag @e[name=IronStandthree,distance=...1] add IsSaveICrop
execute at @e[tag=!IsSaveICrop,name=IronStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:965,du_nerf:1b,display:{Name:"{\"text\":\"Iron Seed\",\"italic\":false}"},Unbreakable:1b,Damage:55}}}
execute at @e[tag=!IsSaveICrop,name=IronStandone] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:965,du_nerf:1b,display:{Name:"{\"text\":\"Iron Seed\",\"italic\":false}"},Unbreakable:1b,Damage:55}}}
execute at @e[tag=!IsSaveICrop,name=IronStandtwo] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:965,du_nerf:1b,display:{Name:"{\"text\":\"Iron Seed\",\"italic\":false}"},Unbreakable:1b,Damage:55}}}
execute at @e[tag=!IsSaveICrop,name=IronStandthree] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:965,du_nerf:1b,display:{Name:"{\"text\":\"Iron Seed\",\"italic\":false}"},Unbreakable:1b,Damage:55}}}
execute at @e[tag=!IsSaveICrop,name=IronStandthree] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute at @e[tag=!IsSaveICrop,name=IronStand] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveICrop,name=IronStandone] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveICrop,name=IronStandtwo] run kill @e[type=armor_stand,distance=...1]
execute at @e[tag=!IsSaveICrop,name=IronStandthree] run kill @e[type=armor_stand,distance=...1]
tag @e[type=armor_stand] remove IsSaveICrop





