execute at @e[tag=HoldingSickle] run tag @e[name=IWeedStand,distance=..10] add SickleNearU
execute at @e[name=IWeedStand] if entity @e[name=IWeedZom,distance=..1] run tag @e[name=IWeedStand,distance=..1] add IsSaveIWFlower
execute at @e[tag=!IsSaveIWFlower,name=IWeedStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:955,du_nerf:1b,display:{Name:"{\"text\":\"Ironweed\"}"},Unbreakable:1b,Damage:21}}}
execute at @e[tag=!IsSaveIWFlower,name=IWeedStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsIronSeed:1b,display:{Name:"{\"text\":\"Iron Seed Piece\"}"},Unbreakable:1b,Damage:45}}}
execute at @e[tag=!IsSaveIWFlower,name=IWeedStand] run kill @e[name=IWeedStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveIWFlower
