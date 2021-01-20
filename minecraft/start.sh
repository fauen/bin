#!/bin/bash

#This part will change the motd of the server to the name of the current directory.
#Reasoning behind this is I always name the directories with modpack name and version number.
#The theory is that it will help the players on the server to know which version is running.
sed -i "s/motd.*/motd=${PWD##*/}/" server.properties

#This is the general starting parameters I use for minecraft, vanilla or modded.
java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx6144M -Xms6144M -jar minecraft_or_forge.jar nogui
