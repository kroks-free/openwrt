# Copyright (C) 2010-2013 OpenWrt.org
#

kroks_board_detect() {
	local machine="$1"
	local model="${machine##* }"

	case "$model" in
		*)
			name=$(echo "${model}" | tr 'A-Z' 'a-z')
			;;
	esac

	echo "$name"
}

ath79_board_detect() {
	local machine
	local name

	machine=$(awk 'BEGIN{FS="[ \t]+:[ \t]"} /machine/ {print $2}' /proc/cpuinfo)

	case "$machine" in
	"Kroks"*)
		name=$(kroks_board_detect "$machine")
		;;
	esac

	# use generic board detect if no name is set
	[ -z "$name" ] && return

	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"

	echo "$name" > /tmp/sysinfo/board_name
	echo "$machine" > /tmp/sysinfo/model
}
