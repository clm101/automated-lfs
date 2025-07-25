#!/bin/bash

for i in $(locale); do
	unset ${i%=*}
done

if [[ "$TERM" = linux ]]; then
	export LANG=en_US.UTF-8
else
	source /etc/locale.conf

	for i in $(locale); do
		key=${i%=*}
		if [[ -v $key ]]; then
			export $key
		fi
	done
fi
