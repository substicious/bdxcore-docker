#!/bin/bash -e

echo "[Step 2] Finialising BDS Install..."
echo "======================================="
echo ""
sleep 2

echo "+ Moving 'server.properties' to '/data/server_config/'..."
if [ -d /data/server_config/ ]; then
    if [ -f '/opt/bdxcore/server.properties' ]; then
        rsync -r /opt/bdxcore/server.properties /data/server_config/server.properties
        rm /opt/bdxcore/server.properties
        if [ -f '/data/server_config/server.properties' ]; then
            echo "> Done!"
        fi
    fi 
fi
sleep 1
echo "+ Moving 'permissions.json' to '/data/server_config/'..."
if [ -d /data/server_config/ ]; then
    if [ -f '/opt/bdxcore/permissions.json' ]; then
        rsync -r /opt/bdxcore/permissions.json /data/server_config/permissions.json
        rm /opt/bdxcore/permissions.json
        if [ -f '/data/server_config/permissions.json' ]; then
            echo "> Done!"
        fi
    fi 
fi
sleep 1
echo "+ Moving 'whitelist.json' to '/data/server_config/'..."
if [ -d /data/server_config/ ]; then
    if [ -f '/opt/bdxcore/whitelist.json' ]; then
        rsync -r /opt/bdxcore/whitelist.json /data/server_config/whitelist.json
        rm /opt/bdxcore/whitelist.json
        if [ -f '/data/server_config/whitelist.json' ]; then
            echo "> Done!"
        fi
    fi 
fi
sleep 2
echo ""
echo "[Step 3] Installing Necessary Libraries..."
echo "=============================================="
echo ""
sleep 2
echo "+ BDXC & Chakra Dll & Libs..."
if [ -d /data/Core_Dll/ ]; then
    wget 
