execute as @a if score @s mcr_swim matches 1 run function #main:hook-swim-second
execute as @a[nbt={OnGround:1b}] if score @s mcr_sneak_time matches 1.. run function #main:hook-sneak-second