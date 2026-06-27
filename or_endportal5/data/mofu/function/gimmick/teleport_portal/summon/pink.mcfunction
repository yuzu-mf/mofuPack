tellraw @s {"text": "足元にpink_portalを設置"}
playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

# 召喚
summon armor_stand ~ ~ ~ {Tags:["pink_portal"],NoGravity:1b,Invisible:1b}
