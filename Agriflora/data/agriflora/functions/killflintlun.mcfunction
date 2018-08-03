execute at @e[tag=HoldingSickle] run tag @e[name=FlintlunStand,distance=..10] add SickleNearU
execute at @e[name=FlintlunStand] if entity @e[name=FlintlunZom,distance=..1] run tag @e[name=FlintlunStand,distance=..1] add IsSaveFlintFlower
execute at @e[tag=!IsSaveFlintFlower,name=FlintlunStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:956,du_nerf:1b,display:{Name:"{\"text\":\"Flintlun\"}"},Unbreakable:1b,Damage:19}}}
execute at @e[tag=!IsSaveFlintFlower,name=FlintlunStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsFlintSeed:1b,display:{Name:"{\"text\":\"Flint Seed Piece\"}"},Unbreakable:1b,Damage:44}}}
execute at @e[tag=!IsSaveFlintFlower,name=FlintlunStand] run kill @e[name=FlintlunStand,distance=..1]
tag @e remove IsSaveFlintFlower