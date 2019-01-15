scoreboard players add #mcr_tick mcr_tick 1

# Every tick
function #main:tick

# Every 1 second
execute if score #mcr_tick mcr_tick matches 1 run function #main:second
execute if score #mcr_tick mcr_tick matches 21 run function #main:second
execute if score #mcr_tick mcr_tick matches 41 run function #main:second
execute if score #mcr_tick mcr_tick matches 61 run function #main:second
execute if score #mcr_tick mcr_tick matches 81 run function #main:second

execute if score #mcr_tick mcr_tick matches 100.. run scoreboard players set #mcr_tick mcr_tick 0