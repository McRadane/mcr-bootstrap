# McRadane's Bootstrap
Minecraft datapack bootstrap, based on MSpaceDev (https://mspacedev.github.io/) works for HermitCraft / Xisumavoid's Vanila Tweek

## Tags
This datapack provides some tags for executing functions:

### Base:
* #main:init which is triggered on reload
* #main:tick which is executed each tick
* #main:second which is executed every second (20 ticks)
* #main:hook-newplayer which is executed for every new player on a server

### Sneak:
There is 4 tags for detecting players who sneak:
* #main:hook-sneak-begin is triggered when a player start to sneak
* #main:hook-sneak-tick is triggered each tick when a player is sneaking
* #main:hook-sneak-second is triggered each tick when a player is sneaking
* #main:hook-sneak-end is triggered when a player has stopped sneaking

### Swim:
There is 4 tags for detecting players who are in water:
* #main:hook-swim-begin is triggered when a player is in the water
* #main:hook-swim-tick is triggered each tick when a player is in the water
* #main:hook-swim-second is triggered each second when a player is in the water
* #main:hook-swim-end is triggered when a player wasn't in the water anymore

### Death:
There is 2 tags for detecting players deaths
* #main:hook-death is triggered when a player died
* #main:hook-respawn is triggered when a player respawn

### How to use a tag :

1. In your datapack, create a folder named "main" and a subfolder named "tags"
2. create a json file named after the tag you want to use, eg. "hook-swim-tick"
  * In this case, the folder structure will be datapacks/ < your datapack > /data/main/tags/hook-swim-tick.json
3. Put the following code to call your function:
```
{
    "values": [
        "<your namespace>:<your function>"
    ]
}
```

## Version number
This datapack use a scoreboard named mcr_versions to store the versions of all my datapacks. For eg. this datapack is refered as #mcr_bootstrap

If you want to use tags from a specific version, you can check the installed bootstrap version :
```execute if score #mcr_bootstrap mcr_versions matches 2.. run function <your namespace>:<you function>```

You can also use a tag hook named _init.X_ where X is the minimum version of the bootstrap you need, and it will be triggered only if you have the correct version of the datapack
