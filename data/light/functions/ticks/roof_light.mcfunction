### roof Light ###

## When Spawned
tag @e[nbt={CustomName:'{"italic":false,"color":"yellow","text":"Roof Light"}'},type=blaze] add spawn_roof_light
execute as @e[tag=spawn_roof_light,limit=1,sort=nearest] at @e[tag=spawn_roof_light,limit=1,sort=nearest] unless block ~ ~1 ~ air run data merge entity @s {NoAI:1b,DeathLootTable:"minecraft:empty"}
execute as @e[tag=spawn_roof_light,limit=1,sort=nearest] at @e[tag=spawn_roof_light,limit=1,sort=nearest] unless block ~ ~1 ~ air if block ~ ~2 ~ air run setblock ~ ~2 ~ redstone_wire
execute as @e[tag=spawn_roof_light,limit=1,sort=nearest] at @e[tag=spawn_roof_light,limit=1,sort=nearest] unless block ~ ~1 ~ air run summon armor_stand ~ ~1 ~ {Invisible:1b,HasVisualFire:false,NoAI:1b,NoBasePlate:1b,Tags:["lights","roof_light"],ArmorItems:[{id:"iron_boots",Count:1b},{},{},{}],NoGravity:true,Pose:{RightLeg:[0f,0f,4.5f],LeftLeg:[0f,0f,-4.5f]}}
execute as @e[tag=spawn_roof_light,limit=1,sort=nearest] at @e[tag=spawn_roof_light,limit=1,sort=nearest] if block ~ ~1 ~ air run tellraw @p[sort=nearest,limit=1] ["",{"text": "You must place that on the roof!","color": "red"}]
kill @e[tag=spawn_roof_light,limit=1,sort=nearest]

## Checking Condition
# On Condition
execute as @e[tag=roof_light] at @e[tag=roof_light] run execute as @s at @s unless block ~ ~1 ~ redstone_wire[power=0] run data merge entity @s {HasVisualFire:true}
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=15] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=15] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=14] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=14] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=13] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=13] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=12] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=12] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=11] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=11] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=10] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=10] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=9] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=9] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=8] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=8] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=7] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=7] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=6] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=6] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=5] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=5] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=4] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=4] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=3] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=3] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=2] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=2] replace air
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=1] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 light[level=1] replace air

# Off Condition
execute as @e[tag=roof_light] at @e[tag=roof_light] run execute as @s at @s if block ~ ~1 ~ redstone_wire[power=0] run data merge entity @s {HasVisualFire:false}
execute as @e[tag=roof_light] at @e[tag=roof_light] run execute as @s at @s unless block ~ ~1 ~ redstone_wire run data merge entity @s {HasVisualFire:false}
execute as @e[tag=roof_light] at @e[tag=roof_light] if block ~ ~1 ~ redstone_wire[power=0] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 air replace light
