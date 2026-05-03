
# Replicube is great fun!

My current solutions for the main storyline in Replicube, and some of the weekly puzzles.

I haven't completed the game yet but I am enjoying myself tremendously.

## Steps to export

### 1. First we _must_ only work on a copy of our savefile!

I copy my savefile on my linux machine

```shell
# make a directory for our savefile

mkdir-p ~/Downloads/replicube_solutions
cd ~/Downloads/replicube_solutions

# backup the savefile to current directory
cp /home/andxyz/.local/share/Replicube/progress.dat ~/Downloads/replicube_solutions/
```

### 2. Download the export tool into the directory and then run it on our copied savefile

You must download the code for the exporter from the releases page and extract the zip

```shell
# Run the tool to export the lua code to the new directory we just made
./replicube_lua_exporter -f ./progress.dat -o ~/Downloads/replicube_solutions/
```

I wrote the `replicube_lua_exporter` tool and uploaded it over here:

https://github.com/andxyz/replicube_lua_exporter
