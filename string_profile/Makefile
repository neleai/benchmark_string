all:
	gcc hooks.c strlen.s -shared -fPIC -g -o libc_profile.so
	gcc report.c -o report -g
	dd if=/dev/zero of=/tmp/libc_profile count=100 2> /dev/null
	chmod a+rw /tmp/libc_profile

	@DIR=`pwd`
	@echo
	@echo
	@echo "Now add prefix "
	@echo "LD_PRELOAD=${PWD}/libc_profile.so"
	@echo " to programs you want to measure."
	@echo "When done run ${PWD}/report."
	@echo "You can zero counters by running make again."
	
