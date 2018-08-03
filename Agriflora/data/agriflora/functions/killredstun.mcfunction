execute at @e[tag=HoldingSickle] run tag @e[name=RedstunStand,distance=..10] add SickleNearU
execute at @e[name=RedstunStand] if entity @e[name=RedstunZom,distance=..1] run tag @e[name=RedstunStand,distance=..1] add IsSaveRFlower
execute at @e[tag=!IsSaveRFlower,name=RedstunStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:952,du_nerf:1b,display:{Name:"{\"text\":\"Redstun\"}"},Unbreakable:1b,Damage:27}}}
execute at @e[tag=!IsSaveRFlower,name=RedstunStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsRedstoneSeed:1b,display:{Name:"{\"text\":\"Redstone Seed Piece\"}"},Unbreakable:1b,Damage:47}}}
execute at @e[tag=!IsSaveRFlower,name=RedstunStand] run kill @e[name=RedstunStand,distance=..1]
tag @e remove IsSaveRFlower
effect give @e[name=RedstunZom] minecraft:invisibility 1 1 true
