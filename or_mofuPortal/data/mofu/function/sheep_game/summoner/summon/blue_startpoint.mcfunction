tellraw @s {"text": "足元に青チームの開始地点を設置"}
playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

# 召喚
summon armor_stand ~ ~ ~ {Tags:["blue_start"],NoGravity:1b,Invisible:1b, Marker:1b}