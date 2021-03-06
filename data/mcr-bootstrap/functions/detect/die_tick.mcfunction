# Detecting when a player die
execute as @a if score @s mcr_death matches 1.. run function #mcr:detect/death
execute as @a if score @s mcr_death matches 1.. run scoreboard players set @s mcr_death -1

# Detecting when a player respawn
execute as @e[type=player] if score @s mcr_death matches -1 run function #mcr:detect/respawn
execute as @e[type=player] if score @s mcr_death matches -1 run scoreboard players set @s mcr_death 0

# Detecting when a new player arrive on the server
execute as @a unless score @s mcr_death = @s mcr_death run function #mcr:detect/newplayer
execute as @a unless score @s mcr_death = @s mcr_death run scoreboard players set @s mcr_death 0