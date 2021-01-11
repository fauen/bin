#!/bin/bash
java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx6144M -Xms6144M -jar minecraft_or_forge.jar nogui
