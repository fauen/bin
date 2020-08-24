#!/bin/sh
# All credits for this file goes to the FTB staff (https://feed-the-beast.com)

cd "$(dirname "$0")"
. ./settings.sh

mkdir -p $(dirname libraries/${LAUNCHWRAPPER})

which wget
if [ $? -eq 0 ]; then
        wget -O ${JARFILE} https://s3.amazonaws.com/Minecraft.Download/versions/${MCVER}/${JARFILE}
        wget -O libraries/${LAUNCHWRAPPER} https://libraries.minecraft.net/${LAUNCHWRAPPER}
		wget -O ${FORGEJAR} http://files.minecraftforge.net/maven/net/minecraftforge/forge/${MCVER}-${FORGEVER}/${FORGEJAR}
else
        which curl
        if [ $? -eq 0 ]; then
                curl -o ${JARFILE} https://s3.amazonaws.com/Minecraft.Download/versions/${MCVER}/minecraft_server.${MCVER}.jar
        		curl -o libraries/${LAUNCHWRAPPER} https://libraries.minecraft.net/${LAUNCHWRAPPER}
        else
                echo "Neither wget or curl were found on your system. Please install one and try again"
        fi
fi
