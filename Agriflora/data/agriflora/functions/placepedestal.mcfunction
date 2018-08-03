tag @e[type=item,nbt={Item:{id:"minecraft:stone",Count:1b},OnGround:1b}] add agri_IsStone
execute at @e[tag=agri_IsStone] if block ~ ~-1 ~ crafting_table run setblock ~ ~-1 ~ minecraft:trapped_chest[type=left]{CustomName:"{\"text\":\"Stone Crafting Table\"}"} replace
execute at @e[tag=agri_IsStone] if block ~ ~-1 ~ trapped_chest align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~-1 ~ {DisabledSlots:4144959,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["du_crafter"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],CustomName:"{\"text\":\"CraftingStand\"}"}
execute at @e[tag=agri_IsStone] if block ~ ~-1 ~ trapped_chest run kill @e[tag=agri_IsStone]
execute at @e[name=CraftingStand] run replaceitem block ~ ~ ~ container.0 minecraft:iron_hoe{display:{Name:"{\"text\":\".\",\"italic\":false}"},Damage:30,Unbreakable:1b} 1
