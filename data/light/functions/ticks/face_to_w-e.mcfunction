tag @e[nbt={CustomName:'{"italic":false,"color":"aqua","text":"Face to West and East"}'},type=bat] add face_to_w-e
execute as @e[tag=face_to_w-e,limit=1,sort=nearest] at @e[tag=face_to_w-e,limit=1,sort=nearest] run data merge entity @s {NoAI:1b}
execute as @e[tag=face_to_w-e] at @e[tag=face_to_w-e] run function light:face/w-e
kill @e[tag=face_to_w-e,limit=1,sort=nearest]
