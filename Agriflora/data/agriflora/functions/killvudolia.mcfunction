execute at @e[name=VudoliaStand] if entity @e[name=VudoliaZom,dx=1,dy=1,dz=1] run tag @e[name=VudoliaStand,dx=1,dy=1,dz=1] add IsSaveFlower
execute at @e[tag=!IsSaveFlower,name=VudoliaStand] run summon item ~ ~ ~ {Tags:["IsBroke"],Item:{id:"minecraft:iron_hoe",Count:1b,tag:{du_click_detect:1b,du_block_id:2,du_nerf:1b,display:{Name:"{\"text\":\"Vudolia\"}"},Unbreakable:1b,Damage:29}}}
execute at @e[tag=!IsSaveFlower,name=VudoliaStand] run kill @e[name=VudoliaStand,dx=0.4,dy=0.4,dz=0.4]
tag @e remove IsSaveFlower
effect give @e[name=VudoliaZom] minecraft:invisibility 1 1 true