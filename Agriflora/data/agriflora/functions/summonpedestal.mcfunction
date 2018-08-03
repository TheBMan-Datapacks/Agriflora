tag @e[type=item,nbt={Item:{id:"minecraft:barrier"},OnGround:1b},tag=!IsBroke] add IsVoid
execute at @e[tag=IsVoid] run summon minecraft:leash_knot ~ ~ ~ {CustomName: "{\"text\":\"PedestalKnot\"}"}
execute at @e[name=PedestalKnot] run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"barrier",Count:1b}],HandItems:[{},{}],CustomName:"{\"text\":\"PedestalStand\"}",DisabledSlots:2039583,Marker:0b}
execute at @e[name=PedestalKnot] run setblock ~ ~ ~ hopper{Items: [{Slot: 3b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1, Damage: 3b}}], CustomName: "{\"text\":\"Pedestal\"}"}
kill @e[name=PedestalKnot]
kill @e[tag=IsVoid]
execute at @e[name=PedestalStand] if block ~ ~ ~ hopper{Items: [{Slot: 3b, id: "minecraft:iron_hoe", Count: 1b}]} run tag @e[name=PedestalStand,distance=..1] add CoolPedestal
execute at @e[name=PedestalStand,tag=!CoolPedestal] run data merge block ~ ~ ~ {Items: [{Slot: 3b, id: "minecraft:iron_hoe", Count: 1b, tag: {Unbreakable: 1, Damage: 18b}}]}
tag @e remove CoolPedestal
function agriflora:killpedestal
