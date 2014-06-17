#!/bin/bash

if [ $EUID != 0 ]; then
	echo "this script must be run using sudo"
	echo ""
	echo "usage:"
	echo "sudo ./compile_OF.sh"
	exit $exit_code
   exit 1
fi

cd OF/scripts/linux/ubuntu
sh ./install_dependencies.sh
sh ./install_codecs.sh

cd ..
sh ./compileOF.sh

