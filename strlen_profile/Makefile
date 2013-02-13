FNAME = ${PWD}/data_profile
FILES = variant/strlen_sse2_pminub.s variant/strlen_sse4.s variant/strlen_new.s variant/strlen_new2.s
all: header
	gcc backtrace.c -c
	gcc -O1 -Dstrlen_no=`./test_sse` $(FILES)	-DFNAME='"$(FNAME)"' backtrace.o hooks.c -shared -ldl -fPIC -g -o libc_profile.so
	make reset
	@DIR=`pwd`
	@echo
	@echo
	@echo "Now add prefix "
	@echo "LD_PRELOAD=${PWD}/libc_profile.so"
	@echo " to programs you want to measure."
	@echo
	@echo "When done run ${PWD}/report."
	@echo "You can zero counters by running make again."
	@echo "simplest way to generate report is by make rep"
	@echo "This generates html page ${PWD}/results/result.html"
	@echo	
	@echo "Or use make bench_gcc to run simple benchmark"
reset:
	dd if=/dev/zero of=$(FNAME) count=1000 2> /dev/null
	chmod a+rw $(FNAME)
rep:
	gcc -Dstrlen_no=`./test_sse`  $(FILES) -DFNAME='"$(FNAME)"' report.c -o report -g
	-mkdir  results
	cp -r doc results
	./report > results/x
	cd results; sh x > result.html
	tar -cjf results.tar.bz2 results	
header:
	-cpp -Ivariant variant/gen_sse2_pminub.h > variant/strlen_sse2_pminub.s
	-cpp -Ivariant variant/gen_sse4.h        > variant/strlen_sse4.s
	-cpp -Ivariant variant/gen_new.h         > variant/strlen_new.s
bench_gcc:
	LD_PRELOAD=${PWD}/libc_profile.so  gcc  -Dstrlen_no=`./test_sse` -O3  $(FILES) -DFNAME='"$(FNAME)"' hooks.c -shared -ldl -fPIC -g -o libc_profil.so
	make rep
test:
	gcc tests/seq.c tests/forget_icache.s -o tests/seq
	gcc tests/rand.c tests/forget_icache.s -o tests/rand	
	gcc tests/rand_nocache.c tests/forget_icache.s -o tests/rand_nocache
	gcc tests/rand_noicache.c tests/forget_icache.s -o tests/rand_noicache
	gcc tests/rand_dirtycache.c tests/forget_icache.s -o tests/rand_dirtycache
