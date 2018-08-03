tag @e[nbt={SelectedItem:{id:"minecraft:iron_hoe",tag:{IsSickle:1b}}}] add HoldingSickle
execute at @e[tag=HoldingSickle] run tag @e[name=EmralStand,distance=..10] add SickleNearU
execute at @e[name=EmralStand] if entity @e[name=EmralZom,distance=..1] run tag @e[name=EmralStand,distance=..1] add IsSaveEMFlower
execute at @e[tag=!IsSaveEMFlower,name=EmralStand,tag=!SickleNearU] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:961,du_nerf:1b,display:{Name:"{\"text\":\"Emral\"}"},Unbreakable:1b,Damage:15}}}
execute at @e[tag=!IsSaveEMFlower,name=EmralStand,tag=SickleNearU] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_nerf:1b,IsEmeraldSeed:1b,display:{Name:"{\"text\":\"Emerald Seed Piece\"}"},Unbreakable:1b,Damage:53}}}
execute at @e[tag=!IsSaveEMFlower,name=EmralStand] run kill @e[name=EmralStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveEMFlower
