#!/bin/bash
#

read -p "Do you want to proceed? (y/n): " choice

case $choice in
	[yY])
		echo "Proceeding..."
		;;
	[nN])
		echo "Aborting..."
		exit 0
		;;
	*)
		echo "Invalid choice. Aborting..."
		exit 1
		;;
esac

