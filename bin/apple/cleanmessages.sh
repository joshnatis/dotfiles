#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <cmd>"
	echo "commands: <rm-empty-dirs>, <rm-gamepigeon>, <rm-url-previews>, <rm-gif>"
	exit
fi

cd /Users/Josh/Library/Messages/Attachments

for folder in *; do
	if [ -d $folder ]; then
		#tput bold; echo "moving into $folder" ; tput sgr0
		cd $folder
		#pwd
		for subfolder in `ls`; do
			cd $subfolder
			for innermost in `ls`; do
				if [ $1 = "rm-empty-dirs" ]; then
					rmdir $innermost
				elif [ $1 = "rm-gamepigeon" ]; then
					cd $innermost
					rm jpeg-image-*
					cd ..
				elif [ $1 = "rm-url-previews" ]; then
					cd $innermost
					rm *.pluginPayloadAttachment
					cd ..
				elif [ $1 = "rm-gif" ]; then
					cd $innermost
					rm *.gif 2> /dev/null
					cd ..
				fi
			done
			cd ..
		done
		cd ..
	fi
done
