scoreboard objectives add HitSomething minecraft.custom:minecraft.damage_dealt
scoreboard objectives add TeleCooldown dummy
scoreboard players set HasHit HitSomething 1
scoreboard players set IsSneaking IsSneak 1
scoreboard players set CountDown TeleCooldown 1

##Levitation Pendant
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:21}}]}] at @s if score @s HitSomething >= HasHit HitSomething run effect give @e[type=!player,type=!armor_stand,sort=nearest,limit=1] levitation 1 5 true
execute as @e[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:21}}]}] at @s if score @s IsSneak >= IsSneaking IsSneak run effect give @p minecraft:levitation 1 1 true

##Teleportation Pendant


execute as @e[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:20}}]}] at @s if score @s IsSneak >= IsSneaking IsSneak if score @s TeleCooldown matches 0 run tp @s ^ ^ ^5
execute as @e[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:20}}]}] at @s if score @s IsSneak >= IsSneaking IsSneak if score @s TeleCooldown matches 0 run scoreboard players set @s TeleCooldown 100
execute as @a at @s if score @s TeleCooldown >= CountDown TeleCooldown run scoreboard players remove @s TeleCooldown 1
scoreboard players reset @a IsSneak
scoreboard players reset @a HitSomething