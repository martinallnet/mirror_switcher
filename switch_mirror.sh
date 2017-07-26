#!/bin/sh

sources="/etc/apt/sources.list"
sources_local="/etc/apt/sources.list.local"
sources_network="/etc/apt/sources.list.network"
sources_global="/etc/apt/sources.list.global"

if [ "$1" = "local" ]; then

 if [ -f $sources_local ]; then
  cp $sources_local $sources
  echo "OK"
 elif [ ! -f $sources_local ];then
  echo "Error: No local mirror source avaiable!"
 fi

elif [ "$1" = "network" ]; then

 if [ -f $sources_network ]; then
  cp $sources_network $sources
  echo "OK"
 elif [ ! -f $sources_network ];then
  echo "Error: No network mirror source avaiable!"
 fi

elif [ "$1" = "global" ]; then

 if [ -f $sources_global ]; then
  cp $sources_global $sources
  echo "OK"
 elif [ ! -f $sources_global ];then
  echo "Error: No global mirror source avaiable!"
 fi

else
 echo "$0 local     local mirror source"
 echo "$0 network   network mirror source"
 echo "$0 global    global mirror source"

fi
