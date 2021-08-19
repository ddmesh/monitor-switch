#!/bin/bash
#
# muse-monitor-setup.sh - switchs to a predefined setup
#
#    Copyright (C) 2021 Stephan Enderlein 
#    URL: https://github.com/ddmesh/monitor-switch
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program. See <http://www.gnu.org/licenses/gpl.html>
#    <https://enterprise.dejacode.com/licenses/public/gcc-exception-3.1/>
#

version="1.0"


case "$1" in 
	home)
		monitor-switch.sh -e DP-1-1 -e DP-1-3
		;;
	work)
		monitor-switch.sh -e eDP-2 -e eDP-1 
		;;
	all)
		monitor-switch.sh -e eDP-1 -e DP-1-1 -e DP-1-3
		;;
	*)
		echo ""
		echo "Version: ${version}"
		echo "Usage: $(basename $0) [home | work | all]"
		echo ""
		#xrandr | grep -w connected
		monitor-switch.sh --list
	;;
esac


