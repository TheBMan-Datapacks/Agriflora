execute at @e[tag=HoldingSickle] run tag @e[name=AureumStand,distance=..10] add SickleNearU
execute at @e[name=AureumStand] if entity @e[name=AureumZom,distance=..1] run tag @e[name=AureumStand,distance=..1] add IsSaveAFlower
execute at @e[tag=!IsSaveAFlower,name=AureumStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:957,du_nerf:1b,display:{Name:"{\"text\":\"Aureum Rose\"}"},Unbreakable:1b,Damage:9}}}
execute at @e[tag=!IsSaveAFlower,name=AureumStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsGoldSeed:1b,display:{Name:"{\"text\":\"Gold Seed Piece\"}"},Unbreakable:1b,Damage:46}}}
execute at @e[tag=!IsSaveAFlower,name=AureumStand] run kill @e[name=AureumStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveAFlower
