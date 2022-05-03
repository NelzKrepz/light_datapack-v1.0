tag @e[nbt={CustomName:'{"italic":false,"color":"aqua","text":"Face to South and North"}'},type=bat] add face_to_s-n
execute as @e[tag=face_to_s-n,limit=1,sort=nearest] at @e[tag=face_to_s-n,limit=1,sort=nearest] run data merge entity @s {NoAI:1b}
execute as @e[tag=face_to_s-n] at @e[tag=face_to_s-n] run function light:face/s-n
kill @e[tag=face_to_s-n,limit=1,sort=nearest]
