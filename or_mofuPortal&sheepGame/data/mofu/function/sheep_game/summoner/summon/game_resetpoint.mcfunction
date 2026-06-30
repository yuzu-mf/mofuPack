tellraw @s {"text": "足元にゲーム終了後のリスポーン地点を設置"}
playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

# 召喚
summon armor_stand ~ ~ ~ {Tags:["game_reset"],NoGravity:1b,Invisible:1b, Marker:1b}