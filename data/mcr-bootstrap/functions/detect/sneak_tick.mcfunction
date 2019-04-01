# Detecting player sneaking
execute as @a[nbt={OnGround:1b}] if score @s mcr_sneak_detect < @s mcr_sneak_state run function #mcr:detect/sneak/begin
execute as @a[nbt={OnGround:1b}] if score @s mcr_sneak_state matches 1.. run function #mcr:detect/sneak/tick
execute as @a[nbt={OnGround:1b}] if score @s mcr_sneak_detect > @s mcr_sneak_state run function #mcr:detect/sneak/end
execute as @a if score @s mcr_sneak_detect > @s mcr_sneak_state run scoreboard players set @s mcr_sneak_time 0
execute as @a[nbt={OnGround:1b}] run scoreboard players operation @s mcr_sneak_detect = @s mcr_sneak_state
scoreboard players set @a mcr_sneak_state 0
