tag @e[nbt={CustomName:'{"italic":false,"color":"red","text":"Remove Light"}'},type=spider] add remove_light
execute as @e[tag=remove_light,limit=1,sort=nearest] at @e[tag=remove_light,limit=1,sort=nearest] run data merge entity @s {NoAI:1b,DeathLootTable:"minecraft:empty"}
execute as @e[tag=remove_light] at @e[tag=remove_light] run execute at @e[type=armor_stand,tag=lights,limit=1,sort=nearest,distance=..2] if block ~ ~1 ~ redstone_wire run setblock ~ ~1 ~ air
execute as @e[tag=remove_light] at @e[tag=remove_light] run execute at @e[type=armor_stand,tag=lights,limit=1,sort=nearest,distance=..2] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 air replace light
execute as @e[tag=remove_light] at @e[tag=remove_light] run kill @e[tag=lights,sort=nearest,limit=1,distance=..2]
kill @e[tag=remove_light,limit=1,sort=nearest]
