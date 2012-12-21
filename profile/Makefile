all:
	gcc hooks.c strlen.s strnlen.s -shared -ldl -fPIC -g -o libc_profile.so
	gcc report.c -o report -g
	dd if=/dev/zero of=/home/wizard/libc_profile count=1000 2> /dev/null
	chmod a+rw /home/wizard/libc_profile

	@DIR=`pwd`
	@echo
	@echo
	@echo "Now add prefix "
	@echo "LD_PRELOAD=${PWD}/libc_profile.so"
	@echo " to programs you want to measure."
	@echo "When done run ${PWD}/report."
	@echo "You can zero counters by running make again."
	@echo "simplest way to generate report is by make rep"
	@echo "This generates html page ${PWD}/results/result.html"
rep:
	gcc report.c -o report -g
	-mkdir  results
	cp -r doc results
	./report > results/x
	cd results; sh x > result.html	
