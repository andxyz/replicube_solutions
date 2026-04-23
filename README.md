
# Replicube is great fun!

My current solutions for the main storyline in Replicube

I haven't completed the game yet but I am enjoying myself.

I copied my savefile on my linux machine, and then ran my export tool on it.

```shell
# backup the savefile to current directory
cp /home/andxyz/.local/share/Replicube/progress.dat ./

# make a directory
mkdir replicube_solutions

# export the lua code to the new directory we just made
./replicube_lua_exporter -f ./progress.dat -o ./replicube_solutions/
```

I wrote the `replicube_lua_exporter` tool and uploaded it over here:

https://github.com/andxyz/replicube_lua_exporter
