#!/bin/bash

# Jekylltool script allows init post file for jekyll
# Copyright (C) (energy1011[4t]gmail[d0t]com)

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FILETYPE=".md"
EDITOR="vim"
GTIME="-06:00"

# Create config array
declare -A config

# COLORS
co='\033[0m'       # Text Reset

# Regular Colors
black='\033[0;30m'
red='\033[0;31m'
green='\033[38;5;82m'
yellow='\033[1;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
white='\033[0;37m'


function usage(){
echo -e "
Usage: $0 [OPTIONS] [ARGUMENTS]
    OPTIONS:
    -h  show this help
    -c  create a new post file 
    -v  turn on verbose mode
    EXAMPLES
    Example: $0 -c \"Title of the post\"
"
}

function create_post(){
	# Time
	TIME=`date +"%T"`
	# Date
	DATE=`date +"%Y-%m-%d"`
	# Title
	TITLE=$1
	FILE="${DATE}-${TITLE// /-}${FILETYPE}"
	echo -e "${green}[i] Creating a post: $FILE ${co}";
	echo -e "${purple}[->] (IMAGE) Please enter main image filename (or press ENTER to empty):${co}"
	read IMAGEFILE
	echo -e "${purple}[->] Post type (post/screencast/podcast) if you aren't sure just type: post${co}"
	read TYPE
	echo -e "${purple}[->] Please enter categories (with comma separator):${co}"
	read CATEGORIES
	echo -e "${purple}[->] Please enter tags (with comma separator):${co}"
	read TAGS 
	echo -e "${purple}[?] (PUBLISHED) Set published (y=true / n=false):${co}"
	read -n1 option
	if [ "$option" == "y" ]; then
		PUBLISHED=true
	else
		PUBLISHED=false
	fi	

	#HERE-DOCUMENT post
	export document=`cat <<EOF
---
layout: post
title: "${TITLE}"
date: ${DATE} ${TIME} ${GTIME}
type: ${TYPE}
published: ${PUBLISHED}
status: publish
categories: [${CATEGORIES}]
tags: [${TAGS}]
author: "${config[author]}"
image: "${IMAGEFILE}"
---
EOF
`;
	echo -e "\n${cyan}$document${co}";
	echo -e "${red}[?] Is it correct (y/n)${co}";
	read -n1 option
	POST_PATH=${config[postpath]}${FILE}
	if [ "$option" == "y" ]; then
		echo -e"[..] Saving to: "$POST_PATH
		echo "$document" > $POST_PATH
		echo -e "\n${green}[i] Post file created :)${co}";
		echo -e "${green}[?] Open file with: $EDITOR (y/n)${co}";
		read -n1 option
		if [ "$option" == "y" ]; then
			$EDITOR $POST_PATH
		else
			echo -e "\nBye.";
		fi	
	else
		exit 1;
	fi	
}

function load_dot_file(){
	if [ ! -f ~/.jekylltool ]; then
		echo "[i] Dotfile not found ~/.jekylltool, we need to create it."
		touch ~/.jekylltool
		echo -e "${purple} Enter full path for _post folder:${co}";
		read POST_PATH
		echo "postpath=$POST_PATH" > ~/.jekylltool
		echo -e "${purple} Enter author for your post:${co}";
		read AUTHOR
		echo "author=$AUTHOR" >> ~/.jekylltool
	fi
	while read -r line || [[ -n "$line" ]];
	do
		if [[ $line =~ (.*)"="(.*) ]]; then
			config[${BASH_REMATCH[1]}]=${BASH_REMATCH[2]}
		fi
	done < ~/.jekylltool
}

# Init
load_dot_file
echo -e "${blue}Hello ${config[author]} Welcome to Jekyll Tool by Energy1011${co}";
OPTSTRING=':c:t:h:'

while getopts $OPTSTRING option; do
	case $option in
		c) create_post "$OPTARG"; exit;;
		h) usage; exit;;
		*) echo "Invalid option: -$OPTARG"; usage; >&2; exit 1;;
		:) echo "Missing argument for option: -$OPTARG"; usage; >&2; exit 1;;
		*) echo "Unimplemented option: -$OPTARG"; usage; >&2; exit 1;;
	esac
done
