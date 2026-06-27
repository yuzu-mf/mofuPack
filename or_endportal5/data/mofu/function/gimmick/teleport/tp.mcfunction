# パーティクル(テレポートする前の場所)
particle minecraft:sonic_boom ~ ~1 ~ 0.1 0.1 0.1 3 1 force @a

# テレポート！
execute at @s run tp @a[tag=tp_exec,limit=1] ~ ~1 ~

# 音(テレポートした後の場所)
execute at @s run playsound entity.enderman.teleport ambient @a ~ ~ ~

# パーティクル(テレポートした後の場所)
execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 1 50 force

# 条件を変えて、他の人が使えるようにする＆クールダウンをセット
scoreboard players set @a[tag=tp_exec,limit=1] tp_cd 20
scoreboard players set @a[tag=tp_exec,limit=1] tp_lock 1
scoreboard players set @a tp_using 0