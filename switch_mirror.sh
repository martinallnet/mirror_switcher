#!/bin/sh

sources="/etc/apt/sources.list"
sources_local="/etc/apt/sources.list.local"
sources_network="/etc/apt/sources.list.network"
sources_global="/etc/apt/sources.list.global"

mirror="/etc/apt/mirror.list"
mirror_network="/etc/apt/mirror.list.network"
mirror_global="/etc/apt/mirror.list.global"

if [ "$1" = "local" ]; then

 if [ -f $sources_local ]; then
  cp $sources_local $sources
  echo "OK"
 elif [ ! -f $sources_local ];then
  echo "Error: No local mirror source file avaiable!"
 fi

elif [ "$1" = "network" ]; then

 if [ -f $sources_network ]; then
  cp $sources_network $sources
  echo "OK"
 elif [ ! -f $sources_network ];then
  echo "Error: No network mirror source file avaiable!"
 fi

elif [ "$1" = "global" ]; then

 if [ -f $sources_global ]; then
  cp $sources_global $sources
  echo "OK"
 elif [ ! -f $sources_global ];then
  echo "Error: No global mirror source file avaiable!"
 fi

elif [ "$1" = "m-network" ]; then

 if [ -f $mirror_network ]; then
  cp $mirror_network $mirror
  echo "OK"
 elif [ ! -f $mirror_network ];then
  echo "Error: No network apt-mirror source file avaiable!"
 fi

elif [ "$1" = "m-global" ]; then

 if [ -f $mirror_global ]; then
  cp $mirror_global $mirror
  echo "OK"
 elif [ ! -f $mirror_global ];then
  echo "Error: No global apt-mirror mirror source file avaiable!"
 fi

else
 echo "$0 local       local mirror source"
 echo "$0 network     network mirror source"
 echo "$0 global      global mirror source"
 echo
 echo "$0 m-network   network apt-mirror source"
 echo "$0 m-global    global apt-mirror source"


fi
