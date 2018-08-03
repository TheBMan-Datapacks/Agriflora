execute at @e[tag=HoldingSickle] run tag @e[name=LazuliaStand,distance=..10] add SickleNearU
execute at @e[name=LazuliaStand] if entity @e[name=LazuliaZom,distance=..1] run tag @e[name=LazuliaStand,distance=..1] add IsSaveLazulFlower
execute at @e[tag=!IsSaveLazulFlower,name=LazuliaStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:954,du_nerf:1b,display:{Name:"{\"text\":\"Lazulia\"}"},Unbreakable:1b,Damage:23}}}
execute at @e[tag=!IsSaveLazulFlower,name=LazuliaStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsLapisSeed:1b,display:{Name:"{\"text\":\"Lapis Seed Piece\"}"},Unbreakable:1b,Damage:49}}}
execute at @e[tag=!IsSaveLazulFlower,name=LazuliaStand] run kill @e[name=LazuliaStand,distance=..1]
tag @e remove IsSaveLazulFlower