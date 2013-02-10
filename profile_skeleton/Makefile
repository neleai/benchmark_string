FNAME = ${PWD}/data_profile
FILES = variant/strcpy_new.o variant/strcpy_sse2.s variant/strcpy_ssse3.s
all: header
	gcc backtrace.c -fPIC -c # do not add -O
	gcc  -Dstrcpy_no=`./test_sse` -DFNAME='"$(FNAME)"'  $(FILES)   hooks.c backtrace.o -shared -ldl -fPIC -g -o libc_profile.so
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
	dd if=/dev/zero of=$(FNAME) count=4000 2> /dev/null
	chmod a+rw $(FNAME)
rep:
	gcc -O1 -Dstrcpy_no=`./test_sse`  $(FILES) -DFNAME='"$(FNAME)"' report.c -o report -g
	-mkdir  results
	cp -r doc results
	./report > results/x
	cd results; sh x > result.html
	tar -cjf results.tar.bz2 results	
header:
	-cpp -Ivariant variant/gen_sse2.h > variant/strcpy_sse2.s
	-cpp -Ivariant variant/gen_ssse3.h        > variant/strcpy_ssse3.s
	gcc -g -O1 -fPIC -Ivariant  variant/strcpy_new.c -c -o variant/strcpy_new.o
bench_gcc:
	LD_PRELOAD=${PWD}/libc_profile.so  gcc -O2  -Dstrcpy_no=`./test_sse` -O3  $(FILES) -DFNAME='"$(FNAME)"' hooks.c -shared -ldl -fPIC -g -o libc_profil.so
	make rep
test:
	gcc tests/seq.c tests/forget_icache.s -o tests/seq
	gcc tests/rand.c tests/forget_icache.s -o tests/rand	
	gcc tests/rand_nocache.c tests/forget_icache.s -o tests/rand_nocache
	gcc tests/rand_noicache.c tests/forget_icache.s -o tests/rand_noicache
	gcc tests/rand_dirtycache.c tests/forget_icache.s -o tests/rand_dirtycache
