execute at @e[tag=HoldingSickle] run tag @e[name=EnderiaStand,distance=..10] add SickleNearU
execute at @e[name=EnderiaStand] if entity @e[name=EnderiaZom,distance=..1] run tag @e[name=EnderiaStand,distance=..1] add IsSaveEFlower
execute at @e[tag=!IsSaveEFlower,name=EnderiaStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:958,du_nerf:1b,display:{Name:"{\"text\":\"Enderia\"}"},Unbreakable:1b,Damage:17}}}
execute at @e[tag=!IsSaveEFlower,name=EnderiaStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsEnderSeed:1b,display:{Name:"{\"text\":\"Ender Seed Piece\"}"},Unbreakable:1b,Damage:50}}}
execute at @e[tag=!IsSaveEFlower,name=EnderiaStand] run kill @e[name=EnderiaStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveEFlower
tag @e remove SickleNearU
tag @e remove HoldingSickle
