execute at @e[tag=HoldingSickle] run tag @e[name=CoalshroomStand,distance=..10] add SickleNearU
execute at @e[name=CoalshroomStand] if entity @e[name=CoalshroomZom,distance=..1] run tag @e[name=CoalshroomStand,distance=..1] add IsSaveCSFlower
execute at @e[tag=!IsSaveCSFlower,name=CoalshroomStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:959,du_nerf:1b,display:{Name:"{\"text\":\"Coalshroom\"}"},Unbreakable:1b,Damage:11}}}
execute at @e[tag=!IsSaveCSFlower,name=CoalshroomStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsCoalSeed:1b,display:{Name:"{\"text\":\"Coal Seed Piece\"}"},Unbreakable:1b,Damage:51}}}
execute at @e[tag=!IsSaveCSFlower,name=CoalshroomStand] run kill @e[name=CoalshroomStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveCSFlower
