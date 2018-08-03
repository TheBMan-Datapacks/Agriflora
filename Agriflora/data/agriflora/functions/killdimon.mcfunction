execute at @e[tag=HoldingSickle] run tag @e[name=DimonStand,distance=..10] add SickleNearU
execute at @e[name=DimonStand] if entity @e[name=DimonZom,distance=..1] run tag @e[name=DimonStand,distance=..1] add IsSaveDMFlower
execute at @e[tag=!IsSaveDMFlower,name=DimonStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:960,du_nerf:1b,display:{Name:"{\"text\":\"Dimon\"}"},Unbreakable:1b,Damage:13}}}
execute at @e[tag=!IsSaveDMFlower,name=DimonStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsDiamondSeed:1b,display:{Name:"{\"text\":\"Diamond Seed Piece\"}"},Unbreakable:1b,Damage:52}}}
execute at @e[tag=!IsSaveDMFlower,name=DimonStand] run kill @e[name=DimonStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveDMFlower
