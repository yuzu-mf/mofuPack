tellraw @s {"text": "足元にsheep_summonerを設置"}
playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

# 召喚
summon armor_stand ~ ~ ~ {Tags:["sheep_summoner"],NoGravity:1b,Invisible:1b, Marker:1b}