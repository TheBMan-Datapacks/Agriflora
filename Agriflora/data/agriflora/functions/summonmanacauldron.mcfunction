tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Lore:["Empty"]}}},OnGround:1b},tag=!IsBroke] add IsManaBlock
tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Lore:["level:1"]}}},OnGround:1b},tag=!IsBroke] add IsManaBlock1
tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Lore:["level:2"]}}},OnGround:1b},tag=!IsBroke] add IsManaBlock2
tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Lore:["Full"]}}},OnGround:1b},tag=!IsBroke] add IsManaBlockF
execute at @e[tag=IsManaBlock] run summon minecraft:leash_knot ~ ~ ~ {CustomName: "{\"text\":\"ManaCKnot\"}"}
execute at @e[name=ManaCKnot] run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:15}}],HandItems:[{},{}],CustomName:"{\"text\":\"ManaCStand\"}",DisabledSlots:2039583,Marker:0b}
execute at @e[name=ManaCKnot] run setblock ~ ~ ~ cauldron
execute at @e[tag=IsManaBlock1] run summon minecraft:leash_knot ~ ~ ~ {CustomName: "{\"text\":\"ManaCKnot1\"}"}
execute at @e[name=ManaCKnot1] run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:15}}],HandItems:[{},{}],CustomName:"{\"text\":\"ManaCStand\"}",DisabledSlots:2039583,Marker:0b}
execute at @e[name=ManaCKnot1] run setblock ~ ~ ~ cauldron[level=1]
execute at @e[tag=IsManaBlock2] run summon minecraft:leash_knot ~ ~ ~ {CustomName: "{\"text\":\"ManaCKnot2\"}"}
execute at @e[name=ManaCKnot2] run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:15}}],HandItems:[{},{}],CustomName:"{\"text\":\"ManaCStand\"}",DisabledSlots:2039583,Marker:0b}
execute at @e[name=ManaCKnot2] run setblock ~ ~ ~ cauldron[level=2]
execute at @e[tag=IsManaBlockF] run summon minecraft:leash_knot ~ ~ ~ {CustomName: "{\"text\":\"ManaCKnotF\"}"}
execute at @e[name=ManaCKnotF] run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:15}}],HandItems:[{},{}],CustomName:"{\"text\":\"ManaCStand\"}",DisabledSlots:2039583,Marker:0b}
execute at @e[name=ManaCKnotF] run setblock ~ ~ ~ cauldron[level=3]
kill @e[name=ManaCKnotF]
kill @e[tag=IsManaBlockF]
kill @e[name=ManaCKnot2]
kill @e[tag=IsManaBlock2]
kill @e[name=ManaCKnot1]
kill @e[tag=IsManaBlock1]
kill @e[name=ManaCKnot]
kill @e[tag=IsManaBlock]
function agriflora:functionmanac


