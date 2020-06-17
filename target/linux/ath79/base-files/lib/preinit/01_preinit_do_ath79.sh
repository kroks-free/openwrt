#!/bin/sh

do_ath79() {
	. /lib/ath79.sh

	ath79_board_detect
}

boot_hook_add preinit_main do_ath79
