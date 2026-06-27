tellraw @s {"text": "足元にgray_portalを設置"}
playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

# 召喚
summon armor_stand ~ ~ ~ {Tags:["gray_portal"],NoGravity:1b,Invisible:1b, Marker:1b}