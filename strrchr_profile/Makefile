FNAME = ${PWD}/data_profile
FILES =  variant/strrchr.s variant/strrchr_sse42.s variant/strrchr_sse2_nobsf.s
all: header
	gcc backtrace.c -fPIC -c # do not add -O
	gcc  -Dfunction_no=`./test_sse` -DFNAME='"$(FNAME)"'  $(FILES)   hooks.c backtrace.o -shared -ldl -fPIC -g -o libc_profile.so
	gcc -O1 -Dfunction_no=`./test_sse`  $(FILES) -DFNAME='"$(FNAME)"' report.c -o report -g
	make reset
	make test
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
	dd if=/dev/zero of=$(FNAME) count=4000 2> /dev/null
	chmod a+rw $(FNAME)

rep:
	-mkdir  results
	cp -r doc results
	./report > results/x
	cd results; sh x > result.html
	tar -cjf results.tar.bz2 results	

header:
#	cpp -Ivariant variant/strrchr.S -o variant/strrchr.s
#	cpp -Ivariant variant/strrchr_sse42.S -o variant/strrchr_sse42.s
#	cpp -Ivariant variant/strrchr-sse2-no-bsf.S -o variant/strrchr_sse2_nobsf.s


bench_gcc:
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep
	LD_PRELOAD=${PWD}/libc_profile.so make test
	LD_PRELOAD=${PWD}/libc_profile.so make rep

test:
	gcc -L. -lm -lc_profile tests/seq.c tests/forget_icache.s -o tests/seq
	gcc -DSIZE=1000000 -g -L. -lm -lc_profile tests/rand.c tests/forget_icache.s -o tests/rand	
	gcc -DSIZE=1000000 -g -L. -lm -lc_profile tests/rand_nocache.c tests/forget_icache.s -o tests/rand_nocache
	gcc -DSIZE=1000000 -L. -lm -lc_profile tests/rand_noicache.c tests/forget_icache.s -o tests/rand_noicache
	gcc -DSIZE=120000 -L. -lm -lc_profile tests/rand_dirtycache.c tests/forget_icache.s -o tests/rand_L2
	gcc -DSIZE=2000000 -L. -lm -lc_profile tests/rand_dirtycache.c tests/forget_icache.s -o tests/rand_L3


cross:
	gcc-4.7 -O3 -shared -fPIC variant/memcpy_new.c -o memcpy_new.so
	gcc-4.7 -O3 -shared -fPIC variant/memcpy_byte.c -o memcpy_byte.so
