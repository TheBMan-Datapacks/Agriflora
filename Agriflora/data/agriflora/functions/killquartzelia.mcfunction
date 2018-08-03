execute at @e[tag=HoldingSickle] run tag @e[name=IsQuartzFStand,distance=..10] add SickleNearU
execute at @e[name=IsQuartzFStand] if entity @e[name=QuartzFZom,distance=..1] run tag @e[name=IsQuartzFStand,distance=..1] add IsSaveQFFlower
execute at @e[tag=!IsSaveQFFlower,name=IsQuartzFStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:953,du_nerf:1b,display:{Name:"{\"text\":\"Quartzelia\"}"},Unbreakable:1b,Damage:25}}}
execute at @e[tag=!IsSaveQFFlower,name=IsQuartzFStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsQuartzSeed:1b,display:{Name:"{\"text\":\"Quartz Seed Piece\"}"},Unbreakable:1b,Damage:48}}}
execute at @e[tag=!IsSaveQFFlower,name=IsQuartzFStand] run kill @e[name=IsQuartzFStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveQFFlower
