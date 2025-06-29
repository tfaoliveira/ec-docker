CC ?= clang
CFLAGS = -march=native -O3 -fomit-frame-pointer -fwrapv  -fPIC -fPIE

BIN ?= bin
BENCHS ?= \
  $(BIN)/bench_jasmin_ref \
  $(BIN)/bench_jasmin_avx2 \
  $(BIN)/bench_jasmin_avx2v \
  $(BIN)/bench_pq-crystals_ref \
  $(BIN)/bench_pq-crystals_avx2

TESTS ?= \
  $(BIN)/test_jasmin_ref \
  $(BIN)/test_jasmin_avx2 \
  $(BIN)/test_jasmin_avx2v \
  $(BIN)/test_pq-crystals_ref \
  $(BIN)/test_pq-crystals_avx2

# --------------------------------------------------------------------
.PHONY: default $(BENCHS)
default: table/macros.tex

table/macros.tex: run-bench
	./benchmacros.sh

#--

$(BIN)/bench_jasmin_ref: librandombytes1.a libkyber768_ref.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./common/ -I./src/jasmin/ref/ -DJADE_NAMESPACE=JADE_KEM_KYBER_KYBER768_AMD64_REF -DJADE_NAMESPACE_LC=jade_kem_kyber_kyber768_amd64_ref ./common/crypto_kem.c ./src/jasmin/ref/libkyber768_ref.a ./src/randombytes/librandombytes1.a

$(BIN)/bench_jasmin_avx2: librandombytes1.a libkyber768_avx2.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./common/ -I./src/jasmin/avx2/ -DJADE_NAMESPACE=JADE_KEM_KYBER_KYBER768_AMD64_AVX2 -DJADE_NAMESPACE_LC=jade_kem_kyber_kyber768_amd64_avx2 ./common/crypto_kem.c ./src/jasmin/avx2/libkyber768_avx2.a ./src/randombytes/librandombytes1.a

$(BIN)/bench_jasmin_avx2v: librandombytes1.a libkyber768_avx2v.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./common/ -I./src/jasmin/avx2v/ -DJADE_NAMESPACE=JADE_KEM_KYBER_KYBER768_AMD64_AVX2V -DJADE_NAMESPACE_LC=jade_kem_kyber_kyber768_amd64_avx2v ./common/crypto_kem.c ./src/jasmin/avx2v/libkyber768_avx2v.a ./src/randombytes/librandombytes1.a

#--

$(BIN)/bench_pq-crystals_ref: librandombytes1.a libpqcrystals_kyber768_ref.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./common/ -I./src/pq-crystals/ref/ -D__HAKYBER__ -DJADE_NAMESPACE=PQCRYSTALS_KYBER768_REF -DJADE_NAMESPACE_LC=pqcrystals_kyber768_ref ./common/crypto_kem.c ./src/pq-crystals/ref/libpqcrystals_kyber768_ref.a ./src/randombytes/librandombytes1.a

$(BIN)/bench_pq-crystals_avx2: librandombytes1.a libpqcrystals_kyber768_avx2.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./common/ -I./src/pq-crystals/avx2/ -D__HAKYBER__ -DJADE_NAMESPACE=PQCRYSTALS_KYBER768_AVX2 -DJADE_NAMESPACE_LC=pqcrystals_kyber768_avx2 ./common/crypto_kem.c ./src/pq-crystals/avx2/libpqcrystals_kyber768_avx2.a ./src/randombytes/librandombytes1.a

#--

run-bench: $(BENCHS)
	for d in $(BENCHS); do (echo -n "starting $$d..."; ./$$d > $$d.out; echo " done."); done


# --------------------------------------------------------------------
.PHONY: $(TESTS)

$(BIN)/test_jasmin_ref: libkyber768_ref.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./test/ -I./src/jasmin/ref/ -DJADE_NAMESPACE=JADE_KEM_KYBER_KYBER768_AMD64_REF -DJADE_NAMESPACE_LC=jade_kem_kyber_kyber768_amd64_ref ./test/crypto_kem.c test/notrandombytes.c test/notrandombytes1.c ./src/jasmin/ref/libkyber768_ref.a

$(BIN)/test_jasmin_avx2: libkyber768_avx2.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./test/ -I./src/jasmin/avx2/ -DJADE_NAMESPACE=JADE_KEM_KYBER_KYBER768_AMD64_AVX2 -DJADE_NAMESPACE_LC=jade_kem_kyber_kyber768_amd64_avx2 ./test/crypto_kem.c test/notrandombytes.c test/notrandombytes1.c ./src/jasmin/avx2/libkyber768_avx2.a

$(BIN)/test_jasmin_avx2v: libkyber768_avx2v.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./test/ -I./src/jasmin/avx2v/ -DJADE_NAMESPACE=JADE_KEM_KYBER_KYBER768_AMD64_AVX2V -DJADE_NAMESPACE_LC=jade_kem_kyber_kyber768_amd64_avx2v ./test/crypto_kem.c test/notrandombytes.c test/notrandombytes1.c ./src/jasmin/avx2v/libkyber768_avx2v.a

#--

$(BIN)/test_pq-crystals_ref: libpqcrystals_kyber768_ref.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./test/ -I./src/pq-crystals/ref/ -D__HAKYBER__ -DJADE_NAMESPACE=PQCRYSTALS_KYBER768_REF -DJADE_NAMESPACE_LC=pqcrystals_kyber768_ref ./test/crypto_kem.c test/notrandombytes.c test/notrandombytes1.c ./src/pq-crystals/ref/libpqcrystals_kyber768_ref.a

$(BIN)/test_pq-crystals_avx2: libpqcrystals_kyber768_avx2.a | $(BIN)
	$(CC) $(CFLAGS) -o $@ -I./test/ -I./src/pq-crystals/avx2/ -D__HAKYBER__ -DJADE_NAMESPACE=PQCRYSTALS_KYBER768_AVX2 -DJADE_NAMESPACE_LC=pqcrystals_kyber768_avx2 ./test/crypto_kem.c test/notrandombytes.c test/notrandombytes1.c ./src/pq-crystals/avx2/libpqcrystals_kyber768_avx2.a

#--

run-test: $(TESTS)
	echo "8004a42f34a4125acb4f88628139576882cdf9502a77937003e34f52d217a730 (expected)" # from supercop-20221122-clang-14/crypto_kem/kyber768/checksumbig
	@for d in $(TESTS); do (./$$d); done

# --------------------------------------------------------------------
$(BIN): ; @mkdir -p $@

librandombytes1.a:
	make -C ./src/randombytes/

libkyber768_ref.a:
	make -C ./src/jasmin/ref/

libkyber768_avx2.a:
	make -C ./src/jasmin/avx2/

libkyber768_avx2v.a:
	make -C ./src/jasmin/avx2v/

libpqcrystals_kyber768_ref.a:
	make -C ./src/pq-crystals/ref/ libpqcrystals_kyber768_ref.a

libpqcrystals_kyber768_avx2.a:
	make -C ./src/pq-crystals/avx2/ libpqcrystals_kyber768_avx2.a


# --------------------------------------------------------------------
.PHONY: clean distclean

clean:
	make -C ./src/randombytes/ clean
	make -C ./src/jasmin/ref/ clean
	make -C ./src/jasmin/avx2/ clean
	make -C ./src/jasmin/avx2v/ clean
	make -C ./src/pq-crystals/ref/ clean
	make -C ./src/pq-crystals/avx2/ clean

distclean: clean
	rm -fr $(BIN)

