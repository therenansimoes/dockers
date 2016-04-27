#!/usr/bin/env bash

DIRECTORY=/opt/ATG

if [ "`ls -A $DIRECTORY`" = "" ]; then
    echo "Installing ATG."
    sudo chown -R developer:developer $DIRECTORY
    unzip /installer/installer.zip -d /installer
    chmod +x /installer/OCPlatform11_2.bin
    /installer/OCPlatform11_2.bin -i silent -f /installer/installer.properties
else
    echo "ATG has been installed."
fi

shutdown(){
	END=1
}

case "$1" in
    '')
		trap 'shutdown' INT TERM
        echo "Container Started."
		while [ "$END" == '' ]; do
			sleep 1
		done
		;;
	*)
		echo "Container is starting......."
		$@
		;;
esac
