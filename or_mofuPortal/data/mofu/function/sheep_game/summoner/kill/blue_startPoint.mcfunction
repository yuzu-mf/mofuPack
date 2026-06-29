tellraw @s {"text": "一番近い青チームの開始地点を削除"}
playsound minecraft:entity.experience_orb.pickup ambient @a[tag=admin] ~ ~ ~

# 召喚
summon armor_stand ~ ~ ~ {Tags:["blue_start"],NoGravity:1b,Invisible:1b, Marker:1b}