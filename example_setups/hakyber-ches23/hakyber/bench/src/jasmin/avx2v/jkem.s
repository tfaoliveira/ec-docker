	.att_syntax
	.text
	.p2align	5
	.globl	_jade_kem_kyber_kyber768_amd64_avx2v_dec
	.globl	jade_kem_kyber_kyber768_amd64_avx2v_dec
	.globl	_jade_kem_kyber_kyber768_amd64_avx2v_enc
	.globl	jade_kem_kyber_kyber768_amd64_avx2v_enc
	.globl	_jade_kem_kyber_kyber768_amd64_avx2v_keypair
	.globl	jade_kem_kyber_kyber768_amd64_avx2v_keypair
_jade_kem_kyber_kyber768_amd64_avx2v_dec:
jade_kem_kyber_kyber768_amd64_avx2v_dec:
	movq	%rsp, %rax
	leaq	-14568(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rax, 14560(%rsp)
	movq	%rbx, 14512(%rsp)
	movq	%rbp, 14520(%rsp)
	movq	%r12, 14528(%rsp)
	movq	%r13, 14536(%rsp)
	movq	%r14, 14544(%rsp)
	movq	%r15, 14552(%rsp)
	movq	%rdi, 14016(%rsp)
	movq	%rsi, 14024(%rsp)
	movq	%rsp, %rax
	vpbroadcastd	glob_data + 3164(%rip), %ymm0
	vmovdqu	glob_data + 32(%rip), %ymm1
	vpbroadcastq	glob_data + 2960(%rip), %ymm2
	vpbroadcastd	glob_data + 3160(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3264(%rsp)
	vmovdqu	20(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3296(%rsp)
	vmovdqu	40(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3328(%rsp)
	vmovdqu	60(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3360(%rsp)
	vmovdqu	80(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3392(%rsp)
	vmovdqu	100(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3424(%rsp)
	vmovdqu	120(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3456(%rsp)
	vmovdqu	140(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3488(%rsp)
	vmovdqu	160(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3520(%rsp)
	vmovdqu	180(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3552(%rsp)
	vmovdqu	200(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3584(%rsp)
	vmovdqu	220(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3616(%rsp)
	vmovdqu	240(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3648(%rsp)
	vmovdqu	260(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3680(%rsp)
	vmovdqu	280(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3712(%rsp)
	vmovdqu	300(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3744(%rsp)
	vmovdqu	320(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3776(%rsp)
	vmovdqu	340(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3808(%rsp)
	vmovdqu	360(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3840(%rsp)
	vmovdqu	380(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3872(%rsp)
	vmovdqu	400(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3904(%rsp)
	vmovdqu	420(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3936(%rsp)
	vmovdqu	440(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 3968(%rsp)
	vmovdqu	460(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4000(%rsp)
	vmovdqu	480(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4032(%rsp)
	vmovdqu	500(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4064(%rsp)
	vmovdqu	520(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4096(%rsp)
	vmovdqu	540(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4128(%rsp)
	vmovdqu	560(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4160(%rsp)
	vmovdqu	580(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4192(%rsp)
	vmovdqu	600(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4224(%rsp)
	vmovdqu	620(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4256(%rsp)
	vmovdqu	640(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4288(%rsp)
	vmovdqu	660(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4320(%rsp)
	vmovdqu	680(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4352(%rsp)
	vmovdqu	700(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4384(%rsp)
	vmovdqu	720(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4416(%rsp)
	vmovdqu	740(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4448(%rsp)
	vmovdqu	760(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4480(%rsp)
	vmovdqu	780(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4512(%rsp)
	vmovdqu	800(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4544(%rsp)
	vmovdqu	820(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4576(%rsp)
	vmovdqu	840(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4608(%rsp)
	vmovdqu	860(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4640(%rsp)
	vmovdqu	880(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4672(%rsp)
	vmovdqu	900(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4704(%rsp)
	vmovdqu	920(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4736(%rsp)
	vmovdqu	940(%rsi), %ymm4
	vpermq	$-108, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm1
	vpsllvd	%ymm2, %ymm1, %ymm1
	vpsrlw	$1, %ymm1, %ymm1
	vpand	%ymm3, %ymm1, %ymm1
	vpmulhrsw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, 4768(%rsp)
	leaq	960(%rsi), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$188(%rip), %r8
	jmp 	L_poly_decompress$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$188:
	movq	%rdx, %rdi
	leaq	4800(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$187(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$187:
	leaq	384(%rdi), %rdi
	leaq	5312(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$186(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$186:
	leaq	384(%rdi), %rdi
	leaq	5824(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$185(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$185:
	leaq	3264(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$184(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$184:
	leaq	3776(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$183(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$183:
	leaq	4288(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$182(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$182:
	leaq	640(%rsp), %rcx
	leaq	4800(%rsp), %rsi
	leaq	3264(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$181(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$181:
	leaq	1152(%rsp), %rcx
	leaq	5312(%rsp), %rsi
	leaq	3776(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$180(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$180:
	leaq	640(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$179(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$179:
	leaq	1152(%rsp), %rcx
	leaq	5824(%rsp), %rsi
	leaq	4288(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$178(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$178:
	leaq	640(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$177(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$177:
	leaq	640(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$176(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$176:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	640(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$175(%rip), %r8
	jmp 	L_poly_sub$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$175:
	leaq	1152(%rsp), %rcx
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rcx)
	vmovdqu	32(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rcx)
	vmovdqu	64(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	96(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	128(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rcx)
	vmovdqu	160(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rcx)
	vmovdqu	192(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rcx)
	vmovdqu	224(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	256(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rcx)
	vmovdqu	288(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rcx)
	vmovdqu	320(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	352(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	384(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rcx)
	vmovdqu	416(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rcx)
	vmovdqu	448(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	480(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	leaq	1152(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$174(%rip), %rdi
	jmp 	L_poly_tomsg_1$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$174:
	leaq	32(%rdx), %rax
	leaq	2304(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	%rdx, 14032(%rsp)
	leaq	64(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$173(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_sha3_512_64$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$173:
	leaq	216(%rsp), %rsp
	movq	14032(%rsp), %rax
	leaq	1152(%rax), %rcx
	leaq	2176(%rsp), %rdx
	movq	%rsp, %rax
	leaq	96(%rsp), %rsi
	movq	%rdx, 14040(%rsp)
	movq	%rcx, %rdi
	leaq	3264(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$172(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$172:
	leaq	384(%rdi), %rdi
	leaq	3776(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$171(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$171:
	leaq	384(%rdi), %rdi
	leaq	4288(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$170(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$170:
	movq	$0, %rdx
	leaq	1152(%rcx), %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$168
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$169:
	movq	(%rcx), %rdi
	movq	%rdi, 14072(%rsp,%rdx,8)
	leaq	8(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$168:
	cmpq	$4, %rdx
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$169
	leaq	1152(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$167(%rip), %r8
	jmp 	L_poly_frommsg_1$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$167:
	movq	%rsi, 14048(%rsp)
	movq	$1, %rax
	movq	%rax, 14056(%rsp)
	movb	14072(%rsp), %al
	movb	%al, 14104(%rsp)
	movb	14073(%rsp), %al
	movb	%al, 14105(%rsp)
	movb	14074(%rsp), %al
	movb	%al, 14106(%rsp)
	movb	14075(%rsp), %al
	movb	%al, 14107(%rsp)
	movb	14076(%rsp), %al
	movb	%al, 14108(%rsp)
	movb	14077(%rsp), %al
	movb	%al, 14109(%rsp)
	movb	14078(%rsp), %al
	movb	%al, 14110(%rsp)
	movb	14079(%rsp), %al
	movb	%al, 14111(%rsp)
	movb	14080(%rsp), %al
	movb	%al, 14112(%rsp)
	movb	14081(%rsp), %al
	movb	%al, 14113(%rsp)
	movb	14082(%rsp), %al
	movb	%al, 14114(%rsp)
	movb	14083(%rsp), %al
	movb	%al, 14115(%rsp)
	movb	14084(%rsp), %al
	movb	%al, 14116(%rsp)
	movb	14085(%rsp), %al
	movb	%al, 14117(%rsp)
	movb	14086(%rsp), %al
	movb	%al, 14118(%rsp)
	movb	14087(%rsp), %al
	movb	%al, 14119(%rsp)
	movb	14088(%rsp), %al
	movb	%al, 14120(%rsp)
	movb	14089(%rsp), %al
	movb	%al, 14121(%rsp)
	movb	14090(%rsp), %al
	movb	%al, 14122(%rsp)
	movb	14091(%rsp), %al
	movb	%al, 14123(%rsp)
	movb	14092(%rsp), %al
	movb	%al, 14124(%rsp)
	movb	14093(%rsp), %al
	movb	%al, 14125(%rsp)
	movb	14094(%rsp), %al
	movb	%al, 14126(%rsp)
	movb	14095(%rsp), %al
	movb	%al, 14127(%rsp)
	movb	14096(%rsp), %al
	movb	%al, 14128(%rsp)
	movb	14097(%rsp), %al
	movb	%al, 14129(%rsp)
	movb	14098(%rsp), %al
	movb	%al, 14130(%rsp)
	movb	14099(%rsp), %al
	movb	%al, 14131(%rsp)
	movb	14100(%rsp), %al
	movb	%al, 14132(%rsp)
	movb	14101(%rsp), %al
	movb	%al, 14133(%rsp)
	movb	14102(%rsp), %al
	movb	%al, 14134(%rsp)
	movb	14103(%rsp), %al
	movb	%al, 14135(%rsp)
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$165
	movb	$0, 14136(%rsp)
	movb	$0, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$166
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$165:
	movb	$0, 14136(%rsp)
	movb	$0, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$166:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$164(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$164:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$156
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$157:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$163(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$163:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$158
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$159:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$162
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$162:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$160
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$160
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$161:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$160:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$158:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$159
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$156:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$157
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$154
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$155:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$154:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$155
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$152
	movb	$0, 14136(%rsp)
	movb	$1, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$153
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$152:
	movb	$1, 14136(%rsp)
	movb	$0, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$153:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$151(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$151:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$143
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$144:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$150(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$150:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$145
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$146:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$149
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$149:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$147
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$147
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$148:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$147:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$145:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$146
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$143:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$144
	movq	$0, %rax
	movq	$256, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$141
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$142:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$141:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$142
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$139
	movb	$0, 14136(%rsp)
	movb	$2, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$140
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$139:
	movb	$2, 14136(%rsp)
	movb	$0, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$140:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$138(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$138:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$130
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$131:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$137(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$137:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$132
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$133:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$136
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$136:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$134
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$134
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$135:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$134:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$132:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$133
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$130:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$131
	movq	$0, %rax
	movq	$512, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$128
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$129:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$129
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$126
	movb	$1, 14136(%rsp)
	movb	$0, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$127
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$126:
	movb	$0, 14136(%rsp)
	movb	$1, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$127:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$125(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$125:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$117
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$118:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$124(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$124:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$119
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$120:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$123
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$123:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$121
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$121
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$122:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$121:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$119:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$120
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$117:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$118
	movq	$0, %rax
	movq	$768, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$115
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$116:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$115:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$116
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$113
	movb	$1, 14136(%rsp)
	movb	$1, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$114
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$113:
	movb	$1, 14136(%rsp)
	movb	$1, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$114:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$112(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$112:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$104
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$105:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$111(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$111:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$106
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$107:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$110
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$110:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$108
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$108
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$109:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$108:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$106:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$107
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$104:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$105
	movq	$0, %rax
	movq	$1024, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$102
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$103:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$102:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$103
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$100
	movb	$1, 14136(%rsp)
	movb	$2, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$101
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$100:
	movb	$2, 14136(%rsp)
	movb	$1, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$101:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$99(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$99:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$91
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$92:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$98(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$98:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$93
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$94:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$97
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$97:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$95
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$95
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$96:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$95:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$93:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$94
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$91:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$92
	movq	$0, %rax
	movq	$1280, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$89
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$90:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$89:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$90
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$87
	movb	$2, 14136(%rsp)
	movb	$0, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$88
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$87:
	movb	$0, 14136(%rsp)
	movb	$2, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$88:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$86(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$86:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$78
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$79:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$85(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$85:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$80
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$81:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$84
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$84:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$82
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$82
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$83:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$82:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$80:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$81
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$78:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$79
	movq	$0, %rax
	movq	$1536, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$76
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$77:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$76:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$77
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$74
	movb	$2, 14136(%rsp)
	movb	$1, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$75
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$74:
	movb	$1, 14136(%rsp)
	movb	$2, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$75:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$73(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$73:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$65
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$66:
	movq	%rdi, 14064(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$72(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$72:
	leaq	16(%rsp), %rsp
	movq	14064(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$67
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$68:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$71
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$71:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$69
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$69
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$70:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$69:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$67:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$68
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$65:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$66
	movq	$0, %rax
	movq	$1792, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$63
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$64:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$64
	movq	14056(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$61
	movb	$2, 14136(%rsp)
	movb	$2, 14137(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$62
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$61:
	movb	$2, 14136(%rsp)
	movb	$2, 14137(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$62:
	leaq	14312(%rsp), %rax
	leaq	14104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$60(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$60:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$52
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$53:
	movq	%rdi, 14056(%rsp)
	leaq	14312(%rsp), %rax
	leaq	14144(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$59(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$59:
	leaq	16(%rsp), %rsp
	movq	14056(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$54
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$55:
	movzbw	14144(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	14144(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$58
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$58:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$56
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$56
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$57:
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$56:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$54:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$55
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$52:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$53
	movq	$0, %rax
	movq	$2048, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$50
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$51:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 9408(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$50:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$51
	leaq	9408(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$49(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$49:
	leaq	9920(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$48(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$48:
	leaq	10432(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$47(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$47:
	leaq	10944(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$46(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$46:
	leaq	11456(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$45(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$45:
	leaq	11968(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$44(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$44:
	leaq	12480(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$43(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$43:
	leaq	12992(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$42(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$42:
	leaq	13504(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$41(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$41:
	movq	14048(%rsp), %rsi
	movb	$0, %dil
	leaq	4800(%rsp), %rax
	leaq	5312(%rsp), %rcx
	leaq	5824(%rsp), %rdx
	leaq	6336(%rsp), %r15
	leaq	-1472(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$40(%rip), %r8
	movq	%r8, 1456(%rsp)
	jmp 	L_poly_getnoise_eta1_4x$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$40:
	leaq	1472(%rsp), %rsp
	movb	$4, %dil
	leaq	6848(%rsp), %rax
	leaq	7360(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	7872(%rsp), %r15
	leaq	-1472(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$39(%rip), %r8
	movq	%r8, 1456(%rsp)
	jmp 	L_poly_getnoise_eta1_4x$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$39:
	leaq	1472(%rsp), %rsp
	leaq	4800(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$38(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$38:
	leaq	5312(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$37(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$37:
	leaq	5824(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$36(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$36:
	leaq	7872(%rsp), %rcx
	leaq	9408(%rsp), %rsi
	leaq	4800(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$35(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$35:
	leaq	128(%rsp), %rcx
	leaq	9920(%rsp), %rsi
	leaq	5312(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$34(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$34:
	leaq	7872(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$33(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$33:
	leaq	128(%rsp), %rcx
	leaq	10432(%rsp), %rsi
	leaq	5824(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$32(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$32:
	leaq	7872(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$31(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$31:
	leaq	8384(%rsp), %rcx
	leaq	10944(%rsp), %rsi
	leaq	4800(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$30(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$30:
	leaq	128(%rsp), %rcx
	leaq	11456(%rsp), %rsi
	leaq	5312(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$29(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$29:
	leaq	8384(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$28(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$28:
	leaq	128(%rsp), %rcx
	leaq	11968(%rsp), %rsi
	leaq	5824(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$27(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$27:
	leaq	8384(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$26(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$26:
	leaq	8896(%rsp), %rcx
	leaq	12480(%rsp), %rsi
	leaq	4800(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$25(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$25:
	leaq	128(%rsp), %rcx
	leaq	12992(%rsp), %rsi
	leaq	5312(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$24(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$24:
	leaq	8896(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$23(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$23:
	leaq	128(%rsp), %rcx
	leaq	13504(%rsp), %rsi
	leaq	5824(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$22(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$22:
	leaq	8896(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$21(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$21:
	leaq	128(%rsp), %rcx
	leaq	3264(%rsp), %rsi
	leaq	4800(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$20(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$20:
	leaq	1664(%rsp), %rcx
	leaq	3776(%rsp), %rsi
	leaq	5312(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$19(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$19:
	leaq	128(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$18(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$18:
	leaq	1664(%rsp), %rcx
	leaq	4288(%rsp), %rsi
	leaq	5824(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$17(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$17:
	leaq	128(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$16(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$16:
	leaq	7872(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$15(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$15:
	leaq	8384(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$14(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$14:
	leaq	8896(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$13(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$13:
	leaq	128(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$12(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$12:
	leaq	7872(%rsp), %rcx
	leaq	6336(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$11(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$11:
	leaq	8384(%rsp), %rcx
	leaq	6848(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$10(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$10:
	leaq	8896(%rsp), %rcx
	leaq	7360(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$9(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$9:
	leaq	128(%rsp), %rcx
	leaq	640(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$8(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$8:
	leaq	128(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$7(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$7:
	leaq	7872(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	8384(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	8896(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	128(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	14040(%rsp), %rax
	movq	%rax, %rdx
	leaq	7872(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$6(%rip), %rsi
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$6:
	leaq	8384(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$5(%rip), %rsi
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$5:
	leaq	8896(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$4(%rip), %rsi
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$4:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rdx)
	vpextrd	$0, %xmm8, 16(%rdx)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rdx)
	vpextrd	$0, %xmm8, 36(%rdx)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rdx)
	vpextrd	$0, %xmm8, 56(%rdx)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rdx)
	vpextrd	$0, %xmm8, 76(%rdx)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rdx)
	vpextrd	$0, %xmm8, 96(%rdx)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rdx)
	vpextrd	$0, %xmm8, 116(%rdx)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rdx)
	vpextrd	$0, %xmm8, 136(%rdx)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rdx)
	vpextrd	$0, %xmm8, 156(%rdx)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rdx)
	vpextrd	$0, %xmm8, 176(%rdx)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rdx)
	vpextrd	$0, %xmm8, 196(%rdx)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rdx)
	vpextrd	$0, %xmm8, 216(%rdx)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rdx)
	vpextrd	$0, %xmm8, 236(%rdx)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rdx)
	vpextrd	$0, %xmm8, 256(%rdx)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rdx)
	vpextrd	$0, %xmm8, 276(%rdx)
	vmovdqu	8320(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rdx)
	vpextrd	$0, %xmm8, 296(%rdx)
	vmovdqu	8352(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rdx)
	vpextrd	$0, %xmm8, 316(%rdx)
	vmovdqu	8384(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rdx)
	vpextrd	$0, %xmm8, 336(%rdx)
	vmovdqu	8416(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rdx)
	vpextrd	$0, %xmm8, 356(%rdx)
	vmovdqu	8448(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rdx)
	vpextrd	$0, %xmm8, 376(%rdx)
	vmovdqu	8480(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rdx)
	vpextrd	$0, %xmm8, 396(%rdx)
	vmovdqu	8512(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rdx)
	vpextrd	$0, %xmm8, 416(%rdx)
	vmovdqu	8544(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rdx)
	vpextrd	$0, %xmm8, 436(%rdx)
	vmovdqu	8576(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rdx)
	vpextrd	$0, %xmm8, 456(%rdx)
	vmovdqu	8608(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rdx)
	vpextrd	$0, %xmm8, 476(%rdx)
	vmovdqu	8640(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rdx)
	vpextrd	$0, %xmm8, 496(%rdx)
	vmovdqu	8672(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rdx)
	vpextrd	$0, %xmm8, 516(%rdx)
	vmovdqu	8704(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rdx)
	vpextrd	$0, %xmm8, 536(%rdx)
	vmovdqu	8736(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rdx)
	vpextrd	$0, %xmm8, 556(%rdx)
	vmovdqu	8768(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rdx)
	vpextrd	$0, %xmm8, 576(%rdx)
	vmovdqu	8800(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rdx)
	vpextrd	$0, %xmm8, 596(%rdx)
	vmovdqu	8832(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rdx)
	vpextrd	$0, %xmm8, 616(%rdx)
	vmovdqu	8864(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rdx)
	vpextrd	$0, %xmm8, 636(%rdx)
	vmovdqu	8896(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rdx)
	vpextrd	$0, %xmm8, 656(%rdx)
	vmovdqu	8928(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rdx)
	vpextrd	$0, %xmm8, 676(%rdx)
	vmovdqu	8960(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rdx)
	vpextrd	$0, %xmm8, 696(%rdx)
	vmovdqu	8992(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rdx)
	vpextrd	$0, %xmm8, 716(%rdx)
	vmovdqu	9024(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rdx)
	vpextrd	$0, %xmm8, 736(%rdx)
	vmovdqu	9056(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rdx)
	vpextrd	$0, %xmm8, 756(%rdx)
	vmovdqu	9088(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rdx)
	vpextrd	$0, %xmm8, 776(%rdx)
	vmovdqu	9120(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rdx)
	vpextrd	$0, %xmm8, 796(%rdx)
	vmovdqu	9152(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rdx)
	vpextrd	$0, %xmm8, 816(%rdx)
	vmovdqu	9184(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rdx)
	vpextrd	$0, %xmm8, 836(%rdx)
	vmovdqu	9216(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rdx)
	vpextrd	$0, %xmm8, 856(%rdx)
	vmovdqu	9248(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rdx)
	vpextrd	$0, %xmm8, 876(%rdx)
	vmovdqu	9280(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rdx)
	vpextrd	$0, %xmm8, 896(%rdx)
	vmovdqu	9312(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rdx)
	vpextrd	$0, %xmm8, 916(%rdx)
	vmovdqu	9344(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rdx)
	vpextrd	$0, %xmm8, 936(%rdx)
	vmovdqu	9376(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$-32, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rdx)
	vpextrd	$0, %xmm0, 956(%rdx)
	leaq	960(%rax), %rax
	leaq	128(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$3(%rip), %rdi
	jmp 	L_poly_compress_1$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$3:
	movq	14024(%rsp), %rax
	leaq	2176(%rsp), %rcx
	movq	$0, %rdx
	movq	$1, %rsi
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	(%rcx), %ymm1
	vmovdqu	(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	32(%rcx), %ymm1
	vmovdqu	32(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	64(%rcx), %ymm1
	vmovdqu	64(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	96(%rcx), %ymm1
	vmovdqu	96(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	128(%rcx), %ymm1
	vmovdqu	128(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	160(%rcx), %ymm1
	vmovdqu	160(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	192(%rcx), %ymm1
	vmovdqu	192(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	224(%rcx), %ymm1
	vmovdqu	224(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	256(%rcx), %ymm1
	vmovdqu	256(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	288(%rcx), %ymm1
	vmovdqu	288(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	320(%rcx), %ymm1
	vmovdqu	320(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	352(%rcx), %ymm1
	vmovdqu	352(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	384(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	416(%rcx), %ymm1
	vmovdqu	416(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	448(%rcx), %ymm1
	vmovdqu	448(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	480(%rcx), %ymm1
	vmovdqu	480(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	512(%rcx), %ymm1
	vmovdqu	512(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	544(%rcx), %ymm1
	vmovdqu	544(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	576(%rcx), %ymm1
	vmovdqu	576(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	608(%rcx), %ymm1
	vmovdqu	608(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	640(%rcx), %ymm1
	vmovdqu	640(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	672(%rcx), %ymm1
	vmovdqu	672(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	704(%rcx), %ymm1
	vmovdqu	704(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	736(%rcx), %ymm1
	vmovdqu	736(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	768(%rcx), %ymm1
	vmovdqu	768(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	800(%rcx), %ymm1
	vmovdqu	800(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	832(%rcx), %ymm1
	vmovdqu	832(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	864(%rcx), %ymm1
	vmovdqu	864(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	896(%rcx), %ymm1
	vmovdqu	896(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	928(%rcx), %ymm1
	vmovdqu	928(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	960(%rcx), %ymm1
	vmovdqu	960(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	992(%rcx), %ymm1
	vmovdqu	992(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	1024(%rcx), %ymm1
	vmovdqu	1024(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vmovdqu	1056(%rcx), %ymm1
	vmovdqu	1056(%rax), %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vptest	%ymm0, %ymm0
	cmovne	%rsi, %rdx
	negq	%rdx
	shrq	$63, %rdx
	movq	14032(%rsp), %rcx
	leaq	64(%rcx), %rcx
	leaq	2304(%rcx), %rcx
	leaq	64(%rsp), %rsi
	negq	%rdx
	movq	%rdx, 14032(%rsp)
	vpbroadcastq	14032(%rsp), %ymm0
	vmovdqu	(%rsi), %ymm1
	vmovdqu	(%rcx), %ymm2
	vpblendvb	%ymm0, %ymm2, %ymm1, %ymm0
	vmovdqu	%ymm0, (%rsi)
	movq	$1088, %rcx
	leaq	96(%rsp), %rdx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$2(%rip), %rsi
	movq	%rsi, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$2:
	leaq	240(%rsp), %rsp
	movq	14016(%rsp), %rax
	movq	$32, %rcx
	leaq	64(%rsp), %rdx
	leaq	-224(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_dec$1(%rip), %rsi
	movq	%rsi, 216(%rsp)
	jmp 	L_shake256_64$1
Ljade_kem_kyber_kyber768_amd64_avx2v_dec$1:
	leaq	224(%rsp), %rsp
	xorq	%rax, %rax
	movq	14512(%rsp), %rbx
	movq	14520(%rsp), %rbp
	movq	14528(%rsp), %r12
	movq	14536(%rsp), %r13
	movq	14544(%rsp), %r14
	movq	14552(%rsp), %r15
	movq	14560(%rsp), %rsp
	ret 
_jade_kem_kyber_kyber768_amd64_avx2v_enc:
jade_kem_kyber_kyber768_amd64_avx2v_enc:
	movq	%rsp, %rax
	leaq	-13464(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rax, 13456(%rsp)
	movq	%rbx, 13408(%rsp)
	movq	%rbp, 13416(%rsp)
	movq	%r12, 13424(%rsp)
	movq	%r13, 13432(%rsp)
	movq	%r14, 13440(%rsp)
	movq	%r15, 13448(%rsp)
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movq	%rdx, %r12
	leaq	12968(%rsp), %rdi
	movq	$32, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%r12, 12928(%rsp)
	movq	%rbp, 12936(%rsp)
	movq	%rbx, 12944(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	leaq	64(%rsp), %rax
	movq	%rsp, %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$175(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_isha3_256_32$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$175:
	leaq	216(%rsp), %rsp
	movq	12928(%rsp), %rax
	movq	$1184, %rcx
	leaq	96(%rsp), %rdx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$174(%rip), %rsi
	movq	%rsi, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$174:
	leaq	240(%rsp), %rsp
	movq	%rsp, %rax
	leaq	64(%rsp), %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$173(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_sha3_512_64$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$173:
	leaq	216(%rsp), %rsp
	movq	12928(%rsp), %rcx
	leaq	64(%rsp), %rax
	leaq	32(%rsp), %rdx
	movq	%rcx, %rdi
	leaq	2176(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$172(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$172:
	leaq	384(%rdi), %rdi
	leaq	2688(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$171(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$171:
	leaq	384(%rdi), %rdi
	leaq	3200(%rsp), %r8
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$170(%rip), %r10
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$170:
	movq	$0, %rsi
	leaq	1152(%rcx), %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$168
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$169:
	movq	(%rcx), %rdi
	movq	%rdi, 12968(%rsp,%rsi,8)
	leaq	8(%rcx), %rcx
	leaq	1(%rsi), %rsi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$168:
	cmpq	$4, %rsi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$169
	leaq	128(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$167(%rip), %r8
	jmp 	L_poly_frommsg_1$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$167:
	movq	%rdx, 12928(%rsp)
	movq	$1, %rax
	movq	%rax, 12952(%rsp)
	movb	12968(%rsp), %al
	movb	%al, 13000(%rsp)
	movb	12969(%rsp), %al
	movb	%al, 13001(%rsp)
	movb	12970(%rsp), %al
	movb	%al, 13002(%rsp)
	movb	12971(%rsp), %al
	movb	%al, 13003(%rsp)
	movb	12972(%rsp), %al
	movb	%al, 13004(%rsp)
	movb	12973(%rsp), %al
	movb	%al, 13005(%rsp)
	movb	12974(%rsp), %al
	movb	%al, 13006(%rsp)
	movb	12975(%rsp), %al
	movb	%al, 13007(%rsp)
	movb	12976(%rsp), %al
	movb	%al, 13008(%rsp)
	movb	12977(%rsp), %al
	movb	%al, 13009(%rsp)
	movb	12978(%rsp), %al
	movb	%al, 13010(%rsp)
	movb	12979(%rsp), %al
	movb	%al, 13011(%rsp)
	movb	12980(%rsp), %al
	movb	%al, 13012(%rsp)
	movb	12981(%rsp), %al
	movb	%al, 13013(%rsp)
	movb	12982(%rsp), %al
	movb	%al, 13014(%rsp)
	movb	12983(%rsp), %al
	movb	%al, 13015(%rsp)
	movb	12984(%rsp), %al
	movb	%al, 13016(%rsp)
	movb	12985(%rsp), %al
	movb	%al, 13017(%rsp)
	movb	12986(%rsp), %al
	movb	%al, 13018(%rsp)
	movb	12987(%rsp), %al
	movb	%al, 13019(%rsp)
	movb	12988(%rsp), %al
	movb	%al, 13020(%rsp)
	movb	12989(%rsp), %al
	movb	%al, 13021(%rsp)
	movb	12990(%rsp), %al
	movb	%al, 13022(%rsp)
	movb	12991(%rsp), %al
	movb	%al, 13023(%rsp)
	movb	12992(%rsp), %al
	movb	%al, 13024(%rsp)
	movb	12993(%rsp), %al
	movb	%al, 13025(%rsp)
	movb	12994(%rsp), %al
	movb	%al, 13026(%rsp)
	movb	12995(%rsp), %al
	movb	%al, 13027(%rsp)
	movb	12996(%rsp), %al
	movb	%al, 13028(%rsp)
	movb	12997(%rsp), %al
	movb	%al, 13029(%rsp)
	movb	12998(%rsp), %al
	movb	%al, 13030(%rsp)
	movb	12999(%rsp), %al
	movb	%al, 13031(%rsp)
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$165
	movb	$0, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$166
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$165:
	movb	$0, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$166:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$164(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$164:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$156
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$157:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$163(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$163:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$158
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$159:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$162
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$162:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$160
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$160
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$161:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$160:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$158:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$159
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$156:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$157
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$154
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$155:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$154:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$155
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$152
	movb	$0, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$153
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$152:
	movb	$1, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$153:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$151(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$151:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$143
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$144:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$150(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$150:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$145
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$146:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$149
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$149:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$147
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$147
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$148:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$147:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$145:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$146
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$143:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$144
	movq	$0, %rax
	movq	$256, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$141
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$142:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$141:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$142
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$139
	movb	$0, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$140
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$139:
	movb	$2, 13032(%rsp)
	movb	$0, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$140:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$138(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$138:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$130
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$131:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$137(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$137:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$132
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$133:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$136
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$136:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$134
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$134
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$135:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$134:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$132:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$133
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$130:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$131
	movq	$0, %rax
	movq	$512, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$128
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$129:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$128:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$129
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$126
	movb	$1, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$127
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$126:
	movb	$0, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$127:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$125(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$125:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$117
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$118:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$124(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$124:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$119
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$120:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$123
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$123:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$121
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$121
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$122:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$121:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$119:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$120
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$117:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$118
	movq	$0, %rax
	movq	$768, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$115
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$116:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$115:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$116
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$113
	movb	$1, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$114
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$113:
	movb	$1, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$114:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$112(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$112:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$104
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$105:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$111(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$111:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$106
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$107:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$110
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$110:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$108
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$108
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$109:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$108:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$106:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$107
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$104:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$105
	movq	$0, %rax
	movq	$1024, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$102
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$103:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$102:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$103
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$100
	movb	$1, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$101
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$100:
	movb	$2, 13032(%rsp)
	movb	$1, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$101:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$99(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$99:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$91
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$92:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$98(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$98:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$93
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$94:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$97
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$97:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$95
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$95
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$96:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$95:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$93:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$94
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$91:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$92
	movq	$0, %rax
	movq	$1280, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$89
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$90:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$89:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$90
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$87
	movb	$2, 13032(%rsp)
	movb	$0, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$88
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$87:
	movb	$0, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$88:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$86(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$86:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$78
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$79:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$85(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$85:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$80
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$81:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$84
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$84:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$82
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$82
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$83:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$82:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$80:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$81
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$78:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$79
	movq	$0, %rax
	movq	$1536, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$76
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$77:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$76:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$77
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$74
	movb	$2, 13032(%rsp)
	movb	$1, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$75
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$74:
	movb	$1, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$75:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$73(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$73:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$65
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$66:
	movq	%rdi, 12960(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$72(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$72:
	leaq	16(%rsp), %rsp
	movq	12960(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$67
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$68:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$71
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$71:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$69
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$69
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$70:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$69:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$67:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$68
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$65:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$66
	movq	$0, %rax
	movq	$1792, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$63
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$64:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$63:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$64
	movq	12952(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$61
	movb	$2, 13032(%rsp)
	movb	$2, 13033(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$62
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$61:
	movb	$2, 13032(%rsp)
	movb	$2, 13033(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$62:
	leaq	13208(%rsp), %rax
	leaq	13000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$60(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$60:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$52
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$53:
	movq	%rdi, 12952(%rsp)
	leaq	13208(%rsp), %rax
	leaq	13040(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$59(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$59:
	leaq	16(%rsp), %rsp
	movq	12952(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$54
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$55:
	movzbw	13040(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	13040(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$58
	movw	%cx, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$58:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$56
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$56
	movw	%si, 640(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$57:
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$56:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$54:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$55
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$52:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$53
	movq	$0, %rax
	movq	$2048, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$50
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$51:
	movw	640(%rsp,%rax,2), %dx
	movw	%dx, 8320(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$50:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$51
	leaq	8320(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$49(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$49:
	leaq	8832(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$48(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$48:
	leaq	9344(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$47(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$47:
	leaq	9856(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$46(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$46:
	leaq	10368(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$45(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$45:
	leaq	10880(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$44(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$44:
	leaq	11392(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$43(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$43:
	leaq	11904(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$42(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$42:
	leaq	12416(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$41(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$41:
	movq	12928(%rsp), %rsi
	movb	$0, %dil
	leaq	3712(%rsp), %rax
	leaq	4224(%rsp), %rcx
	leaq	4736(%rsp), %rdx
	leaq	5248(%rsp), %r15
	leaq	-1472(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$40(%rip), %r8
	movq	%r8, 1456(%rsp)
	jmp 	L_poly_getnoise_eta1_4x$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$40:
	leaq	1472(%rsp), %rsp
	movb	$4, %dil
	leaq	5760(%rsp), %rax
	leaq	6272(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	6784(%rsp), %r15
	leaq	-1472(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$39(%rip), %r8
	movq	%r8, 1456(%rsp)
	jmp 	L_poly_getnoise_eta1_4x$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$39:
	leaq	1472(%rsp), %rsp
	leaq	3712(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$38(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$38:
	leaq	4224(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$37(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$37:
	leaq	4736(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$36(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$36:
	leaq	6784(%rsp), %rcx
	leaq	8320(%rsp), %rsi
	leaq	3712(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$35(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$35:
	leaq	1152(%rsp), %rcx
	leaq	8832(%rsp), %rsi
	leaq	4224(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$34(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$34:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$33(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$33:
	leaq	1152(%rsp), %rcx
	leaq	9344(%rsp), %rsi
	leaq	4736(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$32(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$32:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$31(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$31:
	leaq	7296(%rsp), %rcx
	leaq	9856(%rsp), %rsi
	leaq	3712(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$30(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$30:
	leaq	1152(%rsp), %rcx
	leaq	10368(%rsp), %rsi
	leaq	4224(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$29(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$29:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$28(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$28:
	leaq	1152(%rsp), %rcx
	leaq	10880(%rsp), %rsi
	leaq	4736(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$27(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$27:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$26(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$26:
	leaq	7808(%rsp), %rcx
	leaq	11392(%rsp), %rsi
	leaq	3712(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$25(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$25:
	leaq	1152(%rsp), %rcx
	leaq	11904(%rsp), %rsi
	leaq	4224(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$24(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$24:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$23(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$23:
	leaq	1152(%rsp), %rcx
	leaq	12416(%rsp), %rsi
	leaq	4736(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$22(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$22:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$21(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$21:
	leaq	1152(%rsp), %rcx
	leaq	2176(%rsp), %rsi
	leaq	3712(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$20(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$20:
	leaq	1664(%rsp), %rcx
	leaq	2688(%rsp), %rsi
	leaq	4224(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$19(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$19:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$18(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$18:
	leaq	1664(%rsp), %rcx
	leaq	3200(%rsp), %rsi
	leaq	4736(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$17(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$17:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$16(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$16:
	leaq	6784(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$15(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$15:
	leaq	7296(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$14(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$14:
	leaq	7808(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$13(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$13:
	leaq	1152(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$12(%rip), %rdi
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$12:
	leaq	6784(%rsp), %rcx
	leaq	5248(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$11(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$11:
	leaq	7296(%rsp), %rcx
	leaq	5760(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$10(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$10:
	leaq	7808(%rsp), %rcx
	leaq	6272(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$9(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$9:
	leaq	1152(%rsp), %rcx
	leaq	640(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$8(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$8:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$7(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$7:
	leaq	6784(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7296(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	7808(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	1152(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	12936(%rsp), %rax
	leaq	6784(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$6(%rip), %rsi
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$6:
	leaq	7296(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$5(%rip), %rsi
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$5:
	leaq	7808(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$4(%rip), %rsi
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$4:
	leaq	glob_data + 1216(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 3180(%rip), %ymm2
	vpbroadcastw	glob_data + 3178(%rip), %ymm3
	vpbroadcastw	glob_data + 3176(%rip), %ymm4
	vpbroadcastq	glob_data + 2952(%rip), %ymm5
	vpbroadcastq	glob_data + 2944(%rip), %ymm6
	vmovdqu	glob_data + 0(%rip), %ymm7
	vmovdqu	6784(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	6816(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	6848(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	6880(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	6912(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	6944(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	6976(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	7008(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	7040(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	7072(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	7104(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	7136(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	7168(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	7200(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	7232(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	7264(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	7296(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	7328(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	7360(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	7392(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	7424(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	7456(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	7488(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	7520(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	7552(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	7584(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	7616(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	7648(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	7680(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	7712(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	7744(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	7776(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	7808(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	7840(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm9
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$-32, %xmm8, %xmm9, %xmm9
	vmovdqu	%xmm9, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm2, %ymm8, %ymm2
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpsubw	%ymm2, %ymm1, %ymm2
	vpandn	%ymm2, %ymm1, %ymm1
	vpsrlw	$15, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vpmulhrsw	%ymm3, %ymm0, %ymm0
	vpand	%ymm4, %ymm0, %ymm0
	vpmaddwd	%ymm5, %ymm0, %ymm0
	vpsllvd	%ymm6, %ymm0, %ymm0
	vpsrlq	$12, %ymm0, %ymm0
	vpshufb	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm0, %xmm1
	vextracti128	$1, %ymm0, %xmm0
	vpblendw	$-32, %xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, 940(%rax)
	vpextrd	$0, %xmm0, 956(%rax)
	leaq	960(%rax), %rax
	leaq	1152(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$3(%rip), %rdi
	jmp 	L_poly_compress$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$3:
	movq	12936(%rsp), %rax
	movq	$1088, %rcx
	leaq	32(%rsp), %rdx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$2(%rip), %rsi
	movq	%rsi, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$2:
	leaq	240(%rsp), %rsp
	movq	12944(%rsp), %rax
	movq	$32, %rcx
	movq	%rsp, %rdx
	leaq	-224(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_enc$1(%rip), %rsi
	movq	%rsi, 216(%rsp)
	jmp 	L_shake256_64$1
Ljade_kem_kyber_kyber768_amd64_avx2v_enc$1:
	leaq	224(%rsp), %rsp
	xorq	%rax, %rax
	movq	13408(%rsp), %rbx
	movq	13416(%rsp), %rbp
	movq	13424(%rsp), %r12
	movq	13432(%rsp), %r13
	movq	13440(%rsp), %r14
	movq	13448(%rsp), %r15
	movq	13456(%rsp), %rsp
	ret 
_jade_kem_kyber_kyber768_amd64_avx2v_keypair:
jade_kem_kyber_kyber768_amd64_avx2v_keypair:
	movq	%rsp, %rax
	leaq	-10440(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rax, 10432(%rsp)
	movq	%rbx, 10384(%rsp)
	movq	%rbp, 10392(%rsp)
	movq	%r12, 10400(%rsp)
	movq	%r13, 10408(%rsp)
	movq	%r14, 10416(%rsp)
	movq	%r15, 10424(%rsp)
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	leaq	9888(%rsp), %rdi
	movq	$64, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rax, 9760(%rsp)
	movq	%rbp, 9768(%rsp)
	movq	%rbx, 9776(%rsp)
	movq	%rbp, 9784(%rsp)
	movq	%rbx, 9792(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 9816(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 9824(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 9832(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 9840(%rsp)
	leaq	9952(%rsp), %rax
	leaq	9816(%rsp), %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$163(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_sha3_512_32$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$163:
	leaq	216(%rsp), %rsp
	movq	9952(%rsp), %rax
	movq	%rax, 9816(%rsp)
	movq	9984(%rsp), %rax
	movq	%rax, (%rsp)
	movq	9960(%rsp), %rax
	movq	%rax, 9824(%rsp)
	movq	9992(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	9968(%rsp), %rax
	movq	%rax, 9832(%rsp)
	movq	10000(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	9976(%rsp), %rax
	movq	%rax, 9840(%rsp)
	movq	10008(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$0, %rax
	movq	%rax, 9800(%rsp)
	movb	9816(%rsp), %al
	movb	%al, 9848(%rsp)
	movb	9817(%rsp), %al
	movb	%al, 9849(%rsp)
	movb	9818(%rsp), %al
	movb	%al, 9850(%rsp)
	movb	9819(%rsp), %al
	movb	%al, 9851(%rsp)
	movb	9820(%rsp), %al
	movb	%al, 9852(%rsp)
	movb	9821(%rsp), %al
	movb	%al, 9853(%rsp)
	movb	9822(%rsp), %al
	movb	%al, 9854(%rsp)
	movb	9823(%rsp), %al
	movb	%al, 9855(%rsp)
	movb	9824(%rsp), %al
	movb	%al, 9856(%rsp)
	movb	9825(%rsp), %al
	movb	%al, 9857(%rsp)
	movb	9826(%rsp), %al
	movb	%al, 9858(%rsp)
	movb	9827(%rsp), %al
	movb	%al, 9859(%rsp)
	movb	9828(%rsp), %al
	movb	%al, 9860(%rsp)
	movb	9829(%rsp), %al
	movb	%al, 9861(%rsp)
	movb	9830(%rsp), %al
	movb	%al, 9862(%rsp)
	movb	9831(%rsp), %al
	movb	%al, 9863(%rsp)
	movb	9832(%rsp), %al
	movb	%al, 9864(%rsp)
	movb	9833(%rsp), %al
	movb	%al, 9865(%rsp)
	movb	9834(%rsp), %al
	movb	%al, 9866(%rsp)
	movb	9835(%rsp), %al
	movb	%al, 9867(%rsp)
	movb	9836(%rsp), %al
	movb	%al, 9868(%rsp)
	movb	9837(%rsp), %al
	movb	%al, 9869(%rsp)
	movb	9838(%rsp), %al
	movb	%al, 9870(%rsp)
	movb	9839(%rsp), %al
	movb	%al, 9871(%rsp)
	movb	9840(%rsp), %al
	movb	%al, 9872(%rsp)
	movb	9841(%rsp), %al
	movb	%al, 9873(%rsp)
	movb	9842(%rsp), %al
	movb	%al, 9874(%rsp)
	movb	9843(%rsp), %al
	movb	%al, 9875(%rsp)
	movb	9844(%rsp), %al
	movb	%al, 9876(%rsp)
	movb	9845(%rsp), %al
	movb	%al, 9877(%rsp)
	movb	9846(%rsp), %al
	movb	%al, 9878(%rsp)
	movb	9847(%rsp), %al
	movb	%al, 9879(%rsp)
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$161
	movb	$0, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$162
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$161:
	movb	$0, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$162:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$160(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$160:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$152
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$153:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$159(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$159:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$154
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$155:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$158
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$158:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$156
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$156
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$157:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$156:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$154:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$155
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$152:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$153
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$150
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$151:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$150:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$151
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$148
	movb	$0, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$149
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$148:
	movb	$1, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$149:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$147(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$147:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$139
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$140:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$146(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$146:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$141
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$142:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$145
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$145:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$143
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$143
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$144:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$143:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$141:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$142
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$139:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$140
	movq	$0, %rax
	movq	$256, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$137
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$138:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$137:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$138
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$135
	movb	$0, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$136
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$135:
	movb	$2, 9880(%rsp)
	movb	$0, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$136:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$134(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$134:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$126
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$127:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$133(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$133:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$128
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$129:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$132
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$132:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$130
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$130
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$131:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$130:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$128:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$129
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$126:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$127
	movq	$0, %rax
	movq	$512, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$124
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$125:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$124:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$125
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$122
	movb	$1, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$123
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$122:
	movb	$0, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$123:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$121(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$121:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$113
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$114:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$120(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$120:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$115
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$116:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$119
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$119:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$117
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$117
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$118:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$117:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$115:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$116
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$113:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$114
	movq	$0, %rax
	movq	$768, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$111
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$112:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$111:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$112
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$109
	movb	$1, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$110
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$109:
	movb	$1, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$110:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$108(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$108:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$100
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$101:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$107(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$107:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$102
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$103:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$106
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$106:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$104
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$104
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$105:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$104:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$102:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$103
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$100:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$101
	movq	$0, %rax
	movq	$1024, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$98
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$99:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$98:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$99
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$96
	movb	$1, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$97
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$96:
	movb	$2, 9880(%rsp)
	movb	$1, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$97:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$95(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$95:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$87
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$88:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$94(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$94:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$89
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$90:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$93
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$93:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$91
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$91
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$92:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$91:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$89:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$90
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$87:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$88
	movq	$0, %rax
	movq	$1280, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$85
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$86:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$85:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$86
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$83
	movb	$2, 9880(%rsp)
	movb	$0, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$84
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$83:
	movb	$0, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$84:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$82(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$82:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$74
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$75:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$81(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$81:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$76
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$77:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$80
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$80:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$78
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$78
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$79:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$78:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$76:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$77
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$74:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$75
	movq	$0, %rax
	movq	$1536, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$72
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$73:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$72:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$73
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$70
	movb	$2, 9880(%rsp)
	movb	$1, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$71
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$70:
	movb	$1, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$71:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$69(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$69:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$61
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$62:
	movq	%rdi, 9808(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$68(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$68:
	leaq	16(%rsp), %rsp
	movq	9808(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$63
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$64:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$67
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$67:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$65
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$65
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$66:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$65:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$63:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$64
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$61:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$62
	movq	$0, %rax
	movq	$1792, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$59
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$60:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$59:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$60
	movq	9800(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$57
	movb	$2, 9880(%rsp)
	movb	$2, 9881(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$58
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$57:
	movb	$2, 9880(%rsp)
	movb	$2, 9881(%rsp)
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$58:
	leaq	10184(%rsp), %rax
	leaq	9848(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$56(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$56:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$48
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$49:
	movq	%rdi, 9800(%rsp)
	leaq	10184(%rsp), %rax
	leaq	10016(%rsp), %rcx
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$55(%rip), %rdx
	movq	%rdx, 8(%rsp)
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$55:
	leaq	16(%rsp), %rsp
	movq	9800(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$50
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$51:
	movzbw	10016(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10016(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$54
	movw	%cx, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$54:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$52
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$52
	movw	%si, 32(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$53:
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$52:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$50:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$51
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$48:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$49
	movq	$0, %rax
	movq	$2048, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$46
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$47:
	movw	32(%rsp,%rax,2), %dx
	movw	%dx, 5152(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$46:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$47
	leaq	5152(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$45(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$45:
	leaq	5664(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$44(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$44:
	leaq	6176(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$43(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$43:
	leaq	6688(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$42(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$42:
	leaq	7200(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$41(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$41:
	leaq	7712(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$40(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$40:
	leaq	8224(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$39(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$39:
	leaq	8736(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$38(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$38:
	leaq	9248(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$37(%rip), %rcx
	jmp 	L_nttunpack$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$37:
	movb	$0, %dil
	leaq	544(%rsp), %rax
	leaq	1056(%rsp), %rcx
	leaq	1568(%rsp), %rdx
	leaq	2080(%rsp), %r15
	movq	%rsp, %rsi
	leaq	-1472(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$36(%rip), %r8
	movq	%r8, 1456(%rsp)
	jmp 	L_poly_getnoise_eta1_4x$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$36:
	leaq	1472(%rsp), %rsp
	movb	$4, %dil
	leaq	2592(%rsp), %rax
	leaq	3104(%rsp), %rcx
	leaq	3616(%rsp), %rdx
	leaq	4128(%rsp), %r15
	movq	%rsp, %rsi
	leaq	-1472(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$35(%rip), %r8
	movq	%r8, 1456(%rsp)
	jmp 	L_poly_getnoise_eta1_4x$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$35:
	leaq	1472(%rsp), %rsp
	leaq	544(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$34(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$34:
	leaq	1056(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$33(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$33:
	leaq	1568(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$32(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$32:
	leaq	2080(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$31(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$31:
	leaq	2592(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$30(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$30:
	leaq	3104(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$29(%rip), %rdi
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$29:
	leaq	3616(%rsp), %rcx
	leaq	5152(%rsp), %rsi
	leaq	544(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$28(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$28:
	leaq	32(%rsp), %rcx
	leaq	5664(%rsp), %rsi
	leaq	1056(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$27(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$27:
	leaq	3616(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$26(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$26:
	leaq	32(%rsp), %rcx
	leaq	6176(%rsp), %rsi
	leaq	1568(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$25(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$25:
	leaq	3616(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$24(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$24:
	leaq	3616(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$23(%rip), %rdx
	jmp 	L_poly_frommont$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$23:
	leaq	4128(%rsp), %rcx
	leaq	6688(%rsp), %rsi
	leaq	544(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$22(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$22:
	leaq	32(%rsp), %rcx
	leaq	7200(%rsp), %rsi
	leaq	1056(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$21(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$21:
	leaq	4128(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$20(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$20:
	leaq	32(%rsp), %rcx
	leaq	7712(%rsp), %rsi
	leaq	1568(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$19(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$19:
	leaq	4128(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$18(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$18:
	leaq	4128(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$17(%rip), %rdx
	jmp 	L_poly_frommont$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$17:
	leaq	4640(%rsp), %rcx
	leaq	8224(%rsp), %rsi
	leaq	544(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$16(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$16:
	leaq	32(%rsp), %rcx
	leaq	8736(%rsp), %rsi
	leaq	1056(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$15(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$15:
	leaq	4640(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$14(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$14:
	leaq	32(%rsp), %rcx
	leaq	9248(%rsp), %rsi
	leaq	1568(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$13(%rip), %r8
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$13:
	leaq	4640(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$12(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$12:
	leaq	4640(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$11(%rip), %rdx
	jmp 	L_poly_frommont$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$11:
	leaq	3616(%rsp), %rcx
	leaq	2080(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$10(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$10:
	leaq	4128(%rsp), %rcx
	leaq	2592(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$9(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$9:
	leaq	4640(%rsp), %rcx
	leaq	3104(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$8(%rip), %rdi
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$8:
	leaq	3616(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4128(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	leaq	4640(%rsp), %rax
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	movq	9784(%rsp), %rax
	movq	9792(%rsp), %rcx
	movq	%rcx, %rdx
	leaq	544(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$7(%rip), %rdi
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$7:
	leaq	384(%rdx), %rdx
	leaq	1056(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$6(%rip), %rdi
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$6:
	leaq	384(%rdx), %rdx
	leaq	1568(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$5(%rip), %rdi
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$5:
	movq	%rax, %rdx
	leaq	3616(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$4(%rip), %rdi
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$4:
	leaq	384(%rdx), %rdx
	leaq	4128(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$3(%rip), %rdi
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$3:
	leaq	384(%rdx), %rdx
	leaq	4640(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$2(%rip), %rdi
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$2:
	leaq	1152(%rax), %rax
	movq	9816(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9824(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9832(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9840(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	9776(%rsp), %rax
	leaq	1152(%rax), %rcx
	movq	9768(%rsp), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	8(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	16(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	24(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	32(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	40(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	48(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	56(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	64(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	72(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	80(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	88(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	96(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	104(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	112(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	120(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	128(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	136(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	144(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	152(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	160(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	168(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	176(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	184(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	192(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	200(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	208(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	216(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	224(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	232(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	240(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	248(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	256(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	264(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	272(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	280(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	288(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	296(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	304(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	312(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	320(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	328(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	336(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	344(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	352(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	360(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	368(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	376(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	384(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	392(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	400(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	408(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	416(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	424(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	432(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	440(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	448(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	456(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	464(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	472(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	480(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	488(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	496(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	504(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	512(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	520(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	528(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	536(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	544(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	552(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	560(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	568(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	576(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	584(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	592(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	600(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	608(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	616(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	624(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	632(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	640(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	648(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	656(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	664(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	672(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	680(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	688(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	696(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	704(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	712(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	720(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	728(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	736(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	744(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	752(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	760(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	768(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	776(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	784(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	792(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	800(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	808(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	816(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	824(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	832(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	840(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	848(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	856(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	864(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	872(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	880(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	888(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	896(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	904(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	912(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	920(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	928(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	936(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	944(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	952(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	960(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	968(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	976(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	984(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	992(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1000(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1008(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1016(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1024(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1032(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1040(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1048(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1056(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1064(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1072(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1080(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1088(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1096(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1104(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1112(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1120(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1128(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1136(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1144(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1152(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1160(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1168(%rax), %rdx
	movq	%rdx, (%rcx)
	leaq	8(%rcx), %rcx
	movq	1176(%rax), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	movq	%rax, 9776(%rsp)
	movq	9768(%rsp), %rax
	movq	$1184, %rcx
	leaq	9816(%rsp), %rdx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$1(%rip), %rsi
	movq	%rsi, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_avx2v_keypair$1:
	leaq	240(%rsp), %rsp
	movq	9776(%rsp), %rax
	movq	9816(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9824(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9832(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9840(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	9760(%rsp), %rcx
	leaq	32(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rax
	movq	8(%rcx), %rdx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rax
	movq	16(%rcx), %rdx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rax
	movq	24(%rcx), %rcx
	movq	%rcx, (%rax)
	xorq	%rax, %rax
	movq	10384(%rsp), %rbx
	movq	10392(%rsp), %rbp
	movq	10400(%rsp), %r12
	movq	10408(%rsp), %r13
	movq	10416(%rsp), %r14
	movq	10424(%rsp), %r15
	movq	10432(%rsp), %rsp
	ret 
L_poly_tomsg_1$1:
	leaq	L_poly_tomsg_1$2(%rip), %rsi
	jmp 	L_poly_csubq$1
L_poly_tomsg_1$2:
	leaq	glob_data + 1056(%rip), %rsi
	vmovdqu	(%rsi), %ymm0
	leaq	glob_data + 1024(%rip), %rsi
	vmovdqu	(%rsi), %ymm1
	vmovdqu	(%rcx), %ymm2
	vmovdqu	32(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, (%rax)
	vmovdqu	64(%rcx), %ymm2
	vmovdqu	96(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 4(%rax)
	vmovdqu	128(%rcx), %ymm2
	vmovdqu	160(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 8(%rax)
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 12(%rax)
	vmovdqu	256(%rcx), %ymm2
	vmovdqu	288(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 16(%rax)
	vmovdqu	320(%rcx), %ymm2
	vmovdqu	352(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 20(%rax)
	vmovdqu	384(%rcx), %ymm2
	vmovdqu	416(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %esi
	movl	%esi, 24(%rax)
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm0
	vpsraw	$15, %ymm2, %ymm3
	vpsraw	$15, %ymm0, %ymm4
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm4, %ymm0, %ymm0
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm0, %ymm0
	vpacksswb	%ymm0, %ymm2, %ymm0
	vpermq	$-40, %ymm0, %ymm0
	vpmovmskb	%ymm0, %ecx
	movl	%ecx, 28(%rax)
	jmp 	*%rdi
L_poly_tomsg$1:
	leaq	L_poly_tomsg$2(%rip), %rsi
	jmp 	L_poly_csubq$1
L_poly_tomsg$2:
	leaq	glob_data + 1056(%rip), %rax
	vmovdqu	(%rax), %ymm0
	leaq	glob_data + 1024(%rip), %rax
	vmovdqu	(%rax), %ymm1
	vmovdqu	(%rcx), %ymm2
	vmovdqu	32(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, (%rdx)
	vmovdqu	64(%rcx), %ymm2
	vmovdqu	96(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, 4(%rdx)
	vmovdqu	128(%rcx), %ymm2
	vmovdqu	160(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, 8(%rdx)
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, 12(%rdx)
	vmovdqu	256(%rcx), %ymm2
	vmovdqu	288(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, 16(%rdx)
	vmovdqu	320(%rcx), %ymm2
	vmovdqu	352(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, 20(%rdx)
	vmovdqu	384(%rcx), %ymm2
	vmovdqu	416(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm3
	vpsraw	$15, %ymm2, %ymm4
	vpsraw	$15, %ymm3, %ymm5
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm5, %ymm3, %ymm3
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm3, %ymm3
	vpacksswb	%ymm3, %ymm2, %ymm2
	vpermq	$-40, %ymm2, %ymm2
	vpmovmskb	%ymm2, %eax
	movl	%eax, 24(%rdx)
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsubw	%ymm2, %ymm0, %ymm2
	vpsubw	%ymm3, %ymm0, %ymm0
	vpsraw	$15, %ymm2, %ymm3
	vpsraw	$15, %ymm0, %ymm4
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm4, %ymm0, %ymm0
	vpsubw	%ymm1, %ymm2, %ymm2
	vpsubw	%ymm1, %ymm0, %ymm0
	vpacksswb	%ymm0, %ymm2, %ymm0
	vpermq	$-40, %ymm0, %ymm0
	vpmovmskb	%ymm0, %eax
	movl	%eax, 28(%rdx)
	jmp 	*%rdi
L_poly_tobytes$1:
	leaq	L_poly_tobytes$2(%rip), %rsi
	jmp 	L_poly_csubq$1
L_poly_tobytes$2:
	vmovdqu	(%rcx), %ymm4
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm6
	vmovdqu	96(%rcx), %ymm7
	vmovdqu	128(%rcx), %ymm0
	vmovdqu	160(%rcx), %ymm1
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	224(%rcx), %ymm3
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm4, %ymm8, %ymm4
	vpsrlw	$4, %ymm5, %ymm5
	vpsllw	$8, %ymm6, %ymm8
	vpor	%ymm8, %ymm5, %ymm5
	vpsrlw	$8, %ymm6, %ymm6
	vpsllw	$4, %ymm7, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsllw	$12, %ymm1, %ymm7
	vpor	%ymm0, %ymm7, %ymm0
	vpsrlw	$4, %ymm1, %ymm1
	vpsllw	$8, %ymm2, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpsrlw	$8, %ymm2, %ymm2
	vpsllw	$4, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$-86, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$-86, %ymm5, %ymm4, %ymm4
	vpslld	$16, %ymm0, %ymm5
	vpblendw	$-86, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$-86, %ymm0, %ymm6, %ymm0
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$-86, %ymm6, %ymm1, %ymm6
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$-86, %ymm2, %ymm1, %ymm1
	vmovsldup	%ymm5, %ymm2
	vpblendd	$-86, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$-86, %ymm5, %ymm3, %ymm3
	vmovsldup	%ymm4, %ymm5
	vpblendd	$-86, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm4, %ymm6, %ymm4
	vmovsldup	%ymm1, %ymm6
	vpblendd	$-86, %ymm6, %ymm0, %ymm6
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$-86, %ymm1, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm3, %ymm6, %ymm5
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm0, %ymm4, %ymm6
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm4
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm2, %ymm6, %ymm5
	vperm2i128	$49, %ymm2, %ymm6, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm6
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm4, (%rdx)
	vmovdqu	%ymm5, 32(%rdx)
	vmovdqu	%ymm6, 64(%rdx)
	vmovdqu	%ymm1, 96(%rdx)
	vmovdqu	%ymm2, 128(%rdx)
	vmovdqu	%ymm0, 160(%rdx)
	vmovdqu	256(%rcx), %ymm4
	vmovdqu	288(%rcx), %ymm5
	vmovdqu	320(%rcx), %ymm6
	vmovdqu	352(%rcx), %ymm7
	vmovdqu	384(%rcx), %ymm0
	vmovdqu	416(%rcx), %ymm1
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	480(%rcx), %ymm3
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm4, %ymm8, %ymm4
	vpsrlw	$4, %ymm5, %ymm5
	vpsllw	$8, %ymm6, %ymm8
	vpor	%ymm8, %ymm5, %ymm5
	vpsrlw	$8, %ymm6, %ymm6
	vpsllw	$4, %ymm7, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsllw	$12, %ymm1, %ymm7
	vpor	%ymm0, %ymm7, %ymm0
	vpsrlw	$4, %ymm1, %ymm1
	vpsllw	$8, %ymm2, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpsrlw	$8, %ymm2, %ymm2
	vpsllw	$4, %ymm3, %ymm3
	vpor	%ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$-86, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$-86, %ymm5, %ymm4, %ymm4
	vpslld	$16, %ymm0, %ymm5
	vpblendw	$-86, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$-86, %ymm0, %ymm6, %ymm0
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$-86, %ymm6, %ymm1, %ymm6
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$-86, %ymm2, %ymm1, %ymm1
	vmovsldup	%ymm5, %ymm2
	vpblendd	$-86, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$-86, %ymm5, %ymm3, %ymm3
	vmovsldup	%ymm4, %ymm5
	vpblendd	$-86, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm4, %ymm6, %ymm4
	vmovsldup	%ymm1, %ymm6
	vpblendd	$-86, %ymm6, %ymm0, %ymm6
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$-86, %ymm1, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm2, %ymm1
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm3, %ymm6, %ymm5
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm0, %ymm4, %ymm6
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm4
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm2, %ymm6, %ymm5
	vperm2i128	$49, %ymm2, %ymm6, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm6
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm4, 192(%rdx)
	vmovdqu	%ymm5, 224(%rdx)
	vmovdqu	%ymm6, 256(%rdx)
	vmovdqu	%ymm1, 288(%rdx)
	vmovdqu	%ymm2, 320(%rdx)
	vmovdqu	%ymm0, 352(%rdx)
	jmp 	*%rdi
L_poly_sub$1:
	vmovdqu	(%rsi), %ymm0
	vmovdqu	(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rsi), %ymm0
	vmovdqu	32(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rcx)
	vmovdqu	64(%rsi), %ymm0
	vmovdqu	64(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rcx)
	vmovdqu	96(%rsi), %ymm0
	vmovdqu	96(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rcx)
	vmovdqu	128(%rsi), %ymm0
	vmovdqu	128(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	160(%rsi), %ymm0
	vmovdqu	160(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rcx)
	vmovdqu	192(%rsi), %ymm0
	vmovdqu	192(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rcx)
	vmovdqu	224(%rsi), %ymm0
	vmovdqu	224(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rcx)
	vmovdqu	256(%rsi), %ymm0
	vmovdqu	256(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	288(%rsi), %ymm0
	vmovdqu	288(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rcx)
	vmovdqu	320(%rsi), %ymm0
	vmovdqu	320(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	352(%rsi), %ymm0
	vmovdqu	352(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rcx)
	vmovdqu	384(%rsi), %ymm0
	vmovdqu	384(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rcx)
	vmovdqu	416(%rsi), %ymm0
	vmovdqu	416(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rcx)
	vmovdqu	448(%rsi), %ymm0
	vmovdqu	448(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rcx)
	vmovdqu	480(%rsi), %ymm0
	vmovdqu	480(%rdi), %ymm1
	vpsubw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	jmp 	*%r8
L_poly_ntt$1:
	leaq	glob_data + 2112(%rip), %rsi
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vpbroadcastd	(%rsi), %ymm1
	vpbroadcastd	4(%rsi), %ymm2
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm14
	vmovdqu	64(%rcx), %ymm4
	vmovdqu	96(%rcx), %ymm5
	vmovdqu	256(%rcx), %ymm6
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm12
	vmovdqu	352(%rcx), %ymm8
	vpmullw	%ymm6, %ymm1, %ymm9
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm1, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm15
	vpmullw	%ymm12, %ymm1, %ymm11
	vpmulhw	%ymm12, %ymm2, %ymm7
	vpmullw	%ymm8, %ymm1, %ymm12
	vpmulhw	%ymm8, %ymm2, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpmulhw	%ymm0, %ymm12, %ymm12
	vpsubw	%ymm15, %ymm14, %ymm13
	vpaddw	%ymm14, %ymm15, %ymm14
	vpsubw	%ymm6, %ymm3, %ymm15
	vpaddw	%ymm3, %ymm6, %ymm3
	vpsubw	%ymm8, %ymm5, %ymm6
	vpaddw	%ymm5, %ymm8, %ymm5
	vpsubw	%ymm7, %ymm4, %ymm8
	vpaddw	%ymm4, %ymm7, %ymm4
	vpaddw	%ymm15, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm14, %ymm10
	vpaddw	%ymm8, %ymm11, %ymm8
	vpsubw	%ymm11, %ymm4, %ymm4
	vpaddw	%ymm6, %ymm12, %ymm6
	vpsubw	%ymm12, %ymm5, %ymm5
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm10, 32(%rcx)
	vmovdqu	%ymm4, 64(%rcx)
	vmovdqu	%ymm5, 96(%rcx)
	vmovdqu	%ymm7, 256(%rcx)
	vmovdqu	%ymm9, 288(%rcx)
	vmovdqu	%ymm8, 320(%rcx)
	vmovdqu	%ymm6, 352(%rcx)
	vmovdqu	128(%rcx), %ymm3
	vmovdqu	160(%rcx), %ymm12
	vmovdqu	192(%rcx), %ymm4
	vmovdqu	224(%rcx), %ymm5
	vmovdqu	384(%rcx), %ymm6
	vmovdqu	416(%rcx), %ymm7
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm11
	vpmullw	%ymm6, %ymm1, %ymm14
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm1, %ymm8
	vpmulhw	%ymm7, %ymm2, %ymm13
	vpmullw	%ymm10, %ymm1, %ymm9
	vpmulhw	%ymm10, %ymm2, %ymm7
	vpmullw	%ymm11, %ymm1, %ymm10
	vpmulhw	%ymm11, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm14, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm6, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm6, %ymm3
	vpsubw	%ymm1, %ymm5, %ymm6
	vpaddw	%ymm5, %ymm1, %ymm1
	vpsubw	%ymm7, %ymm4, %ymm5
	vpaddw	%ymm4, %ymm7, %ymm4
	vpaddw	%ymm13, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm3, %ymm2
	vpaddw	%ymm11, %ymm8, %ymm3
	vpsubw	%ymm8, %ymm12, %ymm8
	vpaddw	%ymm5, %ymm9, %ymm5
	vpsubw	%ymm9, %ymm4, %ymm9
	vpaddw	%ymm6, %ymm10, %ymm4
	vpsubw	%ymm10, %ymm1, %ymm14
	vmovdqu	%ymm7, 384(%rcx)
	vmovdqu	%ymm3, 416(%rcx)
	vmovdqu	%ymm5, 448(%rcx)
	vmovdqu	%ymm4, 480(%rcx)
	vpbroadcastd	8(%rsi), %ymm1
	vpbroadcastd	12(%rsi), %ymm4
	vmovdqu	%ymm8, %ymm10
	vmovdqu	%ymm9, %ymm3
	vmovdqu	(%rcx), %ymm6
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm9
	vmovdqu	96(%rcx), %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm4, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm13
	vpmulhw	%ymm10, %ymm4, %ymm12
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm4, %ymm10
	vpmullw	%ymm14, %ymm1, %ymm3
	vpmulhw	%ymm14, %ymm4, %ymm14
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpmulhw	%ymm0, %ymm13, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm12, %ymm5, %ymm4
	vpaddw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm6, %ymm12
	vpaddw	%ymm6, %ymm8, %ymm13
	vpsubw	%ymm14, %ymm7, %ymm6
	vpaddw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm10, %ymm9, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm12, %ymm11, %ymm10
	vpsubw	%ymm11, %ymm13, %ymm12
	vpaddw	%ymm4, %ymm1, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpaddw	%ymm8, %ymm2, %ymm8
	vpsubw	%ymm2, %ymm9, %ymm2
	vpaddw	%ymm6, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm7, %ymm7
	vmovdqu	16(%rsi), %ymm3
	vmovdqu	48(%rsi), %ymm6
	vperm2i128	$32, %ymm10, %ymm12, %ymm11
	vperm2i128	$49, %ymm10, %ymm12, %ymm9
	vperm2i128	$32, %ymm4, %ymm5, %ymm1
	vperm2i128	$49, %ymm4, %ymm5, %ymm12
	vperm2i128	$32, %ymm8, %ymm2, %ymm5
	vperm2i128	$49, %ymm8, %ymm2, %ymm8
	vperm2i128	$32, %ymm13, %ymm7, %ymm2
	vperm2i128	$49, %ymm13, %ymm7, %ymm13
	vpmullw	%ymm5, %ymm3, %ymm4
	vpmulhw	%ymm5, %ymm6, %ymm10
	vpmullw	%ymm8, %ymm3, %ymm14
	vpmulhw	%ymm8, %ymm6, %ymm8
	vpmullw	%ymm2, %ymm3, %ymm5
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm8, %ymm9, %ymm7
	vpaddw	%ymm9, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	80(%rsi), %ymm1
	vmovdqu	112(%rsi), %ymm10
	vpunpcklqdq	%ymm2, %ymm9, %ymm5
	vpunpckhqdq	%ymm2, %ymm9, %ymm12
	vpunpcklqdq	%ymm3, %ymm4, %ymm8
	vpunpckhqdq	%ymm3, %ymm4, %ymm6
	vpunpcklqdq	%ymm7, %ymm13, %ymm2
	vpunpckhqdq	%ymm7, %ymm13, %ymm4
	vpunpcklqdq	%ymm11, %ymm14, %ymm3
	vpunpckhqdq	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm10, %ymm13
	vpmullw	%ymm4, %ymm1, %ymm14
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm9
	vpmullw	%ymm7, %ymm1, %ymm3
	vpmulhw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpmulhw	%ymm0, %ymm14, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpsubw	%ymm13, %ymm5, %ymm12
	vpaddw	%ymm5, %ymm13, %ymm13
	vpsubw	%ymm7, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm13, %ymm12
	vpaddw	%ymm11, %ymm1, %ymm10
	vpsubw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm6
	vmovdqu	144(%rsi), %ymm3
	vmovdqu	176(%rsi), %ymm5
	vmovsldup	%ymm9, %ymm1
	vpblendd	$-86, %ymm1, %ymm12, %ymm11
	vpsrlq	$32, %ymm12, %ymm1
	vpblendd	$-86, %ymm9, %ymm1, %ymm8
	vmovsldup	%ymm10, %ymm1
	vpblendd	$-86, %ymm1, %ymm4, %ymm1
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$-86, %ymm10, %ymm4, %ymm12
	vmovsldup	%ymm7, %ymm4
	vpblendd	$-86, %ymm4, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$-86, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm13, %ymm2
	vpblendd	$-86, %ymm2, %ymm6, %ymm2
	vpsrlq	$32, %ymm6, %ymm4
	vpblendd	$-86, %ymm13, %ymm4, %ymm13
	vpmullw	%ymm9, %ymm3, %ymm4
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpmullw	%ymm7, %ymm3, %ymm14
	vpmulhw	%ymm7, %ymm5, %ymm9
	vpmullw	%ymm2, %ymm3, %ymm6
	vpmulhw	%ymm2, %ymm5, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm5, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	208(%rsi), %ymm5
	vmovdqu	240(%rsi), %ymm6
	vpslld	$16, %ymm2, %ymm1
	vpblendw	$-86, %ymm1, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm1
	vpblendw	$-86, %ymm2, %ymm1, %ymm8
	vpslld	$16, %ymm3, %ymm1
	vpblendw	$-86, %ymm1, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm12
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$-86, %ymm2, %ymm13, %ymm4
	vpsrld	$16, %ymm13, %ymm2
	vpblendw	$-86, %ymm7, %ymm2, %ymm7
	vpslld	$16, %ymm11, %ymm2
	vpblendw	$-86, %ymm2, %ymm14, %ymm2
	vpsrld	$16, %ymm14, %ymm3
	vpblendw	$-86, %ymm11, %ymm3, %ymm13
	vpmullw	%ymm4, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm6, %ymm11
	vpmullw	%ymm7, %ymm5, %ymm4
	vpmulhw	%ymm7, %ymm6, %ymm9
	vpmullw	%ymm2, %ymm5, %ymm7
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm5, %ymm14
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm7, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm11, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm3
	vpaddw	%ymm7, %ymm4, %ymm7
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm8
	vpsubw	%ymm5, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm12, %ymm10
	vmovdqu	272(%rsi), %ymm9
	vmovdqu	304(%rsi), %ymm13
	vmovdqu	336(%rsi), %ymm11
	vmovdqu	368(%rsi), %ymm6
	vpmullw	%ymm1, %ymm9, %ymm14
	vpmulhw	%ymm1, %ymm13, %ymm12
	vpmullw	%ymm10, %ymm9, %ymm9
	vpmulhw	%ymm10, %ymm13, %ymm13
	vpmullw	%ymm8, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm6, %ymm1
	vpmullw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm8
	vpmulhw	%ymm0, %ymm10, %ymm9
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm4, %ymm11
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsubw	%ymm12, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm7, %ymm12
	vpaddw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm2, %ymm7
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm3
	vpaddw	%ymm11, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm1, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm1
	vpsubw	%ymm10, %ymm5, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm9
	vpmulhw	%ymm9, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm9, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm9, %ymm8, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm8, %ymm8
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm5
	vpmulhw	%ymm9, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm9, %ymm6, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm6, %ymm6
	vpmulhw	%ymm9, %ymm7, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm9, %ymm1, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm1, %ymm1
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	%ymm8, 128(%rcx)
	vmovdqu	%ymm5, 160(%rcx)
	vmovdqu	%ymm7, 192(%rcx)
	vmovdqu	%ymm1, 224(%rcx)
	vpbroadcastd	400(%rsi), %ymm5
	vpbroadcastd	404(%rsi), %ymm8
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	416(%rcx), %ymm2
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm9
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm6
	vmovdqu	352(%rcx), %ymm4
	vpmullw	%ymm1, %ymm5, %ymm14
	vpmulhw	%ymm1, %ymm8, %ymm12
	vpmullw	%ymm2, %ymm5, %ymm1
	vpmulhw	%ymm2, %ymm8, %ymm11
	vpmullw	%ymm10, %ymm5, %ymm2
	vpmulhw	%ymm10, %ymm8, %ymm13
	vpmullw	%ymm9, %ymm5, %ymm10
	vpmulhw	%ymm9, %ymm8, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm8
	vpmulhw	%ymm0, %ymm1, %ymm9
	vpmulhw	%ymm0, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm10, %ymm2
	vpsubw	%ymm11, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm11, %ymm11
	vpsubw	%ymm12, %ymm3, %ymm7
	vpaddw	%ymm3, %ymm12, %ymm12
	vpsubw	%ymm5, %ymm4, %ymm3
	vpaddw	%ymm4, %ymm5, %ymm4
	vpsubw	%ymm13, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm13, %ymm6
	vpaddw	%ymm7, %ymm8, %ymm7
	vpsubw	%ymm8, %ymm12, %ymm12
	vpaddw	%ymm10, %ymm9, %ymm8
	vpsubw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm5, %ymm1, %ymm5
	vpsubw	%ymm1, %ymm6, %ymm6
	vpaddw	%ymm3, %ymm2, %ymm13
	vpsubw	%ymm2, %ymm4, %ymm2
	vmovdqu	408(%rsi), %ymm3
	vmovdqu	440(%rsi), %ymm4
	vperm2i128	$32, %ymm7, %ymm12, %ymm10
	vperm2i128	$49, %ymm7, %ymm12, %ymm11
	vperm2i128	$32, %ymm8, %ymm9, %ymm1
	vperm2i128	$49, %ymm8, %ymm9, %ymm12
	vperm2i128	$32, %ymm5, %ymm6, %ymm8
	vperm2i128	$49, %ymm5, %ymm6, %ymm5
	vperm2i128	$32, %ymm13, %ymm2, %ymm6
	vperm2i128	$49, %ymm13, %ymm2, %ymm13
	vpmullw	%ymm8, %ymm3, %ymm7
	vpmulhw	%ymm8, %ymm4, %ymm14
	vpmullw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm5, %ymm4, %ymm8
	vpmullw	%ymm6, %ymm3, %ymm5
	vpmulhw	%ymm6, %ymm4, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm6
	vpmulhw	%ymm13, %ymm4, %ymm13
	vpmulhw	%ymm0, %ymm7, %ymm3
	vpmulhw	%ymm0, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm8, %ymm11, %ymm7
	vpaddw	%ymm11, %ymm8, %ymm8
	vpsubw	%ymm14, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	472(%rsi), %ymm1
	vmovdqu	504(%rsi), %ymm10
	vpunpcklqdq	%ymm2, %ymm9, %ymm5
	vpunpckhqdq	%ymm2, %ymm9, %ymm12
	vpunpcklqdq	%ymm3, %ymm4, %ymm8
	vpunpckhqdq	%ymm3, %ymm4, %ymm6
	vpunpcklqdq	%ymm7, %ymm13, %ymm2
	vpunpckhqdq	%ymm7, %ymm13, %ymm4
	vpunpcklqdq	%ymm11, %ymm14, %ymm3
	vpunpckhqdq	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm2, %ymm1, %ymm11
	vpmulhw	%ymm2, %ymm10, %ymm13
	vpmullw	%ymm4, %ymm1, %ymm14
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmullw	%ymm3, %ymm1, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm9
	vpmullw	%ymm7, %ymm1, %ymm3
	vpmulhw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpmulhw	%ymm0, %ymm14, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpsubw	%ymm13, %ymm5, %ymm12
	vpaddw	%ymm5, %ymm13, %ymm13
	vpsubw	%ymm7, %ymm6, %ymm5
	vpaddw	%ymm6, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm9
	vpsubw	%ymm10, %ymm13, %ymm12
	vpaddw	%ymm11, %ymm1, %ymm10
	vpsubw	%ymm1, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm2, %ymm7
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm6
	vmovdqu	536(%rsi), %ymm3
	vmovdqu	568(%rsi), %ymm5
	vmovsldup	%ymm9, %ymm1
	vpblendd	$-86, %ymm1, %ymm12, %ymm11
	vpsrlq	$32, %ymm12, %ymm1
	vpblendd	$-86, %ymm9, %ymm1, %ymm8
	vmovsldup	%ymm10, %ymm1
	vpblendd	$-86, %ymm1, %ymm4, %ymm1
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$-86, %ymm10, %ymm4, %ymm12
	vmovsldup	%ymm7, %ymm4
	vpblendd	$-86, %ymm4, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$-86, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm13, %ymm2
	vpblendd	$-86, %ymm2, %ymm6, %ymm2
	vpsrlq	$32, %ymm6, %ymm4
	vpblendd	$-86, %ymm13, %ymm4, %ymm13
	vpmullw	%ymm9, %ymm3, %ymm4
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpmullw	%ymm7, %ymm3, %ymm14
	vpmulhw	%ymm7, %ymm5, %ymm9
	vpmullw	%ymm2, %ymm3, %ymm6
	vpmulhw	%ymm2, %ymm5, %ymm2
	vpmullw	%ymm13, %ymm3, %ymm7
	vpmulhw	%ymm13, %ymm5, %ymm13
	vpmulhw	%ymm0, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm14, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm7, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm9
	vpaddw	%ymm7, %ymm4, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm1, %ymm13
	vpaddw	%ymm11, %ymm6, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm14
	vmovdqu	600(%rsi), %ymm5
	vmovdqu	632(%rsi), %ymm6
	vpslld	$16, %ymm2, %ymm1
	vpblendw	$-86, %ymm1, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm1
	vpblendw	$-86, %ymm2, %ymm1, %ymm8
	vpslld	$16, %ymm3, %ymm1
	vpblendw	$-86, %ymm1, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm12
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$-86, %ymm2, %ymm13, %ymm4
	vpsrld	$16, %ymm13, %ymm2
	vpblendw	$-86, %ymm7, %ymm2, %ymm7
	vpslld	$16, %ymm11, %ymm2
	vpblendw	$-86, %ymm2, %ymm14, %ymm2
	vpsrld	$16, %ymm14, %ymm3
	vpblendw	$-86, %ymm11, %ymm3, %ymm13
	vpmullw	%ymm4, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm6, %ymm11
	vpmullw	%ymm7, %ymm5, %ymm4
	vpmulhw	%ymm7, %ymm6, %ymm9
	vpmullw	%ymm2, %ymm5, %ymm7
	vpmulhw	%ymm2, %ymm6, %ymm2
	vpmullw	%ymm13, %ymm5, %ymm14
	vpmulhw	%ymm13, %ymm6, %ymm13
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm7, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm11, %ymm10, %ymm9
	vpaddw	%ymm10, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpsubw	%ymm2, %ymm1, %ymm13
	vpaddw	%ymm1, %ymm2, %ymm1
	vpaddw	%ymm9, %ymm3, %ymm2
	vpsubw	%ymm3, %ymm10, %ymm3
	vpaddw	%ymm7, %ymm4, %ymm7
	vpsubw	%ymm4, %ymm8, %ymm4
	vpaddw	%ymm13, %ymm5, %ymm8
	vpsubw	%ymm5, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm12, %ymm10
	vmovdqu	664(%rsi), %ymm9
	vmovdqu	696(%rsi), %ymm13
	vmovdqu	728(%rsi), %ymm11
	vmovdqu	760(%rsi), %ymm6
	vpmullw	%ymm1, %ymm9, %ymm14
	vpmulhw	%ymm1, %ymm13, %ymm12
	vpmullw	%ymm10, %ymm9, %ymm9
	vpmulhw	%ymm10, %ymm13, %ymm13
	vpmullw	%ymm8, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm6, %ymm1
	vpmullw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm14, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm8
	vpmulhw	%ymm0, %ymm10, %ymm9
	vpmulhw	%ymm0, %ymm11, %ymm10
	vpsubw	%ymm13, %ymm4, %ymm11
	vpaddw	%ymm4, %ymm13, %ymm4
	vpsubw	%ymm12, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm7, %ymm12
	vpaddw	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm2, %ymm7
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm13, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm3
	vpaddw	%ymm11, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm4, %ymm4
	vpaddw	%ymm7, %ymm9, %ymm7
	vpsubw	%ymm9, %ymm1, %ymm8
	vpaddw	%ymm12, %ymm10, %ymm1
	vpsubw	%ymm10, %ymm5, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm9
	vpmulhw	%ymm9, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm9, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm9, %ymm8, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm8, %ymm8
	vpmulhw	%ymm9, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm5
	vpmulhw	%ymm9, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm9, %ymm6, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm6, %ymm6
	vpmulhw	%ymm9, %ymm7, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm9, %ymm1, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm0
	vpsubw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm3, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	%ymm6, 352(%rcx)
	vmovdqu	%ymm8, 384(%rcx)
	vmovdqu	%ymm5, 416(%rcx)
	vmovdqu	%ymm7, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	jmp 	*%rdi
L_poly_invntt$1:
	leaq	glob_data + 1312(%rip), %rsi
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	(%rsi), %ymm12
	vmovdqu	64(%rsi), %ymm1
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm4
	vmovdqu	64(%rcx), %ymm15
	vmovdqu	96(%rcx), %ymm11
	vmovdqu	128(%rcx), %ymm7
	vmovdqu	160(%rcx), %ymm8
	vmovdqu	192(%rcx), %ymm13
	vmovdqu	224(%rcx), %ymm14
	vpsubw	%ymm15, %ymm3, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm9
	vpsubw	%ymm13, %ymm7, %ymm10
	vpaddw	%ymm3, %ymm15, %ymm3
	vpaddw	%ymm4, %ymm11, %ymm4
	vpmullw	%ymm6, %ymm12, %ymm11
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmullw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm14, %ymm8, %ymm13
	vpaddw	%ymm8, %ymm14, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm14
	vpmullw	%ymm13, %ymm1, %ymm1
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm9
	vpmulhw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm11
	vpmulhw	%ymm14, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm10, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm2, %ymm11
	vpsubw	%ymm12, %ymm9, %ymm9
	vpsubw	%ymm1, %ymm5, %ymm13
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	128(%rsi), %ymm2
	vmovdqu	160(%rsi), %ymm5
	vpmulhw	%ymm1, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm12
	vpmulhw	%ymm1, %ymm7, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm7, %ymm7
	vpmulhw	%ymm1, %ymm8, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm8, %ymm8
	vpsubw	%ymm7, %ymm10, %ymm15
	vpsubw	%ymm8, %ymm12, %ymm3
	vpsubw	%ymm9, %ymm6, %ymm4
	vpaddw	%ymm10, %ymm7, %ymm7
	vpaddw	%ymm12, %ymm8, %ymm8
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm6, %ymm9, %ymm9
	vpmullw	%ymm3, %ymm2, %ymm6
	vpsubw	%ymm13, %ymm11, %ymm12
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm12, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm6, %ymm0, %ymm12
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm6
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm12, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm6, %ymm5, %ymm5
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$-86, %ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$-86, %ymm8, %ymm7, %ymm7
	vpslld	$16, %ymm11, %ymm8
	vpblendw	$-86, %ymm8, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$-86, %ymm11, %ymm8, %ymm11
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$-86, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm9
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$-86, %ymm2, %ymm4, %ymm12
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$-86, %ymm5, %ymm2, %ymm13
	vmovdqu	192(%rsi), %ymm2
	vmovdqu	224(%rsi), %ymm5
	vpsubw	%ymm7, %ymm6, %ymm15
	vpsubw	%ymm11, %ymm10, %ymm3
	vpsubw	%ymm9, %ymm8, %ymm4
	vpaddw	%ymm6, %ymm7, %ymm6
	vpaddw	%ymm10, %ymm11, %ymm7
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm3, %ymm2, %ymm9
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm11, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm11, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm9
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm11, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm9, %ymm5, %ymm5
	vpmulhw	%ymm1, %ymm6, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm6, %ymm6
	vmovsldup	%ymm7, %ymm9
	vpblendd	$-86, %ymm9, %ymm6, %ymm9
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm7, %ymm6, %ymm10
	vmovsldup	%ymm12, %ymm6
	vpblendd	$-86, %ymm6, %ymm8, %ymm11
	vpsrlq	$32, %ymm8, %ymm6
	vpblendd	$-86, %ymm12, %ymm6, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$-86, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$-86, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$-86, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$-86, %ymm5, %ymm3, %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vpsubw	%ymm10, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm11, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm7, %ymm7
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm8
	vpunpcklqdq	%ymm10, %ymm8, %ymm5
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vpunpcklqdq	%ymm2, %ymm12, %ymm9
	vpunpckhqdq	%ymm2, %ymm12, %ymm2
	vpunpcklqdq	%ymm7, %ymm6, %ymm10
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpunpckhqdq	%ymm4, %ymm3, %ymm3
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm11
	vpsubw	%ymm8, %ymm5, %ymm12
	vpsubw	%ymm2, %ymm9, %ymm13
	vpsubw	%ymm6, %ymm10, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm5
	vpaddw	%ymm9, %ymm2, %ymm2
	vpmullw	%ymm12, %ymm4, %ymm8
	vpaddw	%ymm10, %ymm6, %ymm6
	vpmullw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm3, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm9, %ymm13, %ymm9
	vpsubw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm1, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm10
	vperm2i128	$32, %ymm2, %ymm10, %ymm5
	vperm2i128	$49, %ymm2, %ymm10, %ymm2
	vperm2i128	$32, %ymm3, %ymm6, %ymm10
	vperm2i128	$49, %ymm3, %ymm6, %ymm3
	vperm2i128	$32, %ymm9, %ymm8, %ymm6
	vperm2i128	$49, %ymm9, %ymm8, %ymm8
	vperm2i128	$32, %ymm4, %ymm7, %ymm9
	vperm2i128	$49, %ymm4, %ymm7, %ymm4
	vpbroadcastd	384(%rsi), %ymm7
	vpbroadcastd	388(%rsi), %ymm11
	vpsubw	%ymm2, %ymm5, %ymm12
	vpsubw	%ymm3, %ymm10, %ymm13
	vpsubw	%ymm8, %ymm6, %ymm14
	vpaddw	%ymm5, %ymm2, %ymm2
	vpaddw	%ymm10, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm7, %ymm5
	vpaddw	%ymm6, %ymm8, %ymm6
	vpmullw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm4, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm4, %ymm4
	vpmullw	%ymm14, %ymm7, %ymm9
	vpmullw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm13, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	%ymm3, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm9, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	vmovdqu	392(%rsi), %ymm12
	vmovdqu	456(%rsi), %ymm1
	vmovdqu	424(%rsi), %ymm2
	vmovdqu	488(%rsi), %ymm5
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm4
	vmovdqu	320(%rcx), %ymm15
	vmovdqu	352(%rcx), %ymm11
	vmovdqu	384(%rcx), %ymm7
	vmovdqu	416(%rcx), %ymm8
	vmovdqu	448(%rcx), %ymm13
	vmovdqu	480(%rcx), %ymm14
	vpsubw	%ymm15, %ymm3, %ymm6
	vpsubw	%ymm11, %ymm4, %ymm9
	vpsubw	%ymm13, %ymm7, %ymm10
	vpaddw	%ymm3, %ymm15, %ymm3
	vpaddw	%ymm4, %ymm11, %ymm4
	vpmullw	%ymm6, %ymm12, %ymm11
	vpaddw	%ymm7, %ymm13, %ymm7
	vpmullw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm14, %ymm8, %ymm13
	vpaddw	%ymm8, %ymm14, %ymm8
	vpmullw	%ymm10, %ymm1, %ymm14
	vpmullw	%ymm13, %ymm1, %ymm1
	vpmulhw	%ymm6, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm9
	vpmulhw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm11
	vpmulhw	%ymm14, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm10, %ymm6, %ymm6
	vpsubw	%ymm11, %ymm2, %ymm11
	vpsubw	%ymm12, %ymm9, %ymm9
	vpsubw	%ymm1, %ymm5, %ymm13
	vmovdqu	glob_data + 1216(%rip), %ymm1
	vmovdqu	520(%rsi), %ymm2
	vmovdqu	552(%rsi), %ymm5
	vpmulhw	%ymm1, %ymm3, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm3, %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm12
	vpmulhw	%ymm1, %ymm7, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm7, %ymm7
	vpmulhw	%ymm1, %ymm8, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm8, %ymm8
	vpsubw	%ymm7, %ymm10, %ymm15
	vpsubw	%ymm8, %ymm12, %ymm3
	vpsubw	%ymm9, %ymm6, %ymm4
	vpaddw	%ymm10, %ymm7, %ymm7
	vpaddw	%ymm12, %ymm8, %ymm8
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm6, %ymm9, %ymm9
	vpmullw	%ymm3, %ymm2, %ymm6
	vpsubw	%ymm13, %ymm11, %ymm12
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm12, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm6, %ymm0, %ymm12
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm6
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm12, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm6, %ymm5, %ymm5
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$-86, %ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$-86, %ymm8, %ymm7, %ymm7
	vpslld	$16, %ymm11, %ymm8
	vpblendw	$-86, %ymm8, %ymm9, %ymm10
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$-86, %ymm11, %ymm8, %ymm11
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$-86, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm9
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$-86, %ymm2, %ymm4, %ymm12
	vpsrld	$16, %ymm4, %ymm2
	vpblendw	$-86, %ymm5, %ymm2, %ymm13
	vmovdqu	584(%rsi), %ymm2
	vmovdqu	616(%rsi), %ymm5
	vpsubw	%ymm7, %ymm6, %ymm15
	vpsubw	%ymm11, %ymm10, %ymm3
	vpsubw	%ymm9, %ymm8, %ymm4
	vpaddw	%ymm6, %ymm7, %ymm6
	vpaddw	%ymm10, %ymm11, %ymm7
	vpmullw	%ymm15, %ymm2, %ymm10
	vpaddw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm3, %ymm2, %ymm9
	vpsubw	%ymm13, %ymm12, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm4, %ymm2, %ymm13
	vpmullw	%ymm11, %ymm2, %ymm14
	vpmulhw	%ymm15, %ymm5, %ymm2
	vpmulhw	%ymm3, %ymm5, %ymm3
	vpmulhw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm11, %ymm5, %ymm5
	vpmulhw	%ymm10, %ymm0, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm14, %ymm0, %ymm9
	vpsubw	%ymm10, %ymm2, %ymm2
	vpsubw	%ymm11, %ymm3, %ymm3
	vpsubw	%ymm13, %ymm4, %ymm4
	vpsubw	%ymm9, %ymm5, %ymm5
	vpmulhw	%ymm1, %ymm6, %ymm9
	vpsraw	$10, %ymm9, %ymm9
	vpmullw	%ymm0, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm6, %ymm6
	vmovsldup	%ymm7, %ymm9
	vpblendd	$-86, %ymm9, %ymm6, %ymm9
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm7, %ymm6, %ymm10
	vmovsldup	%ymm12, %ymm6
	vpblendd	$-86, %ymm6, %ymm8, %ymm11
	vpsrlq	$32, %ymm8, %ymm6
	vpblendd	$-86, %ymm12, %ymm6, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$-86, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$-86, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$-86, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$-86, %ymm5, %ymm3, %ymm3
	vmovdqu	648(%rsi), %ymm4
	vmovdqu	680(%rsi), %ymm5
	vpsubw	%ymm10, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm11, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm7, %ymm7
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm8
	vpunpcklqdq	%ymm10, %ymm8, %ymm5
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vpunpcklqdq	%ymm2, %ymm12, %ymm9
	vpunpckhqdq	%ymm2, %ymm12, %ymm2
	vpunpcklqdq	%ymm7, %ymm6, %ymm10
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm3, %ymm7
	vpunpckhqdq	%ymm4, %ymm3, %ymm3
	vmovdqu	712(%rsi), %ymm4
	vmovdqu	744(%rsi), %ymm11
	vpsubw	%ymm8, %ymm5, %ymm12
	vpsubw	%ymm2, %ymm9, %ymm13
	vpsubw	%ymm6, %ymm10, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm5
	vpaddw	%ymm9, %ymm2, %ymm2
	vpmullw	%ymm12, %ymm4, %ymm8
	vpaddw	%ymm10, %ymm6, %ymm6
	vpmullw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm3, %ymm7, %ymm10
	vpaddw	%ymm7, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm4, %ymm4
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm9, %ymm13, %ymm9
	vpsubw	%ymm7, %ymm14, %ymm7
	vpsubw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm1, %ymm5, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm5, %ymm10
	vperm2i128	$32, %ymm2, %ymm10, %ymm5
	vperm2i128	$49, %ymm2, %ymm10, %ymm2
	vperm2i128	$32, %ymm3, %ymm6, %ymm10
	vperm2i128	$49, %ymm3, %ymm6, %ymm3
	vperm2i128	$32, %ymm9, %ymm8, %ymm6
	vperm2i128	$49, %ymm9, %ymm8, %ymm8
	vperm2i128	$32, %ymm4, %ymm7, %ymm9
	vperm2i128	$49, %ymm4, %ymm7, %ymm4
	vpbroadcastd	776(%rsi), %ymm7
	vpbroadcastd	780(%rsi), %ymm11
	vpsubw	%ymm2, %ymm5, %ymm12
	vpsubw	%ymm3, %ymm10, %ymm13
	vpsubw	%ymm8, %ymm6, %ymm14
	vpaddw	%ymm5, %ymm2, %ymm2
	vpaddw	%ymm10, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm7, %ymm5
	vpaddw	%ymm6, %ymm8, %ymm6
	vpmullw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm4, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm4, %ymm4
	vpmullw	%ymm14, %ymm7, %ymm9
	vpmullw	%ymm10, %ymm7, %ymm7
	vpmulhw	%ymm12, %ymm11, %ymm12
	vpmulhw	%ymm13, %ymm11, %ymm13
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm13, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm7, %ymm10, %ymm7
	vpmulhw	%ymm1, %ymm2, %ymm1
	vpsraw	$10, %ymm1, %ymm1
	vpmullw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm2, %ymm10
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm8, 416(%rcx)
	vmovdqu	%ymm9, 448(%rcx)
	vmovdqu	%ymm7, 480(%rcx)
	vpbroadcastd	784(%rsi), %ymm1
	vpbroadcastd	788(%rsi), %ymm2
	vmovdqu	%ymm4, %ymm7
	vmovdqu	%ymm3, %ymm4
	vmovdqu	%ymm10, %ymm3
	vmovdqu	(%rcx), %ymm9
	vmovdqu	32(%rcx), %ymm13
	vmovdqu	64(%rcx), %ymm5
	vmovdqu	96(%rcx), %ymm8
	vpsubw	%ymm3, %ymm9, %ymm10
	vpsubw	%ymm4, %ymm13, %ymm11
	vpsubw	%ymm6, %ymm5, %ymm12
	vpaddw	%ymm9, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm4, %ymm4
	vpmullw	%ymm10, %ymm1, %ymm13
	vpaddw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm11, %ymm1, %ymm6
	vpsubw	%ymm7, %ymm8, %ymm14
	vpaddw	%ymm8, %ymm7, %ymm7
	vpmullw	%ymm12, %ymm1, %ymm8
	vpmullw	%ymm14, %ymm1, %ymm9
	vpmulhw	%ymm10, %ymm2, %ymm10
	vpmulhw	%ymm11, %ymm2, %ymm11
	vpmulhw	%ymm12, %ymm2, %ymm12
	vpmulhw	%ymm14, %ymm2, %ymm14
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm6, %ymm0, %ymm6
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpsubw	%ymm13, %ymm10, %ymm10
	vpsubw	%ymm6, %ymm11, %ymm6
	vpsubw	%ymm8, %ymm12, %ymm11
	vpsubw	%ymm9, %ymm14, %ymm12
	vmovdqu	glob_data + 1152(%rip), %ymm8
	vmovdqu	glob_data + 1184(%rip), %ymm9
	vmovdqu	%ymm10, 256(%rcx)
	vmovdqu	%ymm6, 288(%rcx)
	vmovdqu	%ymm11, 320(%rcx)
	vmovdqu	%ymm12, 352(%rcx)
	vpmullw	%ymm3, %ymm8, %ymm6
	vpmulhw	%ymm3, %ymm9, %ymm3
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm4, %ymm8, %ymm6
	vpmulhw	%ymm4, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vpmullw	%ymm5, %ymm8, %ymm6
	vpmulhw	%ymm5, %ymm9, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm5, %ymm5
	vpmullw	%ymm7, %ymm8, %ymm6
	vpmulhw	%ymm7, %ymm9, %ymm7
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm7, %ymm6
	vmovdqu	%ymm3, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm5, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	384(%rcx), %ymm4
	vmovdqu	416(%rcx), %ymm5
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm10
	vmovdqu	128(%rcx), %ymm6
	vmovdqu	160(%rcx), %ymm9
	vmovdqu	192(%rcx), %ymm8
	vmovdqu	224(%rcx), %ymm11
	vpsubw	%ymm4, %ymm6, %ymm12
	vpsubw	%ymm5, %ymm9, %ymm13
	vpsubw	%ymm7, %ymm8, %ymm3
	vpaddw	%ymm6, %ymm4, %ymm4
	vpaddw	%ymm9, %ymm5, %ymm5
	vpmullw	%ymm12, %ymm1, %ymm6
	vpaddw	%ymm8, %ymm7, %ymm7
	vpmullw	%ymm13, %ymm1, %ymm8
	vpsubw	%ymm10, %ymm11, %ymm9
	vpaddw	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm3, %ymm1, %ymm11
	vpmullw	%ymm9, %ymm1, %ymm1
	vpmulhw	%ymm12, %ymm2, %ymm12
	vpmulhw	%ymm13, %ymm2, %ymm13
	vpmulhw	%ymm3, %ymm2, %ymm3
	vpmulhw	%ymm9, %ymm2, %ymm2
	vpmulhw	%ymm6, %ymm0, %ymm6
	vpmulhw	%ymm8, %ymm0, %ymm8
	vpmulhw	%ymm11, %ymm0, %ymm9
	vpmulhw	%ymm1, %ymm0, %ymm11
	vpsubw	%ymm6, %ymm12, %ymm1
	vpsubw	%ymm8, %ymm13, %ymm6
	vpsubw	%ymm9, %ymm3, %ymm8
	vpsubw	%ymm11, %ymm2, %ymm9
	vmovdqu	glob_data + 1152(%rip), %ymm2
	vmovdqu	glob_data + 1184(%rip), %ymm3
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	%ymm6, 416(%rcx)
	vmovdqu	%ymm8, 448(%rcx)
	vmovdqu	%ymm9, 480(%rcx)
	vpmullw	%ymm4, %ymm2, %ymm1
	vpmulhw	%ymm4, %ymm3, %ymm4
	vpmulhw	%ymm0, %ymm1, %ymm1
	vpsubw	%ymm1, %ymm4, %ymm1
	vpmullw	%ymm5, %ymm2, %ymm4
	vpmulhw	%ymm5, %ymm3, %ymm5
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm7, %ymm2, %ymm5
	vpmulhw	%ymm7, %ymm3, %ymm6
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm10, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm0
	vpsubw	%ymm0, %ymm3, %ymm0
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	%ymm5, 192(%rcx)
	vmovdqu	%ymm0, 224(%rcx)
	jmp 	*%rdi
L_poly_getnoise_eta1122_4x$1:
	vmovdqu	(%rax), %ymm0
	vmovdqu	%ymm0, (%rsp)
	vmovdqu	%ymm0, 160(%rsp)
	vmovdqu	%ymm0, 320(%rsp)
	vmovdqu	%ymm0, 480(%rsp)
	movb	%cl, 32(%rsp)
	incb	%cl
	movb	%cl, 192(%rsp)
	incb	%cl
	movb	%cl, 352(%rsp)
	incb	%cl
	movb	%cl, 512(%rsp)
	leaq	640(%rsp), %r10
	movq	%rsp, %r11
	leaq	160(%rsp), %rbx
	leaq	320(%rsp), %rbp
	leaq	480(%rsp), %r12
	leaq	L_poly_getnoise_eta1122_4x$3(%rip), %r13
	jmp 	L_shake256_absorb4x_33$1
L_poly_getnoise_eta1122_4x$3:
	leaq	640(%rsp), %rbx
	movq	%rsp, %rax
	leaq	160(%rsp), %rcx
	leaq	320(%rsp), %r11
	leaq	480(%rsp), %rdx
	leaq	-800(%rsp), %rsp
	leaq	L_poly_getnoise_eta1122_4x$2(%rip), %rbp
	jmp 	L_KeccakF1600_StatePermute4x$1
L_poly_getnoise_eta1122_4x$2:
	leaq	800(%rsp), %rsp
	vmovdqu	(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, (%rax)
	vmovhpd	%xmm1, (%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, (%r11)
	vmovhpd	%xmm0, (%rdx)
	vmovdqu	32(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 8(%rax)
	vmovhpd	%xmm1, 8(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 8(%r11)
	vmovhpd	%xmm0, 8(%rdx)
	vmovdqu	64(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 16(%rax)
	vmovhpd	%xmm1, 16(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 16(%r11)
	vmovhpd	%xmm0, 16(%rdx)
	vmovdqu	96(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 24(%rax)
	vmovhpd	%xmm1, 24(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 24(%r11)
	vmovhpd	%xmm0, 24(%rdx)
	vmovdqu	128(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 32(%rax)
	vmovhpd	%xmm1, 32(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 32(%r11)
	vmovhpd	%xmm0, 32(%rdx)
	vmovdqu	160(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 40(%rax)
	vmovhpd	%xmm1, 40(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 40(%r11)
	vmovhpd	%xmm0, 40(%rdx)
	vmovdqu	192(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 48(%rax)
	vmovhpd	%xmm1, 48(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 48(%r11)
	vmovhpd	%xmm0, 48(%rdx)
	vmovdqu	224(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 56(%rax)
	vmovhpd	%xmm1, 56(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 56(%r11)
	vmovhpd	%xmm0, 56(%rdx)
	vmovdqu	256(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 64(%rax)
	vmovhpd	%xmm1, 64(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 64(%r11)
	vmovhpd	%xmm0, 64(%rdx)
	vmovdqu	288(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 72(%rax)
	vmovhpd	%xmm1, 72(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 72(%r11)
	vmovhpd	%xmm0, 72(%rdx)
	vmovdqu	320(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 80(%rax)
	vmovhpd	%xmm1, 80(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 80(%r11)
	vmovhpd	%xmm0, 80(%rdx)
	vmovdqu	352(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 88(%rax)
	vmovhpd	%xmm1, 88(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 88(%r11)
	vmovhpd	%xmm0, 88(%rdx)
	vmovdqu	384(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 96(%rax)
	vmovhpd	%xmm1, 96(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 96(%r11)
	vmovhpd	%xmm0, 96(%rdx)
	vmovdqu	416(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 104(%rax)
	vmovhpd	%xmm1, 104(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 104(%r11)
	vmovhpd	%xmm0, 104(%rdx)
	vmovdqu	448(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 112(%rax)
	vmovhpd	%xmm1, 112(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 112(%r11)
	vmovhpd	%xmm0, 112(%rdx)
	vmovdqu	480(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 120(%rax)
	vmovhpd	%xmm1, 120(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 120(%r11)
	vmovhpd	%xmm0, 120(%rdx)
	vmovdqu	512(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 128(%rax)
	vmovhpd	%xmm1, 128(%rcx)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 128(%r11)
	vmovhpd	%xmm0, 128(%rdx)
	movq	%rsp, %rax
	movl	$1431655765, 1440(%rsp)
	movl	$858993459, 1444(%rsp)
	movl	$50529027, 1448(%rsp)
	movl	$252645135, 1452(%rsp)
	vpbroadcastd	1440(%rsp), %ymm0
	vpbroadcastd	1444(%rsp), %ymm1
	vpbroadcastd	1448(%rsp), %ymm2
	vpbroadcastd	1452(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rsi)
	vmovdqu	%ymm7, 32(%rsi)
	vmovdqu	%ymm6, 64(%rsi)
	vmovdqu	%ymm4, 96(%rsi)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rsi)
	vmovdqu	%ymm7, 160(%rsi)
	vmovdqu	%ymm6, 192(%rsi)
	vmovdqu	%ymm4, 224(%rsi)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rsi)
	vmovdqu	%ymm7, 288(%rsi)
	vmovdqu	%ymm6, 320(%rsi)
	vmovdqu	%ymm4, 352(%rsi)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rsi)
	vmovdqu	%ymm3, 416(%rsi)
	vmovdqu	%ymm2, 448(%rsi)
	vmovdqu	%ymm0, 480(%rsi)
	leaq	160(%rsp), %rax
	movl	$1431655765, 1452(%rsp)
	movl	$858993459, 1448(%rsp)
	movl	$50529027, 1444(%rsp)
	movl	$252645135, 1440(%rsp)
	vpbroadcastd	1452(%rsp), %ymm0
	vpbroadcastd	1448(%rsp), %ymm1
	vpbroadcastd	1444(%rsp), %ymm2
	vpbroadcastd	1440(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rdi)
	vmovdqu	%ymm7, 32(%rdi)
	vmovdqu	%ymm6, 64(%rdi)
	vmovdqu	%ymm4, 96(%rdi)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rdi)
	vmovdqu	%ymm7, 160(%rdi)
	vmovdqu	%ymm6, 192(%rdi)
	vmovdqu	%ymm4, 224(%rdi)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rdi)
	vmovdqu	%ymm7, 288(%rdi)
	vmovdqu	%ymm6, 320(%rdi)
	vmovdqu	%ymm4, 352(%rdi)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rdi)
	vmovdqu	%ymm3, 416(%rdi)
	vmovdqu	%ymm2, 448(%rdi)
	vmovdqu	%ymm0, 480(%rdi)
	leaq	320(%rsp), %rax
	movl	$1431655765, 1440(%rsp)
	movl	$858993459, 1444(%rsp)
	movl	$50529027, 1448(%rsp)
	movl	$252645135, 1452(%rsp)
	vpbroadcastd	1440(%rsp), %ymm0
	vpbroadcastd	1444(%rsp), %ymm1
	vpbroadcastd	1448(%rsp), %ymm2
	vpbroadcastd	1452(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%r8)
	vmovdqu	%ymm7, 32(%r8)
	vmovdqu	%ymm6, 64(%r8)
	vmovdqu	%ymm4, 96(%r8)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%r8)
	vmovdqu	%ymm7, 160(%r8)
	vmovdqu	%ymm6, 192(%r8)
	vmovdqu	%ymm4, 224(%r8)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%r8)
	vmovdqu	%ymm7, 288(%r8)
	vmovdqu	%ymm6, 320(%r8)
	vmovdqu	%ymm4, 352(%r8)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%r8)
	vmovdqu	%ymm3, 416(%r8)
	vmovdqu	%ymm2, 448(%r8)
	vmovdqu	%ymm0, 480(%r8)
	leaq	480(%rsp), %rax
	movl	$1431655765, 1452(%rsp)
	movl	$858993459, 1448(%rsp)
	movl	$50529027, 1444(%rsp)
	movl	$252645135, 1440(%rsp)
	vpbroadcastd	1452(%rsp), %ymm0
	vpbroadcastd	1448(%rsp), %ymm1
	vpbroadcastd	1444(%rsp), %ymm2
	vpbroadcastd	1440(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%r9)
	vmovdqu	%ymm7, 32(%r9)
	vmovdqu	%ymm6, 64(%r9)
	vmovdqu	%ymm4, 96(%r9)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%r9)
	vmovdqu	%ymm7, 160(%r9)
	vmovdqu	%ymm6, 192(%r9)
	vmovdqu	%ymm4, 224(%r9)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%r9)
	vmovdqu	%ymm7, 288(%r9)
	vmovdqu	%ymm6, 320(%r9)
	vmovdqu	%ymm4, 352(%r9)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%r9)
	vmovdqu	%ymm3, 416(%r9)
	vmovdqu	%ymm2, 448(%r9)
	vmovdqu	%ymm0, 480(%r9)
	jmp 	*1456(%rsp)
L_poly_getnoise_eta1_4x$1:
	vmovdqu	(%rsi), %ymm0
	vmovdqu	%ymm0, (%rsp)
	vmovdqu	%ymm0, 160(%rsp)
	vmovdqu	%ymm0, 320(%rsp)
	vmovdqu	%ymm0, 480(%rsp)
	movb	%dil, 32(%rsp)
	incb	%dil
	movb	%dil, 192(%rsp)
	incb	%dil
	movb	%dil, 352(%rsp)
	incb	%dil
	movb	%dil, 512(%rsp)
	leaq	640(%rsp), %r10
	movq	%rsp, %r11
	leaq	160(%rsp), %rbx
	leaq	320(%rsp), %rbp
	leaq	480(%rsp), %r12
	leaq	L_poly_getnoise_eta1_4x$3(%rip), %r13
	jmp 	L_shake256_absorb4x_33$1
L_poly_getnoise_eta1_4x$3:
	leaq	640(%rsp), %rbx
	movq	%rsp, %rdi
	leaq	160(%rsp), %r8
	leaq	320(%rsp), %r9
	leaq	480(%rsp), %r11
	leaq	-800(%rsp), %rsp
	leaq	L_poly_getnoise_eta1_4x$2(%rip), %rbp
	jmp 	L_KeccakF1600_StatePermute4x$1
L_poly_getnoise_eta1_4x$2:
	leaq	800(%rsp), %rsp
	vmovdqu	(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, (%rdi)
	vmovhpd	%xmm1, (%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, (%r9)
	vmovhpd	%xmm0, (%r11)
	vmovdqu	32(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 8(%rdi)
	vmovhpd	%xmm1, 8(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 8(%r9)
	vmovhpd	%xmm0, 8(%r11)
	vmovdqu	64(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 16(%rdi)
	vmovhpd	%xmm1, 16(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 16(%r9)
	vmovhpd	%xmm0, 16(%r11)
	vmovdqu	96(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 24(%rdi)
	vmovhpd	%xmm1, 24(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 24(%r9)
	vmovhpd	%xmm0, 24(%r11)
	vmovdqu	128(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 32(%rdi)
	vmovhpd	%xmm1, 32(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 32(%r9)
	vmovhpd	%xmm0, 32(%r11)
	vmovdqu	160(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 40(%rdi)
	vmovhpd	%xmm1, 40(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 40(%r9)
	vmovhpd	%xmm0, 40(%r11)
	vmovdqu	192(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 48(%rdi)
	vmovhpd	%xmm1, 48(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 48(%r9)
	vmovhpd	%xmm0, 48(%r11)
	vmovdqu	224(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 56(%rdi)
	vmovhpd	%xmm1, 56(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 56(%r9)
	vmovhpd	%xmm0, 56(%r11)
	vmovdqu	256(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 64(%rdi)
	vmovhpd	%xmm1, 64(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 64(%r9)
	vmovhpd	%xmm0, 64(%r11)
	vmovdqu	288(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 72(%rdi)
	vmovhpd	%xmm1, 72(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 72(%r9)
	vmovhpd	%xmm0, 72(%r11)
	vmovdqu	320(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 80(%rdi)
	vmovhpd	%xmm1, 80(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 80(%r9)
	vmovhpd	%xmm0, 80(%r11)
	vmovdqu	352(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 88(%rdi)
	vmovhpd	%xmm1, 88(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 88(%r9)
	vmovhpd	%xmm0, 88(%r11)
	vmovdqu	384(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 96(%rdi)
	vmovhpd	%xmm1, 96(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 96(%r9)
	vmovhpd	%xmm0, 96(%r11)
	vmovdqu	416(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 104(%rdi)
	vmovhpd	%xmm1, 104(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 104(%r9)
	vmovhpd	%xmm0, 104(%r11)
	vmovdqu	448(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 112(%rdi)
	vmovhpd	%xmm1, 112(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 112(%r9)
	vmovhpd	%xmm0, 112(%r11)
	vmovdqu	480(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 120(%rdi)
	vmovhpd	%xmm1, 120(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 120(%r9)
	vmovhpd	%xmm0, 120(%r11)
	vmovdqu	512(%rbx), %ymm0
	vmovdqu	%xmm0, %xmm1
	vmovlpd	%xmm1, 128(%rdi)
	vmovhpd	%xmm1, 128(%r8)
	vextracti128	$1, %ymm0, %xmm0
	vmovlpd	%xmm0, 128(%r9)
	vmovhpd	%xmm0, 128(%r11)
	movq	%rsp, %rdi
	movl	$1431655765, 1440(%rsp)
	movl	$858993459, 1444(%rsp)
	movl	$50529027, 1448(%rsp)
	movl	$252645135, 1452(%rsp)
	vpbroadcastd	1440(%rsp), %ymm0
	vpbroadcastd	1444(%rsp), %ymm1
	vpbroadcastd	1448(%rsp), %ymm2
	vpbroadcastd	1452(%rsp), %ymm3
	vmovdqu	(%rdi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rax)
	vmovdqu	%ymm7, 32(%rax)
	vmovdqu	%ymm6, 64(%rax)
	vmovdqu	%ymm4, 96(%rax)
	vmovdqu	32(%rdi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm7, 160(%rax)
	vmovdqu	%ymm6, 192(%rax)
	vmovdqu	%ymm4, 224(%rax)
	vmovdqu	64(%rdi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rax)
	vmovdqu	%ymm7, 288(%rax)
	vmovdqu	%ymm6, 320(%rax)
	vmovdqu	%ymm4, 352(%rax)
	vmovdqu	96(%rdi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rax)
	vmovdqu	%ymm3, 416(%rax)
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	%ymm0, 480(%rax)
	leaq	160(%rsp), %rax
	movl	$1431655765, 1452(%rsp)
	movl	$858993459, 1448(%rsp)
	movl	$50529027, 1444(%rsp)
	movl	$252645135, 1440(%rsp)
	vpbroadcastd	1452(%rsp), %ymm0
	vpbroadcastd	1448(%rsp), %ymm1
	vpbroadcastd	1444(%rsp), %ymm2
	vpbroadcastd	1440(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm7, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm7, 160(%rcx)
	vmovdqu	%ymm6, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm7, 288(%rcx)
	vmovdqu	%ymm6, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	%ymm3, 416(%rcx)
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	leaq	320(%rsp), %rax
	movl	$1431655765, 1440(%rsp)
	movl	$858993459, 1444(%rsp)
	movl	$50529027, 1448(%rsp)
	movl	$252645135, 1452(%rsp)
	vpbroadcastd	1440(%rsp), %ymm0
	vpbroadcastd	1444(%rsp), %ymm1
	vpbroadcastd	1448(%rsp), %ymm2
	vpbroadcastd	1452(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%rdx)
	vmovdqu	%ymm7, 32(%rdx)
	vmovdqu	%ymm6, 64(%rdx)
	vmovdqu	%ymm4, 96(%rdx)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%rdx)
	vmovdqu	%ymm7, 160(%rdx)
	vmovdqu	%ymm6, 192(%rdx)
	vmovdqu	%ymm4, 224(%rdx)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%rdx)
	vmovdqu	%ymm7, 288(%rdx)
	vmovdqu	%ymm6, 320(%rdx)
	vmovdqu	%ymm4, 352(%rdx)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%rdx)
	vmovdqu	%ymm3, 416(%rdx)
	vmovdqu	%ymm2, 448(%rdx)
	vmovdqu	%ymm0, 480(%rdx)
	leaq	480(%rsp), %rax
	movl	$1431655765, 1452(%rsp)
	movl	$858993459, 1448(%rsp)
	movl	$50529027, 1444(%rsp)
	movl	$252645135, 1440(%rsp)
	vpbroadcastd	1452(%rsp), %ymm0
	vpbroadcastd	1448(%rsp), %ymm1
	vpbroadcastd	1444(%rsp), %ymm2
	vpbroadcastd	1440(%rsp), %ymm3
	vmovdqu	(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, (%r15)
	vmovdqu	%ymm7, 32(%r15)
	vmovdqu	%ymm6, 64(%r15)
	vmovdqu	%ymm4, 96(%r15)
	vmovdqu	32(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 128(%r15)
	vmovdqu	%ymm7, 160(%r15)
	vmovdqu	%ymm6, 192(%r15)
	vmovdqu	%ymm4, 224(%r15)
	vmovdqu	64(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm6
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm6, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vextracti128	$1, %ymm6, %xmm6
	vpmovsxbw	%xmm6, %ymm6
	vmovdqu	%xmm4, %xmm7
	vpmovsxbw	%xmm7, %ymm7
	vextracti128	$1, %ymm4, %xmm4
	vpmovsxbw	%xmm4, %ymm4
	vmovdqu	%ymm5, 256(%r15)
	vmovdqu	%ymm7, 288(%r15)
	vmovdqu	%ymm6, 320(%r15)
	vmovdqu	%ymm4, 352(%r15)
	vmovdqu	96(%rax), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm0
	vpaddb	%ymm0, %ymm4, %ymm0
	vpsrlw	$2, %ymm0, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpand	%ymm4, %ymm1, %ymm4
	vpaddb	%ymm1, %ymm0, %ymm0
	vpsubb	%ymm4, %ymm0, %ymm0
	vpsrlw	$4, %ymm0, %ymm1
	vpand	%ymm0, %ymm3, %ymm0
	vpand	%ymm1, %ymm3, %ymm1
	vpsubb	%ymm2, %ymm0, %ymm0
	vpsubb	%ymm2, %ymm1, %ymm1
	vpunpcklbw	%ymm1, %ymm0, %ymm2
	vpunpckhbw	%ymm1, %ymm0, %ymm0
	vmovdqu	%xmm2, %xmm1
	vpmovsxbw	%xmm1, %ymm1
	vextracti128	$1, %ymm2, %xmm2
	vpmovsxbw	%xmm2, %ymm2
	vmovdqu	%xmm0, %xmm3
	vpmovsxbw	%xmm3, %ymm3
	vextracti128	$1, %ymm0, %xmm0
	vpmovsxbw	%xmm0, %ymm0
	vmovdqu	%ymm1, 384(%r15)
	vmovdqu	%ymm3, 416(%r15)
	vmovdqu	%ymm2, 448(%r15)
	vmovdqu	%ymm0, 480(%r15)
	jmp 	*1456(%rsp)
L_poly_frommsg_1$1:
	leaq	glob_data + 1088(%rip), %rdi
	vmovdqu	(%rdi), %ymm0
	vbroadcasti128	glob_data + 2928(%rip), %ymm1
	vbroadcasti128	glob_data + 2912(%rip), %ymm2
	vmovdqu	(%rax), %ymm3
	vpshufd	$0, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, (%rcx)
	vmovdqu	%ymm8, 32(%rcx)
	vmovdqu	%ymm6, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vpshufd	$85, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 64(%rcx)
	vmovdqu	%ymm8, 96(%rcx)
	vmovdqu	%ymm6, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vpshufd	$-86, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm6, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vpshufd	$-1, %ymm3, %ymm3
	vpsllvd	%ymm1, %ymm3, %ymm1
	vpshufb	%ymm2, %ymm1, %ymm1
	vpsllw	$12, %ymm1, %ymm2
	vpsllw	$8, %ymm1, %ymm3
	vpsllw	$4, %ymm1, %ymm4
	vpsraw	$15, %ymm2, %ymm2
	vpsraw	$15, %ymm3, %ymm3
	vpsraw	$15, %ymm4, %ymm4
	vpsraw	$15, %ymm1, %ymm1
	vpand	%ymm0, %ymm2, %ymm2
	vpand	%ymm0, %ymm3, %ymm3
	vpand	%ymm0, %ymm4, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpunpcklqdq	%ymm3, %ymm2, %ymm1
	vpunpckhqdq	%ymm3, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm4, %ymm3
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm3, %ymm1, %ymm4
	vperm2i128	$49, %ymm3, %ymm1, %ymm1
	vperm2i128	$32, %ymm0, %ymm2, %ymm3
	vperm2i128	$49, %ymm0, %ymm2, %ymm0
	vmovdqu	%ymm4, 192(%rcx)
	vmovdqu	%ymm3, 224(%rcx)
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	jmp 	*%r8
L_poly_frommsg$1:
	leaq	glob_data + 1088(%rip), %rax
	vmovdqu	(%rax), %ymm0
	vbroadcasti128	glob_data + 2928(%rip), %ymm1
	vbroadcasti128	glob_data + 2912(%rip), %ymm2
	vmovdqu	(%rcx), %ymm3
	vpshufd	$0, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, (%rdx)
	vmovdqu	%ymm8, 32(%rdx)
	vmovdqu	%ymm6, 256(%rdx)
	vmovdqu	%ymm4, 288(%rdx)
	vpshufd	$85, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 64(%rdx)
	vmovdqu	%ymm8, 96(%rdx)
	vmovdqu	%ymm6, 320(%rdx)
	vmovdqu	%ymm4, 352(%rdx)
	vpshufd	$-86, %ymm3, %ymm4
	vpsllvd	%ymm1, %ymm4, %ymm4
	vpshufb	%ymm2, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm6
	vpsllw	$4, %ymm4, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm6, %ymm5, %ymm8
	vpunpckhqdq	%ymm6, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm7, %ymm6
	vpunpckhqdq	%ymm4, %ymm7, %ymm4
	vperm2i128	$32, %ymm6, %ymm8, %ymm7
	vperm2i128	$49, %ymm6, %ymm8, %ymm6
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm7, 128(%rdx)
	vmovdqu	%ymm8, 160(%rdx)
	vmovdqu	%ymm6, 384(%rdx)
	vmovdqu	%ymm4, 416(%rdx)
	vpshufd	$-1, %ymm3, %ymm3
	vpsllvd	%ymm1, %ymm3, %ymm1
	vpshufb	%ymm2, %ymm1, %ymm1
	vpsllw	$12, %ymm1, %ymm2
	vpsllw	$8, %ymm1, %ymm3
	vpsllw	$4, %ymm1, %ymm4
	vpsraw	$15, %ymm2, %ymm2
	vpsraw	$15, %ymm3, %ymm3
	vpsraw	$15, %ymm4, %ymm4
	vpsraw	$15, %ymm1, %ymm1
	vpand	%ymm0, %ymm2, %ymm2
	vpand	%ymm0, %ymm3, %ymm3
	vpand	%ymm0, %ymm4, %ymm4
	vpand	%ymm0, %ymm1, %ymm0
	vpunpcklqdq	%ymm3, %ymm2, %ymm1
	vpunpckhqdq	%ymm3, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm4, %ymm3
	vpunpckhqdq	%ymm0, %ymm4, %ymm0
	vperm2i128	$32, %ymm3, %ymm1, %ymm4
	vperm2i128	$49, %ymm3, %ymm1, %ymm1
	vperm2i128	$32, %ymm0, %ymm2, %ymm3
	vperm2i128	$49, %ymm0, %ymm2, %ymm0
	vmovdqu	%ymm4, 192(%rdx)
	vmovdqu	%ymm3, 224(%rdx)
	vmovdqu	%ymm1, 448(%rdx)
	vmovdqu	%ymm0, 480(%rdx)
	jmp 	*%rsi
L_poly_frommont$1:
	leaq	glob_data + 1280(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	leaq	glob_data + 1248(%rip), %rcx
	vmovdqu	(%rcx), %ymm1
	leaq	glob_data + 992(%rip), %rcx
	vmovdqu	(%rcx), %ymm2
	vmovdqu	(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, (%rax)
	vmovdqu	32(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 32(%rax)
	vmovdqu	64(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 64(%rax)
	vmovdqu	96(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 96(%rax)
	vmovdqu	128(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 128(%rax)
	vmovdqu	160(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 160(%rax)
	vmovdqu	192(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 192(%rax)
	vmovdqu	224(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 224(%rax)
	vmovdqu	256(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 256(%rax)
	vmovdqu	288(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 288(%rax)
	vmovdqu	320(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 320(%rax)
	vmovdqu	352(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 352(%rax)
	vmovdqu	384(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 384(%rax)
	vmovdqu	416(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 416(%rax)
	vmovdqu	448(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, 448(%rax)
	vmovdqu	480(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm1, %ymm2, %ymm1
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	jmp 	*%rdx
L_poly_frombytes$1:
	leaq	glob_data + 1120(%rip), %r9
	vmovdqu	(%r9), %ymm0
	vmovdqu	(%rdi), %ymm1
	vmovdqu	32(%rdi), %ymm2
	vmovdqu	64(%rdi), %ymm3
	vmovdqu	96(%rdi), %ymm4
	vmovdqu	128(%rdi), %ymm5
	vmovdqu	160(%rdi), %ymm6
	vperm2i128	$32, %ymm4, %ymm1, %ymm7
	vperm2i128	$49, %ymm4, %ymm1, %ymm4
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$49, %ymm5, %ymm2, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm5
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm7, %ymm6
	vpunpckhqdq	%ymm1, %ymm7, %ymm1
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm3, %ymm8, %ymm7
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovsldup	%ymm5, %ymm4
	vpblendd	$-86, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm5, %ymm6, %ymm5
	vmovsldup	%ymm7, %ymm6
	vpblendd	$-86, %ymm6, %ymm1, %ymm6
	vpsrlq	$32, %ymm1, %ymm1
	vpblendd	$-86, %ymm7, %ymm1, %ymm7
	vmovsldup	%ymm3, %ymm1
	vpblendd	$-86, %ymm1, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$-86, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm7, %ymm3
	vpblendw	$-86, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$-86, %ymm7, %ymm4, %ymm4
	vpslld	$16, %ymm1, %ymm7
	vpblendw	$-86, %ymm7, %ymm5, %ymm7
	vpsrld	$16, %ymm5, %ymm5
	vpblendw	$-86, %ymm1, %ymm5, %ymm1
	vpslld	$16, %ymm2, %ymm5
	vpblendw	$-86, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$-86, %ymm2, %ymm6, %ymm2
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm4, %ymm8
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm4, %ymm4
	vpsllw	$8, %ymm7, %ymm8
	vpor	%ymm8, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$12, %ymm1, %ymm8
	vpsllw	$4, %ymm5, %ymm9
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm1, %ymm0, %ymm1
	vpand	%ymm8, %ymm0, %ymm8
	vpsrlw	$8, %ymm5, %ymm5
	vpsllw	$8, %ymm2, %ymm9
	vpor	%ymm9, %ymm5, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$4, %ymm2, %ymm2
	vpand	%ymm2, %ymm0, %ymm2
	vmovdqu	%ymm3, (%r8)
	vmovdqu	%ymm6, 32(%r8)
	vmovdqu	%ymm4, 64(%r8)
	vmovdqu	%ymm7, 96(%r8)
	vmovdqu	%ymm1, 128(%r8)
	vmovdqu	%ymm8, 160(%r8)
	vmovdqu	%ymm5, 192(%r8)
	vmovdqu	%ymm2, 224(%r8)
	vmovdqu	192(%rdi), %ymm1
	vmovdqu	224(%rdi), %ymm2
	vmovdqu	256(%rdi), %ymm3
	vmovdqu	288(%rdi), %ymm4
	vmovdqu	320(%rdi), %ymm5
	vmovdqu	352(%rdi), %ymm6
	vperm2i128	$32, %ymm4, %ymm1, %ymm7
	vperm2i128	$49, %ymm4, %ymm1, %ymm4
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$49, %ymm5, %ymm2, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm5
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm7, %ymm6
	vpunpckhqdq	%ymm1, %ymm7, %ymm1
	vpunpcklqdq	%ymm5, %ymm4, %ymm2
	vpunpckhqdq	%ymm5, %ymm4, %ymm5
	vpunpcklqdq	%ymm3, %ymm8, %ymm7
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovsldup	%ymm5, %ymm4
	vpblendd	$-86, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm5, %ymm6, %ymm5
	vmovsldup	%ymm7, %ymm6
	vpblendd	$-86, %ymm6, %ymm1, %ymm6
	vpsrlq	$32, %ymm1, %ymm1
	vpblendd	$-86, %ymm7, %ymm1, %ymm7
	vmovsldup	%ymm3, %ymm1
	vpblendd	$-86, %ymm1, %ymm2, %ymm1
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$-86, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm7, %ymm3
	vpblendw	$-86, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$-86, %ymm7, %ymm4, %ymm4
	vpslld	$16, %ymm1, %ymm7
	vpblendw	$-86, %ymm7, %ymm5, %ymm7
	vpsrld	$16, %ymm5, %ymm5
	vpblendw	$-86, %ymm1, %ymm5, %ymm1
	vpslld	$16, %ymm2, %ymm5
	vpblendw	$-86, %ymm5, %ymm6, %ymm5
	vpsrld	$16, %ymm6, %ymm6
	vpblendw	$-86, %ymm2, %ymm6, %ymm2
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm4, %ymm8
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm4, %ymm4
	vpsllw	$8, %ymm7, %ymm8
	vpor	%ymm8, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$12, %ymm1, %ymm8
	vpsllw	$4, %ymm5, %ymm9
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm1, %ymm0, %ymm1
	vpand	%ymm8, %ymm0, %ymm8
	vpsrlw	$8, %ymm5, %ymm5
	vpsllw	$8, %ymm2, %ymm9
	vpor	%ymm9, %ymm5, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$4, %ymm2, %ymm2
	vpand	%ymm2, %ymm0, %ymm0
	vmovdqu	%ymm3, 256(%r8)
	vmovdqu	%ymm6, 288(%r8)
	vmovdqu	%ymm4, 320(%r8)
	vmovdqu	%ymm7, 352(%r8)
	vmovdqu	%ymm1, 384(%r8)
	vmovdqu	%ymm8, 416(%r8)
	vmovdqu	%ymm5, 448(%r8)
	vmovdqu	%ymm0, 480(%r8)
	jmp 	*%r10
L_poly_decompress$1:
	leaq	glob_data + 1280(%rip), %rdi
	vmovdqu	(%rdi), %ymm0
	leaq	glob_data + 64(%rip), %rdi
	vmovdqu	(%rdi), %ymm1
	vpbroadcastd	glob_data + 3172(%rip), %ymm2
	vpbroadcastd	glob_data + 3168(%rip), %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	vbroadcasti128	(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, (%rsi)
	vbroadcasti128	8(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 32(%rsi)
	vbroadcasti128	16(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 64(%rsi)
	vbroadcasti128	24(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 96(%rsi)
	vbroadcasti128	32(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 128(%rsi)
	vbroadcasti128	40(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 160(%rsi)
	vbroadcasti128	48(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 192(%rsi)
	vbroadcasti128	56(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 224(%rsi)
	vbroadcasti128	64(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 256(%rsi)
	vbroadcasti128	72(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 288(%rsi)
	vbroadcasti128	80(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 320(%rsi)
	vbroadcasti128	88(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 352(%rsi)
	vbroadcasti128	96(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 384(%rsi)
	vbroadcasti128	104(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 416(%rsi)
	vbroadcasti128	112(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpmullw	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 448(%rsi)
	vbroadcasti128	120(%rcx), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm1
	vpand	%ymm2, %ymm1, %ymm1
	vpmullw	%ymm3, %ymm1, %ymm1
	vpmulhrsw	%ymm0, %ymm1, %ymm0
	vmovdqu	%ymm0, 480(%rsi)
	jmp 	*%r8
L_poly_compress_1$1:
	leaq	L_poly_compress_1$2(%rip), %rsi
	jmp 	L_poly_csubq$1
L_poly_compress_1$2:
	leaq	glob_data + 1216(%rip), %rdx
	vmovdqu	(%rdx), %ymm0
	vpbroadcastw	glob_data + 3186(%rip), %ymm1
	vpbroadcastw	glob_data + 3184(%rip), %ymm2
	vpbroadcastw	glob_data + 3182(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm4
	vmovdqu	(%rcx), %ymm5
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, (%rax)
	vmovdqu	128(%rcx), %ymm5
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm7
	vmovdqu	224(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	256(%rcx), %ymm5
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	384(%rcx), %ymm5
	vmovdqu	416(%rcx), %ymm6
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm0, %ymm0
	vpand	%ymm2, %ymm5, %ymm1
	vpand	%ymm2, %ymm6, %ymm5
	vpand	%ymm2, %ymm7, %ymm6
	vpand	%ymm2, %ymm0, %ymm0
	vpackuswb	%ymm5, %ymm1, %ymm1
	vpackuswb	%ymm0, %ymm6, %ymm0
	vpmaddubsw	%ymm3, %ymm1, %ymm1
	vpmaddubsw	%ymm3, %ymm0, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm0
	vpermd	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	jmp 	*%rdi
L_poly_compress$1:
	leaq	L_poly_compress$2(%rip), %rsi
	jmp 	L_poly_csubq$1
L_poly_compress$2:
	leaq	glob_data + 1216(%rip), %rdx
	vmovdqu	(%rdx), %ymm0
	vpbroadcastw	glob_data + 3186(%rip), %ymm1
	vpbroadcastw	glob_data + 3184(%rip), %ymm2
	vpbroadcastw	glob_data + 3182(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm4
	vmovdqu	(%rcx), %ymm5
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, (%rax)
	vmovdqu	128(%rcx), %ymm5
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm7
	vmovdqu	224(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	256(%rcx), %ymm5
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm8, %ymm8
	vpand	%ymm2, %ymm5, %ymm5
	vpand	%ymm2, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm7
	vpand	%ymm2, %ymm8, %ymm8
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpackuswb	%ymm8, %ymm7, %ymm6
	vpmaddubsw	%ymm3, %ymm5, %ymm5
	vpmaddubsw	%ymm3, %ymm6, %ymm6
	vpackuswb	%ymm6, %ymm5, %ymm5
	vpermd	%ymm5, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	384(%rcx), %ymm5
	vmovdqu	416(%rcx), %ymm6
	vmovdqu	448(%rcx), %ymm7
	vmovdqu	480(%rcx), %ymm8
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm7, %ymm7
	vpmulhw	%ymm0, %ymm8, %ymm0
	vpmulhrsw	%ymm1, %ymm5, %ymm5
	vpmulhrsw	%ymm1, %ymm6, %ymm6
	vpmulhrsw	%ymm1, %ymm7, %ymm7
	vpmulhrsw	%ymm1, %ymm0, %ymm0
	vpand	%ymm2, %ymm5, %ymm1
	vpand	%ymm2, %ymm6, %ymm5
	vpand	%ymm2, %ymm7, %ymm6
	vpand	%ymm2, %ymm0, %ymm0
	vpackuswb	%ymm5, %ymm1, %ymm1
	vpackuswb	%ymm0, %ymm6, %ymm0
	vpmaddubsw	%ymm3, %ymm1, %ymm1
	vpmaddubsw	%ymm3, %ymm0, %ymm0
	vpackuswb	%ymm0, %ymm1, %ymm0
	vpermd	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	jmp 	*%rdi
L_poly_basemul$1:
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	glob_data + 1248(%rip), %ymm1
	vmovdqu	glob_data + 2384(%rip), %ymm2
	vmovdqu	glob_data + 2416(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vmovdqu	32(%rsi), %ymm5
	vmovdqu	(%rdi), %ymm6
	vmovdqu	32(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$-86, %ymm9, %ymm7, %ymm6
	vpblendw	$-86, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$-86, %ymm9, %ymm5, %ymm8
	vpblendw	$-86, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	64(%rsi), %ymm4
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	64(%rdi), %ymm6
	vmovdqu	96(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$-86, %ymm5, %ymm7, %ymm4
	vpblendw	$-86, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$-86, %ymm5, %ymm2, %ymm7
	vpblendw	$-86, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 64(%rcx)
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	glob_data + 2448(%rip), %ymm2
	vmovdqu	glob_data + 2480(%rip), %ymm3
	vmovdqu	128(%rsi), %ymm4
	vmovdqu	160(%rsi), %ymm5
	vmovdqu	128(%rdi), %ymm6
	vmovdqu	160(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$-86, %ymm9, %ymm7, %ymm6
	vpblendw	$-86, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$-86, %ymm9, %ymm5, %ymm8
	vpblendw	$-86, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	192(%rsi), %ymm4
	vmovdqu	224(%rsi), %ymm5
	vmovdqu	192(%rdi), %ymm6
	vmovdqu	224(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$-86, %ymm5, %ymm7, %ymm4
	vpblendw	$-86, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$-86, %ymm5, %ymm2, %ymm7
	vpblendw	$-86, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 192(%rcx)
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	glob_data + 2776(%rip), %ymm2
	vmovdqu	glob_data + 2808(%rip), %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vmovdqu	256(%rdi), %ymm6
	vmovdqu	288(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$-86, %ymm9, %ymm7, %ymm6
	vpblendw	$-86, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$-86, %ymm9, %ymm5, %ymm8
	vpblendw	$-86, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm5
	vmovdqu	320(%rdi), %ymm6
	vmovdqu	352(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$-86, %ymm5, %ymm7, %ymm4
	vpblendw	$-86, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$-86, %ymm5, %ymm2, %ymm7
	vpblendw	$-86, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm4
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm3, 320(%rcx)
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	glob_data + 2840(%rip), %ymm2
	vmovdqu	glob_data + 2872(%rip), %ymm3
	vmovdqu	384(%rsi), %ymm4
	vmovdqu	416(%rsi), %ymm5
	vmovdqu	384(%rdi), %ymm6
	vmovdqu	416(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$-86, %ymm9, %ymm7, %ymm6
	vpblendw	$-86, %ymm9, %ymm8, %ymm10
	vpackusdw	%ymm10, %ymm6, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$-86, %ymm9, %ymm5, %ymm8
	vpblendw	$-86, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm8, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vmovdqu	448(%rsi), %ymm4
	vmovdqu	480(%rsi), %ymm5
	vmovdqu	448(%rdi), %ymm6
	vmovdqu	480(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm2
	vpmulhw	%ymm5, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm8
	vpmulhw	%ymm6, %ymm4, %ymm9
	vpunpcklwd	%ymm9, %ymm8, %ymm3
	vpunpckhwd	%ymm9, %ymm8, %ymm8
	vpmullw	%ymm7, %ymm4, %ymm9
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpunpcklwd	%ymm10, %ymm9, %ymm4
	vpunpckhwd	%ymm10, %ymm9, %ymm9
	vpmullw	%ymm6, %ymm5, %ymm10
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm10, %ymm5
	vpunpckhwd	%ymm6, %ymm10, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm10
	vpmulhw	%ymm7, %ymm2, %ymm2
	vpunpcklwd	%ymm2, %ymm10, %ymm7
	vpunpckhwd	%ymm2, %ymm10, %ymm2
	vpsubd	%ymm7, %ymm3, %ymm7
	vpsubd	%ymm2, %ymm8, %ymm8
	vpaddd	%ymm4, %ymm5, %ymm2
	vpaddd	%ymm9, %ymm6, %ymm3
	vpxor	%ymm5, %ymm5, %ymm5
	vpblendw	$-86, %ymm5, %ymm7, %ymm4
	vpblendw	$-86, %ymm5, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm4, %ymm4
	vpsrld	$16, %ymm7, %ymm6
	vpsrld	$16, %ymm8, %ymm7
	vpackusdw	%ymm7, %ymm6, %ymm6
	vpblendw	$-86, %ymm5, %ymm2, %ymm7
	vpblendw	$-86, %ymm5, %ymm3, %ymm5
	vpackusdw	%ymm5, %ymm7, %ymm5
	vpsrld	$16, %ymm2, %ymm2
	vpsrld	$16, %ymm3, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm1, %ymm4, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm3
	vpmullw	%ymm1, %ymm5, %ymm1
	vpmulhw	%ymm0, %ymm1, %ymm0
	vpsubw	%ymm0, %ymm2, %ymm0
	vmovdqu	%ymm3, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	jmp 	*%r8
L_poly_csubq$1:
	vmovdqu	glob_data + 1280(%rip), %ymm0
	vmovdqu	(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	32(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32(%rcx)
	vmovdqu	64(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 64(%rcx)
	vmovdqu	96(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 96(%rcx)
	vmovdqu	128(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	160(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	192(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 192(%rcx)
	vmovdqu	224(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 224(%rcx)
	vmovdqu	256(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 256(%rcx)
	vmovdqu	288(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 288(%rcx)
	vmovdqu	320(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 320(%rcx)
	vmovdqu	352(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 352(%rcx)
	vmovdqu	384(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	416(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 416(%rcx)
	vmovdqu	448(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	480(%rcx), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm2
	vpand	%ymm0, %ymm2, %ymm0
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	jmp 	*%rsi
L_poly_add2$1:
	vmovdqu	(%rcx), %ymm0
	vmovdqu	(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	32(%rcx), %ymm0
	vmovdqu	32(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rcx)
	vmovdqu	64(%rcx), %ymm0
	vmovdqu	64(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rcx)
	vmovdqu	96(%rcx), %ymm0
	vmovdqu	96(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rcx)
	vmovdqu	128(%rcx), %ymm0
	vmovdqu	128(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	160(%rcx), %ymm0
	vmovdqu	160(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rcx)
	vmovdqu	192(%rcx), %ymm0
	vmovdqu	192(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rcx)
	vmovdqu	224(%rcx), %ymm0
	vmovdqu	224(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rcx)
	vmovdqu	256(%rcx), %ymm0
	vmovdqu	256(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	288(%rcx), %ymm0
	vmovdqu	288(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rcx)
	vmovdqu	320(%rcx), %ymm0
	vmovdqu	320(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	352(%rcx), %ymm0
	vmovdqu	352(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rcx)
	vmovdqu	384(%rcx), %ymm0
	vmovdqu	384(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rcx)
	vmovdqu	416(%rcx), %ymm0
	vmovdqu	416(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rcx)
	vmovdqu	448(%rcx), %ymm0
	vmovdqu	448(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rcx)
	vmovdqu	480(%rcx), %ymm0
	vmovdqu	480(%rsi), %ymm1
	vpaddw	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rcx)
	jmp 	*%rdi
L_shake256_absorb4x_33$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 544(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 576(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 608(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 640(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 672(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 704(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	movq	(%r11), %r14
	xorq	%r14, (%r10)
	movq	(%rbx), %r14
	xorq	%r14, 8(%r10)
	movq	(%rbp), %r14
	xorq	%r14, 16(%r10)
	movq	(%r12), %r14
	xorq	%r14, 24(%r10)
	movq	8(%r11), %r14
	xorq	%r14, 32(%r10)
	movq	8(%rbx), %r14
	xorq	%r14, 40(%r10)
	movq	8(%rbp), %r14
	xorq	%r14, 48(%r10)
	movq	8(%r12), %r14
	xorq	%r14, 56(%r10)
	movq	16(%r11), %r14
	xorq	%r14, 64(%r10)
	movq	16(%rbx), %r14
	xorq	%r14, 72(%r10)
	movq	16(%rbp), %r14
	xorq	%r14, 80(%r10)
	movq	16(%r12), %r14
	xorq	%r14, 88(%r10)
	movq	24(%r11), %r14
	xorq	%r14, 96(%r10)
	movq	24(%rbx), %r14
	xorq	%r14, 104(%r10)
	movq	24(%rbp), %r14
	xorq	%r14, 112(%r10)
	movq	24(%r12), %r14
	xorq	%r14, 120(%r10)
	movb	32(%r11), %r11b
	xorb	%r11b, 128(%r10)
	xorb	$31, 129(%r10)
	movb	32(%rbx), %r11b
	xorb	%r11b, 136(%r10)
	xorb	$31, 137(%r10)
	movb	32(%rbp), %r11b
	xorb	%r11b, 144(%r10)
	xorb	$31, 145(%r10)
	movb	32(%r12), %r11b
	xorb	%r11b, 152(%r10)
	xorb	$31, 153(%r10)
	vmovdqu	glob_data + 960(%rip), %ymm0
	vmovdqu	512(%r10), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%r10)
	jmp 	*%r13
L_shake128_absorb4x_34$1:
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 384(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 416(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 448(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 480(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 512(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 544(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 576(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 608(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 640(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 672(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 704(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 736(%rax)
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rax)
	movq	(%rcx), %r9
	xorq	%r9, (%rax)
	movq	(%rdx), %r9
	xorq	%r9, 8(%rax)
	movq	(%rsi), %r9
	xorq	%r9, 16(%rax)
	movq	(%rdi), %r9
	xorq	%r9, 24(%rax)
	movq	8(%rcx), %r9
	xorq	%r9, 32(%rax)
	movq	8(%rdx), %r9
	xorq	%r9, 40(%rax)
	movq	8(%rsi), %r9
	xorq	%r9, 48(%rax)
	movq	8(%rdi), %r9
	xorq	%r9, 56(%rax)
	movq	16(%rcx), %r9
	xorq	%r9, 64(%rax)
	movq	16(%rdx), %r9
	xorq	%r9, 72(%rax)
	movq	16(%rsi), %r9
	xorq	%r9, 80(%rax)
	movq	16(%rdi), %r9
	xorq	%r9, 88(%rax)
	movq	24(%rcx), %r9
	xorq	%r9, 96(%rax)
	movq	24(%rdx), %r9
	xorq	%r9, 104(%rax)
	movq	24(%rsi), %r9
	xorq	%r9, 112(%rax)
	movq	24(%rdi), %r9
	xorq	%r9, 120(%rax)
	movw	32(%rcx), %cx
	xorw	%cx, 128(%rax)
	xorb	$31, 130(%rax)
	movw	32(%rdx), %cx
	xorw	%cx, 136(%rax)
	xorb	$31, 138(%rax)
	movw	32(%rsi), %cx
	xorw	%cx, 144(%rax)
	xorb	$31, 146(%rax)
	movw	32(%rdi), %cx
	xorw	%cx, 152(%rax)
	xorb	$31, 154(%rax)
	vmovdqu	glob_data + 960(%rip), %ymm0
	vmovdqu	640(%rax), %ymm1
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 640(%rax)
	jmp 	*%r8
L_KeccakF1600_StatePermute4x$1:
	vmovdqu	640(%rbx), %ymm0
	vpxor	480(%rbx), %ymm0, %ymm0
	vpxor	320(%rbx), %ymm0, %ymm0
	vpxor	160(%rbx), %ymm0, %ymm0
	vpxor	(%rbx), %ymm0, %ymm4
	vmovdqu	672(%rbx), %ymm0
	vpxor	512(%rbx), %ymm0, %ymm0
	vpxor	352(%rbx), %ymm0, %ymm0
	vpxor	192(%rbx), %ymm0, %ymm0
	vpxor	32(%rbx), %ymm0, %ymm2
	vmovdqu	704(%rbx), %ymm0
	vpxor	544(%rbx), %ymm0, %ymm0
	vpxor	384(%rbx), %ymm0, %ymm0
	vpxor	224(%rbx), %ymm0, %ymm0
	vpxor	64(%rbx), %ymm0, %ymm3
	vmovdqu	736(%rbx), %ymm0
	vpxor	576(%rbx), %ymm0, %ymm0
	vpxor	416(%rbx), %ymm0, %ymm0
	vpxor	256(%rbx), %ymm0, %ymm0
	vpxor	96(%rbx), %ymm0, %ymm5
	vmovdqu	768(%rbx), %ymm0
	vpxor	608(%rbx), %ymm0, %ymm0
	vpxor	448(%rbx), %ymm0, %ymm0
	vpxor	288(%rbx), %ymm0, %ymm0
	vpxor	128(%rbx), %ymm0, %ymm6
	movq	%rsp, %r10
	vpsllq	$1, %ymm2, %ymm0
	vpsrlq	$63, %ymm2, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm6, %ymm0
	vpsllq	$1, %ymm3, %ymm1
	vpsrlq	$63, %ymm3, %ymm7
	vpor	%ymm7, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm5, %ymm7
	vpsrlq	$63, %ymm5, %ymm8
	vpor	%ymm8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm2, %ymm2
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vpxor	%ymm6, %ymm3, %ymm3
	vpsllq	$1, %ymm4, %ymm6
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 128(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 160(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 192(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 224(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 256(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 288(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 320(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 352(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 384(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 416(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 448(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 480(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 512(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 544(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 576(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 608(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 640(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 672(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 704(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 736(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 768(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 800(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%r10)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%r10)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%rbx)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%r10)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%r10), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%r10)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%r10)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%r10), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%r10)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%r10)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%r10)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%r10), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r10)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%r10), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%r10), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%r10)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%rbx)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%rbx)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%r10)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%r10)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%r10), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%rbx)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%r10), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%r10)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%rbx)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%r10), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%rbx)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%rbx)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%rbx)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%r10), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%rbx)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%rbx)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%r10)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%rbx)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%rbx), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%rbx)
	vmovdqu	192(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%rbx)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 832(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%r10)
	vmovdqu	576(%rbx), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 576(%rbx)
	vpsllq	$21, %ymm9, %ymm10
	vpsrlq	$43, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm10
	vpandn	%ymm10, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%r10)
	vmovdqu	768(%rbx), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vmovdqu	%ymm11, 768(%rbx)
	vpsllq	$14, %ymm11, %ymm12
	vpsrlq	$50, %ymm11, %ymm11
	vpor	%ymm11, %ymm12, %ymm13
	vpandn	%ymm13, %ymm10, %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vmovdqu	%ymm11, 64(%r10)
	vpandn	%ymm5, %ymm13, %ymm7
	vpxor	%ymm10, %ymm7, %ymm12
	vmovdqu	%ymm12, 96(%r10)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm13, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vmovdqu	96(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm6
	vmovdqu	%ymm6, 96(%rbx)
	vpsllq	$28, %ymm6, %ymm7
	vpsrlq	$36, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	288(%rbx), %ymm7
	vpxor	%ymm4, %ymm7, %ymm7
	vmovdqu	%ymm7, 288(%rbx)
	vpsllq	$20, %ymm7, %ymm10
	vpsrlq	$44, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	320(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rbx)
	vpsllq	$3, %ymm10, %ymm13
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 160(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	512(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rbx)
	vpsllq	$45, %ymm10, %ymm14
	vpsrlq	$19, %ymm10, %ymm10
	vpor	%ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 192(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	704(%rbx), %ymm10
	vpxor	%ymm2, %ymm10, %ymm15
	vmovdqu	%ymm15, 704(%rbx)
	vpsllq	$61, %ymm15, %ymm10
	vpsrlq	$3, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 224(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 256(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	32(%rbx), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 32(%rbx)
	vpsllq	$1, %ymm6, %ymm7
	vpsrlq	$63, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	224(%rbx), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpsllq	$6, %ymm7, %ymm10
	vpsrlq	$58, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	416(%rbx), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rbx)
	vpsllq	$25, %ymm10, %ymm13
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm13
	vpandn	%ymm13, %ymm7, %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%r10)
	vpxor	%ymm10, %ymm8, %ymm8
	vmovdqu	608(%rbx), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vmovdqu	%ymm10, 608(%rbx)
	vpshufb	glob_data + 896(%rip), %ymm10, %ymm14
	vpandn	%ymm14, %ymm13, %ymm10
	vpxor	%ymm7, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%r10)
	vpxor	%ymm10, %ymm9, %ymm9
	vmovdqu	640(%rbx), %ymm10
	vpxor	%ymm0, %ymm10, %ymm15
	vmovdqu	%ymm15, 640(%rbx)
	vpsllq	$18, %ymm15, %ymm10
	vpsrlq	$46, %ymm15, %ymm15
	vpor	%ymm15, %ymm10, %ymm10
	vpandn	%ymm10, %ymm14, %ymm15
	vpxor	%ymm13, %ymm15, %ymm13
	vmovdqu	%ymm13, 384(%r10)
	vpxor	%ymm13, %ymm11, %ymm11
	vpandn	%ymm6, %ymm10, %ymm13
	vpxor	%ymm14, %ymm13, %ymm13
	vmovdqu	%ymm13, 416(%r10)
	vpxor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%ymm6, 448(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	128(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 128(%rbx)
	vpsllq	$27, %ymm6, %ymm7
	vpsrlq	$37, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	160(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 160(%rbx)
	vpsllq	$36, %ymm7, %ymm10
	vpsrlq	$28, %ymm7, %ymm7
	vpor	%ymm7, %ymm10, %ymm7
	vmovdqu	352(%rbx), %ymm10
	vpxor	%ymm1, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rbx)
	vpsllq	$10, %ymm10, %ymm13
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm10, %ymm13, %ymm10
	vpandn	%ymm10, %ymm7, %ymm13
	vpxor	%ymm6, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r10)
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	544(%rbx), %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vmovdqu	%ymm13, 544(%rbx)
	vpsllq	$15, %ymm13, %ymm14
	vpsrlq	$49, %ymm13, %ymm13
	vpor	%ymm13, %ymm14, %ymm13
	vpandn	%ymm13, %ymm10, %ymm14
	vpxor	%ymm7, %ymm14, %ymm14
	vmovdqu	%ymm14, 512(%r10)
	vpxor	%ymm14, %ymm9, %ymm9
	vmovdqu	736(%rbx), %ymm14
	vpxor	%ymm3, %ymm14, %ymm14
	vmovdqu	%ymm14, 736(%rbx)
	vpshufb	glob_data + 928(%rip), %ymm14, %ymm14
	vpandn	%ymm14, %ymm13, %ymm15
	vpxor	%ymm10, %ymm15, %ymm10
	vmovdqu	%ymm10, 544(%r10)
	vpxor	%ymm10, %ymm11, %ymm10
	vpandn	%ymm6, %ymm14, %ymm11
	vpxor	%ymm13, %ymm11, %ymm11
	vmovdqu	%ymm11, 576(%r10)
	vpxor	%ymm11, %ymm12, %ymm11
	vpandn	%ymm7, %ymm6, %ymm6
	vpxor	%ymm14, %ymm6, %ymm6
	vmovdqu	%ymm6, 608(%r10)
	vpxor	%ymm6, %ymm5, %ymm5
	vmovdqu	64(%rbx), %ymm6
	vpxor	%ymm2, %ymm6, %ymm2
	vmovdqu	%ymm2, 64(%rbx)
	vpsllq	$62, %ymm2, %ymm6
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm6, %ymm2
	vmovdqu	256(%rbx), %ymm6
	vpxor	%ymm3, %ymm6, %ymm3
	vmovdqu	%ymm3, 256(%rbx)
	vpsllq	$55, %ymm3, %ymm6
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm6, %ymm3
	vmovdqu	448(%rbx), %ymm6
	vpxor	%ymm4, %ymm6, %ymm4
	vmovdqu	%ymm4, 448(%rbx)
	vpsllq	$39, %ymm4, %ymm6
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm6, %ymm6
	vpandn	%ymm6, %ymm3, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vmovdqu	%ymm4, 640(%r10)
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	480(%rbx), %ymm7
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 480(%rbx)
	vpsllq	$41, %ymm0, %ymm7
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm7, %ymm0
	vpandn	%ymm0, %ymm6, %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 672(%r10)
	vpxor	%ymm7, %ymm9, %ymm7
	vmovdqu	672(%rbx), %ymm8
	vpxor	%ymm1, %ymm8, %ymm1
	vmovdqu	%ymm1, 672(%rbx)
	vpsllq	$2, %ymm1, %ymm8
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm8, %ymm1
	vpandn	%ymm1, %ymm0, %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vmovdqu	%ymm6, 704(%r10)
	vpxor	%ymm6, %ymm10, %ymm6
	vpandn	%ymm2, %ymm1, %ymm8
	vpxor	%ymm0, %ymm8, %ymm0
	vmovdqu	%ymm0, 736(%r10)
	vpxor	%ymm0, %ymm11, %ymm8
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%r10)
	vpxor	%ymm0, %ymm5, %ymm3
	movq	%rsp, %r10
	vpsllq	$1, %ymm7, %ymm0
	vpsrlq	$63, %ymm7, %ymm1
	vpor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm0
	vpsllq	$1, %ymm6, %ymm1
	vpsrlq	$63, %ymm6, %ymm2
	vpor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm1, %ymm4, %ymm1
	vpsllq	$1, %ymm8, %ymm2
	vpsrlq	$63, %ymm8, %ymm5
	vpor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm2, %ymm7, %ymm2
	vpsllq	$1, %ymm3, %ymm5
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpsllq	$1, %ymm4, %ymm5
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm5, (%r10)
	vmovdqu	192(%r10), %ymm6
	vpxor	%ymm1, %ymm6, %ymm6
	vmovdqu	%ymm6, 192(%r10)
	vpsllq	$44, %ymm6, %ymm7
	vpsrlq	$20, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	384(%r10), %ymm7
	vpxor	%ymm2, %ymm7, %ymm7
	vmovdqu	%ymm7, 384(%r10)
	vpsllq	$43, %ymm7, %ymm8
	vpsrlq	$21, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vpxor	glob_data + 864(%rip), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rbx)
	vmovdqu	576(%r10), %ymm8
	vpxor	%ymm3, %ymm8, %ymm8
	vmovdqu	%ymm8, 576(%r10)
	vpsllq	$21, %ymm8, %ymm9
	vpsrlq	$43, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 32(%rbx)
	vmovdqu	768(%r10), %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vmovdqu	%ymm9, 768(%r10)
	vpsllq	$14, %ymm9, %ymm10
	vpsrlq	$50, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 64(%rbx)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 96(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rbx)
	vmovdqu	96(%r10), %ymm5
	vpxor	%ymm3, %ymm5, %ymm5
	vmovdqu	%ymm5, 96(%r10)
	vpsllq	$28, %ymm5, %ymm6
	vpsrlq	$36, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	288(%r10), %ymm6
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm6, 288(%r10)
	vpsllq	$20, %ymm6, %ymm7
	vpsrlq	$44, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	320(%r10), %ymm7
	vpxor	%ymm0, %ymm7, %ymm7
	vmovdqu	%ymm7, 320(%r10)
	vpsllq	$3, %ymm7, %ymm8
	vpsrlq	$61, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 160(%rbx)
	vmovdqu	512(%r10), %ymm8
	vpxor	%ymm1, %ymm8, %ymm8
	vmovdqu	%ymm8, 512(%r10)
	vpsllq	$45, %ymm8, %ymm9
	vpsrlq	$19, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 192(%rbx)
	vmovdqu	704(%r10), %ymm9
	vpxor	%ymm2, %ymm9, %ymm9
	vmovdqu	%ymm9, 704(%r10)
	vpsllq	$61, %ymm9, %ymm10
	vpsrlq	$3, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 224(%rbx)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 256(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 288(%rbx)
	vmovdqu	32(%r10), %ymm5
	vpxor	%ymm1, %ymm5, %ymm5
	vmovdqu	%ymm5, 32(%r10)
	vpsllq	$1, %ymm5, %ymm6
	vpsrlq	$63, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	224(%r10), %ymm6
	vpxor	%ymm2, %ymm6, %ymm6
	vmovdqu	%ymm6, 224(%r10)
	vpsllq	$6, %ymm6, %ymm7
	vpsrlq	$58, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	416(%r10), %ymm7
	vpxor	%ymm3, %ymm7, %ymm7
	vmovdqu	%ymm7, 416(%r10)
	vpsllq	$25, %ymm7, %ymm8
	vpsrlq	$39, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 320(%rbx)
	vmovdqu	608(%r10), %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vmovdqu	%ymm8, 608(%r10)
	vpshufb	glob_data + 896(%rip), %ymm8, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 352(%rbx)
	vmovdqu	640(%r10), %ymm9
	vpxor	%ymm0, %ymm9, %ymm9
	vmovdqu	%ymm9, 640(%r10)
	vpsllq	$18, %ymm9, %ymm10
	vpsrlq	$46, %ymm9, %ymm9
	vpor	%ymm9, %ymm10, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 384(%rbx)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 416(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 448(%rbx)
	vmovdqu	128(%r10), %ymm5
	vpxor	%ymm4, %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%r10)
	vpsllq	$27, %ymm5, %ymm6
	vpsrlq	$37, %ymm5, %ymm5
	vpor	%ymm5, %ymm6, %ymm5
	vmovdqu	160(%r10), %ymm6
	vpxor	%ymm0, %ymm6, %ymm6
	vmovdqu	%ymm6, 160(%r10)
	vpsllq	$36, %ymm6, %ymm7
	vpsrlq	$28, %ymm6, %ymm6
	vpor	%ymm6, %ymm7, %ymm6
	vmovdqu	352(%r10), %ymm7
	vpxor	%ymm1, %ymm7, %ymm7
	vmovdqu	%ymm7, 352(%r10)
	vpsllq	$10, %ymm7, %ymm8
	vpsrlq	$54, %ymm7, %ymm7
	vpor	%ymm7, %ymm8, %ymm7
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 480(%rbx)
	vmovdqu	544(%r10), %ymm8
	vpxor	%ymm2, %ymm8, %ymm8
	vmovdqu	%ymm8, 544(%r10)
	vpsllq	$15, %ymm8, %ymm9
	vpsrlq	$49, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm8
	vpandn	%ymm8, %ymm7, %ymm9
	vpxor	%ymm6, %ymm9, %ymm9
	vmovdqu	%ymm9, 512(%rbx)
	vmovdqu	736(%r10), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vmovdqu	%ymm9, 736(%r10)
	vpshufb	glob_data + 928(%rip), %ymm9, %ymm9
	vpandn	%ymm9, %ymm8, %ymm10
	vpxor	%ymm7, %ymm10, %ymm7
	vmovdqu	%ymm7, 544(%rbx)
	vpandn	%ymm5, %ymm9, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	%ymm7, 576(%rbx)
	vpandn	%ymm6, %ymm5, %ymm5
	vpxor	%ymm9, %ymm5, %ymm5
	vmovdqu	%ymm5, 608(%rbx)
	vmovdqu	64(%r10), %ymm5
	vpxor	%ymm2, %ymm5, %ymm2
	vmovdqu	%ymm2, 64(%r10)
	vpsllq	$62, %ymm2, %ymm5
	vpsrlq	$2, %ymm2, %ymm2
	vpor	%ymm2, %ymm5, %ymm2
	vmovdqu	256(%r10), %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vmovdqu	%ymm3, 256(%r10)
	vpsllq	$55, %ymm3, %ymm5
	vpsrlq	$9, %ymm3, %ymm3
	vpor	%ymm3, %ymm5, %ymm3
	vmovdqu	448(%r10), %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 448(%r10)
	vpsllq	$39, %ymm4, %ymm5
	vpsrlq	$25, %ymm4, %ymm4
	vpor	%ymm4, %ymm5, %ymm4
	vpandn	%ymm4, %ymm3, %ymm5
	vpxor	%ymm2, %ymm5, %ymm5
	vmovdqu	%ymm5, 640(%rbx)
	vmovdqu	480(%r10), %ymm5
	vpxor	%ymm0, %ymm5, %ymm0
	vmovdqu	%ymm0, 480(%r10)
	vpsllq	$41, %ymm0, %ymm5
	vpsrlq	$23, %ymm0, %ymm0
	vpor	%ymm0, %ymm5, %ymm0
	vpandn	%ymm0, %ymm4, %ymm5
	vpxor	%ymm3, %ymm5, %ymm5
	vmovdqu	%ymm5, 672(%rbx)
	vmovdqu	672(%r10), %ymm5
	vpxor	%ymm1, %ymm5, %ymm1
	vpsllq	$2, %ymm1, %ymm5
	vpsrlq	$62, %ymm1, %ymm1
	vpor	%ymm1, %ymm5, %ymm1
	vpandn	%ymm1, %ymm0, %ymm5
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 704(%rbx)
	vpandn	%ymm2, %ymm1, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vmovdqu	%ymm0, 736(%rbx)
	vpandn	%ymm3, %ymm2, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 768(%rbx)
	jmp 	*%rbp
L_shake128_squeezeblock$1:
	movq	%rcx, (%rsp)
	leaq	-216(%rsp), %rsp
	leaq	L_shake128_squeezeblock$2(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake128_squeezeblock$2:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%rax), %rdx
	movq	%rdx, 24(%rcx)
	movq	32(%rax), %rdx
	movq	%rdx, 32(%rcx)
	movq	40(%rax), %rdx
	movq	%rdx, 40(%rcx)
	movq	48(%rax), %rdx
	movq	%rdx, 48(%rcx)
	movq	56(%rax), %rdx
	movq	%rdx, 56(%rcx)
	movq	64(%rax), %rdx
	movq	%rdx, 64(%rcx)
	movq	72(%rax), %rdx
	movq	%rdx, 72(%rcx)
	movq	80(%rax), %rdx
	movq	%rdx, 80(%rcx)
	movq	88(%rax), %rdx
	movq	%rdx, 88(%rcx)
	movq	96(%rax), %rdx
	movq	%rdx, 96(%rcx)
	movq	104(%rax), %rdx
	movq	%rdx, 104(%rcx)
	movq	112(%rax), %rdx
	movq	%rdx, 112(%rcx)
	movq	120(%rax), %rdx
	movq	%rdx, 120(%rcx)
	movq	128(%rax), %rdx
	movq	%rdx, 128(%rcx)
	movq	136(%rax), %rdx
	movq	%rdx, 136(%rcx)
	movq	144(%rax), %rdx
	movq	%rdx, 144(%rcx)
	movq	152(%rax), %rdx
	movq	%rdx, 152(%rcx)
	movq	160(%rax), %rax
	movq	%rax, 160(%rcx)
	jmp 	*8(%rsp)
L_shake128_absorb34$1:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0, 104(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	movq	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	(%rcx), %rdx
	xorq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	xorq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	xorq	%rdx, 16(%rax)
	movq	24(%rcx), %rdx
	xorq	%rdx, 24(%rax)
	movw	32(%rcx), %cx
	xorw	%cx, 32(%rax)
	xorb	$31, 34(%rax)
	xorb	$-128, 167(%rax)
	jmp 	*%rsi
L_sha3_512_32$1:
	leaq	8(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 8(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 16(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 24(%rsp)
	movq	24(%rcx), %rcx
	xorq	%rcx, 32(%rsp)
	xorb	$6, 40(%rsp)
	xorb	$-128, 79(%rsp)
	movq	%rax, (%rsp)
	leaq	8(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_512_32$2(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_512_32$2:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rax)
	jmp 	*208(%rsp)
L_sha3_512_64$1:
	leaq	8(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	(%rcx), %rdx
	xorq	%rdx, 8(%rsp)
	movq	8(%rcx), %rdx
	xorq	%rdx, 16(%rsp)
	movq	16(%rcx), %rdx
	xorq	%rdx, 24(%rsp)
	movq	24(%rcx), %rdx
	xorq	%rdx, 32(%rsp)
	movq	32(%rcx), %rdx
	xorq	%rdx, 40(%rsp)
	movq	40(%rcx), %rdx
	xorq	%rdx, 48(%rsp)
	movq	48(%rcx), %rdx
	xorq	%rdx, 56(%rsp)
	movq	56(%rcx), %rcx
	xorq	%rcx, 64(%rsp)
	xorb	$6, 72(%rsp)
	xorb	$-128, 79(%rsp)
	movq	%rax, (%rsp)
	leaq	8(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_512_64$2(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_512_64$2:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rax)
	jmp 	*208(%rsp)
L_isha3_256_32$1:
	movq	%rax, (%rsp)
	leaq	8(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0, 104(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	movq	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 32(%rsp)
	xorb	$6, 40(%rsp)
	movb	$-128, 143(%rsp)
	leaq	8(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_isha3_256_32$2(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_isha3_256_32$2:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	jmp 	*208(%rsp)
L_shake256_128_33$1:
	movq	%rax, (%rsp)
	leaq	8(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0, 104(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	movq	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	(%rcx), %rax
	xorq	%rax, 8(%rsp)
	movq	8(%rcx), %rax
	xorq	%rax, 16(%rsp)
	movq	16(%rcx), %rax
	xorq	%rax, 24(%rsp)
	movq	24(%rcx), %rax
	xorq	%rax, 32(%rsp)
	movb	32(%rcx), %al
	xorb	%al, 40(%rsp)
	xorb	$31, 41(%rsp)
	xorb	$-128, 143(%rsp)
	leaq	8(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_shake256_128_33$2(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake256_128_33$2:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 48(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 56(%rax)
	movq	72(%rsp), %rcx
	movq	%rcx, 64(%rax)
	movq	80(%rsp), %rcx
	movq	%rcx, 72(%rax)
	movq	88(%rsp), %rcx
	movq	%rcx, 80(%rax)
	movq	96(%rsp), %rcx
	movq	%rcx, 88(%rax)
	movq	104(%rsp), %rcx
	movq	%rcx, 96(%rax)
	movq	112(%rsp), %rcx
	movq	%rcx, 104(%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 112(%rax)
	movq	128(%rsp), %rcx
	movq	%rcx, 120(%rax)
	jmp 	*208(%rsp)
L_shake256_64$1:
	movq	%rax, (%rsp)
	movq	%rcx, 8(%rsp)
	leaq	16(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 96(%rax)
	movq	$0, 104(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	movq	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	(%rdx), %rax
	xorq	%rax, 16(%rsp)
	movq	8(%rdx), %rax
	xorq	%rax, 24(%rsp)
	movq	16(%rdx), %rax
	xorq	%rax, 32(%rsp)
	movq	24(%rdx), %rax
	xorq	%rax, 40(%rsp)
	movq	32(%rdx), %rax
	xorq	%rax, 48(%rsp)
	movq	40(%rdx), %rax
	xorq	%rax, 56(%rsp)
	movq	48(%rdx), %rax
	xorq	%rax, 64(%rsp)
	movq	56(%rdx), %rax
	xorq	%rax, 72(%rsp)
	xorb	$31, 80(%rsp)
	xorb	$-128, 151(%rsp)
	leaq	16(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_shake256_64$9(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake256_64$9:
	leaq	216(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	jmp 	L_shake256_64$6
L_shake256_64$7:
	movq	16(%rsp), %rdx
	movq	%rdx, (%rcx)
	movq	24(%rsp), %rdx
	movq	%rdx, 8(%rcx)
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%rcx)
	movq	40(%rsp), %rdx
	movq	%rdx, 24(%rcx)
	movq	48(%rsp), %rdx
	movq	%rdx, 32(%rcx)
	movq	56(%rsp), %rdx
	movq	%rdx, 40(%rcx)
	movq	64(%rsp), %rdx
	movq	%rdx, 48(%rcx)
	movq	72(%rsp), %rdx
	movq	%rdx, 56(%rcx)
	movq	80(%rsp), %rdx
	movq	%rdx, 64(%rcx)
	movq	88(%rsp), %rdx
	movq	%rdx, 72(%rcx)
	movq	96(%rsp), %rdx
	movq	%rdx, 80(%rcx)
	movq	104(%rsp), %rdx
	movq	%rdx, 88(%rcx)
	movq	112(%rsp), %rdx
	movq	%rdx, 96(%rcx)
	movq	120(%rsp), %rdx
	movq	%rdx, 104(%rcx)
	movq	128(%rsp), %rdx
	movq	%rdx, 112(%rcx)
	movq	136(%rsp), %rdx
	movq	%rdx, 120(%rcx)
	movq	144(%rsp), %rdx
	movq	%rdx, 128(%rcx)
	leaq	136(%rcx), %rcx
	leaq	-136(%rax), %rax
	movq	%rcx, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_shake256_64$8(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake256_64$8:
	leaq	216(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
L_shake256_64$6:
	cmpq	$136, %rax
	jnbe	L_shake256_64$7
	movq	%rax, (%rsp)
	shrq	$3, %rax
	movq	$0, %rdx
	jmp 	L_shake256_64$4
L_shake256_64$5:
	movq	16(%rsp,%rdx,8), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	leaq	1(%rdx), %rdx
L_shake256_64$4:
	cmpq	%rax, %rdx
	jb  	L_shake256_64$5
	shlq	$3, %rdx
	movq	(%rsp), %rax
	jmp 	L_shake256_64$2
L_shake256_64$3:
	movb	16(%rsp,%rdx), %sil
	movb	%sil, (%rcx,%rdx)
	leaq	1(%rdx), %rdx
L_shake256_64$2:
	cmpq	%rax, %rdx
	jb  	L_shake256_64$3
	jmp 	*216(%rsp)
L_isha3_256$1:
	movq	%rdx, (%rsp)
	leaq	32(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	$136, %rdx
	jmp 	L_isha3_256$7
L_isha3_256$8:
	movq	%rdx, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_isha3_256$10
L_isha3_256$11:
	movq	(%rax,%rdi,8), %r8
	xorq	%r8, 32(%rsp,%rdi,8)
	leaq	1(%rdi), %rdi
L_isha3_256$10:
	cmpq	%rsi, %rdi
	jb  	L_isha3_256$11
	leaq	(%rax,%rdx), %rax
	subq	%rdx, %rcx
	movq	%rax, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	leaq	32(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_isha3_256$9(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_isha3_256$9:
	leaq	216(%rsp), %rsp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
L_isha3_256$7:
	cmpq	%rdx, %rcx
	jnb 	L_isha3_256$8
	movb	$6, %sil
	movq	%rcx, %rdi
	shrq	$3, %rdi
	movq	$0, %r8
	jmp 	L_isha3_256$5
L_isha3_256$6:
	movq	(%rax,%r8,8), %r9
	xorq	%r9, 32(%rsp,%r8,8)
	leaq	1(%r8), %r8
L_isha3_256$5:
	cmpq	%rdi, %r8
	jb  	L_isha3_256$6
	shlq	$3, %r8
	jmp 	L_isha3_256$3
L_isha3_256$4:
	movb	(%rax,%r8), %dil
	xorb	%dil, 32(%rsp,%r8)
	leaq	1(%r8), %r8
L_isha3_256$3:
	cmpq	%rcx, %r8
	jb  	L_isha3_256$4
	xorb	%sil, 32(%rsp,%r8)
	leaq	-1(%rdx), %rax
	xorb	$-128, 32(%rsp,%rax)
	leaq	32(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_isha3_256$2(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_isha3_256$2:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 24(%rax)
	jmp 	*232(%rsp)
L_sha3_256$1:
	movq	$6, %rsi
	movq	$136, %rax
	movq	$32, %rdi
	movq	%r8, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	48(%rsp), %rsi
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	movq	$0, 32(%rsi)
	movq	$0, 40(%rsi)
	movq	$0, 48(%rsi)
	movq	$0, 56(%rsi)
	movq	$0, 64(%rsi)
	movq	$0, 72(%rsi)
	movq	$0, 80(%rsi)
	movq	$0, 88(%rsi)
	movq	$0, 96(%rsi)
	movq	$0, 104(%rsi)
	movq	$0, 112(%rsi)
	movq	$0, 120(%rsi)
	movq	$0, 128(%rsi)
	movq	$0, 136(%rsi)
	movq	$0, 144(%rsi)
	movq	$0, 152(%rsi)
	movq	$0, 160(%rsi)
	movq	$0, 168(%rsi)
	movq	$0, 176(%rsi)
	movq	$0, 184(%rsi)
	movq	$0, 192(%rsi)
	jmp 	L_sha3_256$16
L_sha3_256$17:
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_sha3_256$19
L_sha3_256$20:
	movq	(%rdx,%rdi,8), %r8
	xorq	%r8, 48(%rsp,%rdi,8)
	leaq	1(%rdi), %rdi
L_sha3_256$19:
	cmpq	%rsi, %rdi
	jb  	L_sha3_256$20
	leaq	(%rdx,%rax), %rdx
	subq	%rax, %rcx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_256$18(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_256$18:
	leaq	216(%rsp), %rsp
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rax
L_sha3_256$16:
	cmpq	%rax, %rcx
	jnb 	L_sha3_256$17
	movq	16(%rsp), %rsi
	movq	%rcx, %rdi
	shrq	$3, %rdi
	movq	$0, %r8
	jmp 	L_sha3_256$14
L_sha3_256$15:
	movq	(%rdx,%r8,8), %r9
	xorq	%r9, 48(%rsp,%r8,8)
	leaq	1(%r8), %r8
L_sha3_256$14:
	cmpq	%rdi, %r8
	jb  	L_sha3_256$15
	shlq	$3, %r8
	jmp 	L_sha3_256$12
L_sha3_256$13:
	movb	(%rdx,%r8), %dil
	xorb	%dil, 48(%rsp,%r8)
	leaq	1(%r8), %r8
L_sha3_256$12:
	cmpq	%rcx, %r8
	jb  	L_sha3_256$13
	xorb	%sil, 48(%rsp,%r8)
	movq	%rax, %rcx
	leaq	-1(%rcx), %rcx
	xorb	$-128, 48(%rsp,%rcx)
	movq	8(%rsp), %rdx
	jmp 	L_sha3_256$7
L_sha3_256$8:
	movq	%rdx, 16(%rsp)
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_256$11(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_256$11:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_sha3_256$9
L_sha3_256$10:
	movq	48(%rsp,%rdi,8), %r8
	movq	%r8, (%rcx,%rdi,8)
	leaq	1(%rdi), %rdi
L_sha3_256$9:
	cmpq	%rsi, %rdi
	jb  	L_sha3_256$10
	leaq	(%rcx,%rax), %rcx
	subq	%rax, %rdx
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
L_sha3_256$7:
	cmpq	%rax, %rdx
	jnbe	L_sha3_256$8
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_256$6(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_256$6:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movq	$0, %rsi
	jmp 	L_sha3_256$4
L_sha3_256$5:
	movq	48(%rsp,%rsi,8), %rdi
	movq	%rdi, (%rax,%rsi,8)
	leaq	1(%rsi), %rsi
L_sha3_256$4:
	cmpq	%rdx, %rsi
	jb  	L_sha3_256$5
	shlq	$3, %rsi
	jmp 	L_sha3_256$2
L_sha3_256$3:
	movb	48(%rsp,%rsi), %dl
	movb	%dl, (%rax,%rsi)
	leaq	1(%rsi), %rsi
L_sha3_256$2:
	cmpq	%rcx, %rsi
	jb  	L_sha3_256$3
	jmp 	*248(%rsp)
L_sha3_512$1:
	movq	$6, %rsi
	movq	$72, %rax
	movq	$64, %rdi
	movq	%r8, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	leaq	48(%rsp), %rsi
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	movq	$0, 32(%rsi)
	movq	$0, 40(%rsi)
	movq	$0, 48(%rsi)
	movq	$0, 56(%rsi)
	movq	$0, 64(%rsi)
	movq	$0, 72(%rsi)
	movq	$0, 80(%rsi)
	movq	$0, 88(%rsi)
	movq	$0, 96(%rsi)
	movq	$0, 104(%rsi)
	movq	$0, 112(%rsi)
	movq	$0, 120(%rsi)
	movq	$0, 128(%rsi)
	movq	$0, 136(%rsi)
	movq	$0, 144(%rsi)
	movq	$0, 152(%rsi)
	movq	$0, 160(%rsi)
	movq	$0, 168(%rsi)
	movq	$0, 176(%rsi)
	movq	$0, 184(%rsi)
	movq	$0, 192(%rsi)
	jmp 	L_sha3_512$16
L_sha3_512$17:
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_sha3_512$19
L_sha3_512$20:
	movq	(%rdx,%rdi,8), %r8
	xorq	%r8, 48(%rsp,%rdi,8)
	leaq	1(%rdi), %rdi
L_sha3_512$19:
	cmpq	%rsi, %rdi
	jb  	L_sha3_512$20
	leaq	(%rdx,%rax), %rdx
	subq	%rax, %rcx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_512$18(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_512$18:
	leaq	216(%rsp), %rsp
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rax
L_sha3_512$16:
	cmpq	%rax, %rcx
	jnb 	L_sha3_512$17
	movq	16(%rsp), %rsi
	movq	%rcx, %rdi
	shrq	$3, %rdi
	movq	$0, %r8
	jmp 	L_sha3_512$14
L_sha3_512$15:
	movq	(%rdx,%r8,8), %r9
	xorq	%r9, 48(%rsp,%r8,8)
	leaq	1(%r8), %r8
L_sha3_512$14:
	cmpq	%rdi, %r8
	jb  	L_sha3_512$15
	shlq	$3, %r8
	jmp 	L_sha3_512$12
L_sha3_512$13:
	movb	(%rdx,%r8), %dil
	xorb	%dil, 48(%rsp,%r8)
	leaq	1(%r8), %r8
L_sha3_512$12:
	cmpq	%rcx, %r8
	jb  	L_sha3_512$13
	xorb	%sil, 48(%rsp,%r8)
	movq	%rax, %rcx
	leaq	-1(%rcx), %rcx
	xorb	$-128, 48(%rsp,%rcx)
	movq	8(%rsp), %rdx
	jmp 	L_sha3_512$7
L_sha3_512$8:
	movq	%rdx, 16(%rsp)
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_512$11(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_512$11:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_sha3_512$9
L_sha3_512$10:
	movq	48(%rsp,%rdi,8), %r8
	movq	%r8, (%rcx,%rdi,8)
	leaq	1(%rdi), %rdi
L_sha3_512$9:
	cmpq	%rsi, %rdi
	jb  	L_sha3_512$10
	leaq	(%rcx,%rax), %rcx
	subq	%rax, %rdx
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
L_sha3_512$7:
	cmpq	%rax, %rdx
	jnbe	L_sha3_512$8
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_sha3_512$6(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_sha3_512$6:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movq	$0, %rsi
	jmp 	L_sha3_512$4
L_sha3_512$5:
	movq	48(%rsp,%rsi,8), %rdi
	movq	%rdi, (%rax,%rsi,8)
	leaq	1(%rsi), %rsi
L_sha3_512$4:
	cmpq	%rdx, %rsi
	jb  	L_sha3_512$5
	shlq	$3, %rsi
	jmp 	L_sha3_512$2
L_sha3_512$3:
	movb	48(%rsp,%rsi), %dl
	movb	%dl, (%rax,%rsi)
	leaq	1(%rsi), %rsi
L_sha3_512$2:
	cmpq	%rcx, %rsi
	jb  	L_sha3_512$3
	jmp 	*248(%rsp)
L_shake256$1:
	movq	$31, (%rsp)
	movq	$136, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	8(%rsp), %rax
	leaq	48(%rsp), %rdx
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	$0, 48(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 64(%rdx)
	movq	$0, 72(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	movq	$0, 96(%rdx)
	movq	$0, 104(%rdx)
	movq	$0, 112(%rdx)
	movq	$0, 120(%rdx)
	movq	$0, 128(%rdx)
	movq	$0, 136(%rdx)
	movq	$0, 144(%rdx)
	movq	$0, 152(%rdx)
	movq	$0, 160(%rdx)
	movq	$0, 168(%rdx)
	movq	$0, 176(%rdx)
	movq	$0, 184(%rdx)
	movq	$0, 192(%rdx)
	jmp 	L_shake256$16
L_shake256$17:
	movq	%rax, %rdx
	shrq	$3, %rdx
	movq	$0, %rsi
	jmp 	L_shake256$19
L_shake256$20:
	movq	(%r8,%rsi,8), %rdi
	xorq	%rdi, 48(%rsp,%rsi,8)
	leaq	1(%rsi), %rsi
L_shake256$19:
	cmpq	%rdx, %rsi
	jb  	L_shake256$20
	leaq	(%r8,%rax), %rdx
	subq	%rax, %rcx
	movq	%rdx, 8(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_shake256$18(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake256$18:
	leaq	216(%rsp), %rsp
	movq	32(%rsp), %rcx
	movq	8(%rsp), %r8
	movq	40(%rsp), %rax
L_shake256$16:
	cmpq	%rax, %rcx
	jnb 	L_shake256$17
	movq	(%rsp), %rdx
	movq	%rcx, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_shake256$14
L_shake256$15:
	movq	(%r8,%rdi,8), %r9
	xorq	%r9, 48(%rsp,%rdi,8)
	leaq	1(%rdi), %rdi
L_shake256$14:
	cmpq	%rsi, %rdi
	jb  	L_shake256$15
	shlq	$3, %rdi
	jmp 	L_shake256$12
L_shake256$13:
	movb	(%r8,%rdi), %sil
	xorb	%sil, 48(%rsp,%rdi)
	leaq	1(%rdi), %rdi
L_shake256$12:
	cmpq	%rcx, %rdi
	jb  	L_shake256$13
	xorb	%dl, 48(%rsp,%rdi)
	movq	%rax, %rcx
	leaq	-1(%rcx), %rcx
	xorb	$-128, 48(%rsp,%rcx)
	movq	24(%rsp), %rdx
	jmp 	L_shake256$7
L_shake256$8:
	movq	%rdx, (%rsp)
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_shake256$11(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake256$11:
	leaq	216(%rsp), %rsp
	movq	16(%rsp), %rcx
	movq	(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	%rax, %rsi
	shrq	$3, %rsi
	movq	$0, %rdi
	jmp 	L_shake256$9
L_shake256$10:
	movq	48(%rsp,%rdi,8), %r8
	movq	%r8, (%rcx,%rdi,8)
	leaq	1(%rdi), %rdi
L_shake256$9:
	cmpq	%rsi, %rdi
	jb  	L_shake256$10
	leaq	(%rcx,%rax), %rcx
	subq	%rax, %rdx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
L_shake256$7:
	cmpq	%rax, %rdx
	jnbe	L_shake256$8
	leaq	48(%rsp), %rax
	leaq	-216(%rsp), %rsp
	leaq	L_shake256$6(%rip), %rcx
	movq	%rcx, 208(%rsp)
	jmp 	L_keccakf1600_scalar$1
L_shake256$6:
	leaq	216(%rsp), %rsp
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movq	$0, %rsi
	jmp 	L_shake256$4
L_shake256$5:
	movq	48(%rsp,%rsi,8), %rdi
	movq	%rdi, (%rax,%rsi,8)
	leaq	1(%rsi), %rsi
L_shake256$4:
	cmpq	%rdx, %rsi
	jb  	L_shake256$5
	shlq	$3, %rsi
	jmp 	L_shake256$2
L_shake256$3:
	movb	48(%rsp,%rsi), %dl
	movb	%dl, (%rax,%rsi)
	leaq	1(%rsi), %rsi
L_shake256$2:
	cmpq	%rcx, %rsi
	jb  	L_shake256$3
	jmp 	*248(%rsp)
L_keccakf1600_scalar$1:
	leaq	glob_data + 2968(%rip), %rcx
	movq	$0, %rdx
	jmp 	L_keccakf1600_scalar$2
L_keccakf1600_scalar$3:
	movq	(%rcx,%rdx,8), %r11
	movq	%rdx, (%rsp)
	leaq	8(%rsp), %rdx
	movq	(%rax), %r10
	movq	8(%rax), %r9
	movq	16(%rax), %rbx
	movq	24(%rax), %rbp
	movq	32(%rax), %r12
	xorq	40(%rax), %r10
	xorq	48(%rax), %r9
	xorq	56(%rax), %rbx
	xorq	64(%rax), %rbp
	xorq	72(%rax), %r12
	xorq	80(%rax), %r10
	xorq	88(%rax), %r9
	xorq	96(%rax), %rbx
	xorq	104(%rax), %rbp
	xorq	112(%rax), %r12
	xorq	120(%rax), %r10
	xorq	128(%rax), %r9
	xorq	136(%rax), %rbx
	xorq	144(%rax), %rbp
	xorq	152(%rax), %r12
	xorq	160(%rax), %r10
	xorq	168(%rax), %r9
	xorq	176(%rax), %rbx
	xorq	184(%rax), %rbp
	xorq	192(%rax), %r12
	movq	%r9, %rsi
	rolq	$1, %rsi
	xorq	%r12, %rsi
	movq	%rbx, %rdi
	rolq	$1, %rdi
	xorq	%r10, %rdi
	movq	%rbp, %r8
	rolq	$1, %r8
	xorq	%r9, %r8
	movq	%r12, %r9
	rolq	$1, %r9
	xorq	%rbx, %r9
	rolq	$1, %r10
	xorq	%rbp, %r10
	movq	(%rax), %rbx
	xorq	%rsi, %rbx
	rolq	$0, %rbx
	movq	48(%rax), %rbp
	xorq	%rdi, %rbp
	rolq	$44, %rbp
	movq	96(%rax), %r12
	xorq	%r8, %r12
	rolq	$43, %r12
	movq	144(%rax), %r13
	xorq	%r9, %r13
	rolq	$21, %r13
	movq	192(%rax), %r14
	xorq	%r10, %r14
	rolq	$14, %r14
	andnq	%r12, %rbp, %r15
	xorq	%r11, %r15
	xorq	%rbx, %r15
	movq	%r15, (%rdx)
	andnq	%r13, %r12, %r11
	xorq	%rbp, %r11
	movq	%r11, 8(%rdx)
	andnq	%r14, %r13, %r11
	xorq	%r12, %r11
	movq	%r11, 16(%rdx)
	andnq	%rbx, %r14, %r11
	xorq	%r13, %r11
	movq	%r11, 24(%rdx)
	andnq	%rbp, %rbx, %r11
	xorq	%r14, %r11
	movq	%r11, 32(%rdx)
	movq	24(%rax), %r11
	xorq	%r9, %r11
	rolq	$28, %r11
	movq	72(%rax), %rbx
	xorq	%r10, %rbx
	rolq	$20, %rbx
	movq	80(%rax), %rbp
	xorq	%rsi, %rbp
	rolq	$3, %rbp
	movq	128(%rax), %r12
	xorq	%rdi, %r12
	rolq	$45, %r12
	movq	176(%rax), %r13
	xorq	%r8, %r13
	rolq	$61, %r13
	andnq	%rbp, %rbx, %r14
	xorq	%r11, %r14
	movq	%r14, 40(%rdx)
	andnq	%r12, %rbp, %r14
	xorq	%rbx, %r14
	movq	%r14, 48(%rdx)
	andnq	%r13, %r12, %r14
	xorq	%rbp, %r14
	movq	%r14, 56(%rdx)
	andnq	%r11, %r13, %rbp
	xorq	%r12, %rbp
	movq	%rbp, 64(%rdx)
	andnq	%rbx, %r11, %r11
	xorq	%r13, %r11
	movq	%r11, 72(%rdx)
	movq	8(%rax), %r11
	xorq	%rdi, %r11
	rolq	$1, %r11
	movq	56(%rax), %rbx
	xorq	%r8, %rbx
	rolq	$6, %rbx
	movq	104(%rax), %rbp
	xorq	%r9, %rbp
	rolq	$25, %rbp
	movq	152(%rax), %r12
	xorq	%r10, %r12
	rolq	$8, %r12
	movq	160(%rax), %r13
	xorq	%rsi, %r13
	rolq	$18, %r13
	andnq	%rbp, %rbx, %r14
	xorq	%r11, %r14
	movq	%r14, 80(%rdx)
	andnq	%r12, %rbp, %r14
	xorq	%rbx, %r14
	movq	%r14, 88(%rdx)
	andnq	%r13, %r12, %r14
	xorq	%rbp, %r14
	movq	%r14, 96(%rdx)
	andnq	%r11, %r13, %rbp
	xorq	%r12, %rbp
	movq	%rbp, 104(%rdx)
	andnq	%rbx, %r11, %r11
	xorq	%r13, %r11
	movq	%r11, 112(%rdx)
	movq	32(%rax), %r11
	xorq	%r10, %r11
	rolq	$27, %r11
	movq	40(%rax), %rbx
	xorq	%rsi, %rbx
	rolq	$36, %rbx
	movq	88(%rax), %rbp
	xorq	%rdi, %rbp
	rolq	$10, %rbp
	movq	136(%rax), %r12
	xorq	%r8, %r12
	rolq	$15, %r12
	movq	184(%rax), %r13
	xorq	%r9, %r13
	rolq	$56, %r13
	andnq	%rbp, %rbx, %r14
	xorq	%r11, %r14
	movq	%r14, 120(%rdx)
	andnq	%r12, %rbp, %r14
	xorq	%rbx, %r14
	movq	%r14, 128(%rdx)
	andnq	%r13, %r12, %r14
	xorq	%rbp, %r14
	movq	%r14, 136(%rdx)
	andnq	%r11, %r13, %rbp
	xorq	%r12, %rbp
	movq	%rbp, 144(%rdx)
	andnq	%rbx, %r11, %r11
	xorq	%r13, %r11
	movq	%r11, 152(%rdx)
	movq	16(%rax), %r11
	xorq	%r8, %r11
	rolq	$62, %r11
	movq	64(%rax), %r8
	xorq	%r9, %r8
	rolq	$55, %r8
	movq	112(%rax), %r9
	xorq	%r10, %r9
	rolq	$39, %r9
	movq	120(%rax), %r10
	xorq	%rsi, %r10
	rolq	$41, %r10
	movq	168(%rax), %rsi
	xorq	%rdi, %rsi
	rolq	$2, %rsi
	andnq	%r9, %r8, %rdi
	xorq	%r11, %rdi
	movq	%rdi, 160(%rdx)
	andnq	%r10, %r9, %rdi
	xorq	%r8, %rdi
	movq	%rdi, 168(%rdx)
	andnq	%rsi, %r10, %rdi
	xorq	%r9, %rdi
	movq	%rdi, 176(%rdx)
	andnq	%r11, %rsi, %rdi
	xorq	%r10, %rdi
	movq	%rdi, 184(%rdx)
	andnq	%r8, %r11, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, 192(%rdx)
	movq	(%rsp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rsp)
	leaq	8(%rsp), %rdx
	movq	(%rcx,%rsi,8), %r11
	movq	(%rdx), %r10
	movq	8(%rdx), %r9
	movq	16(%rdx), %rbx
	movq	24(%rdx), %rbp
	movq	32(%rdx), %r12
	xorq	40(%rdx), %r10
	xorq	48(%rdx), %r9
	xorq	56(%rdx), %rbx
	xorq	64(%rdx), %rbp
	xorq	72(%rdx), %r12
	xorq	80(%rdx), %r10
	xorq	88(%rdx), %r9
	xorq	96(%rdx), %rbx
	xorq	104(%rdx), %rbp
	xorq	112(%rdx), %r12
	xorq	120(%rdx), %r10
	xorq	128(%rdx), %r9
	xorq	136(%rdx), %rbx
	xorq	144(%rdx), %rbp
	xorq	152(%rdx), %r12
	xorq	160(%rdx), %r10
	xorq	168(%rdx), %r9
	xorq	176(%rdx), %rbx
	xorq	184(%rdx), %rbp
	xorq	192(%rdx), %r12
	movq	%r9, %rsi
	rolq	$1, %rsi
	xorq	%r12, %rsi
	movq	%rbx, %rdi
	rolq	$1, %rdi
	xorq	%r10, %rdi
	movq	%rbp, %r8
	rolq	$1, %r8
	xorq	%r9, %r8
	movq	%r12, %r9
	rolq	$1, %r9
	xorq	%rbx, %r9
	rolq	$1, %r10
	xorq	%rbp, %r10
	movq	(%rdx), %rbx
	xorq	%rsi, %rbx
	rolq	$0, %rbx
	movq	48(%rdx), %rbp
	xorq	%rdi, %rbp
	rolq	$44, %rbp
	movq	96(%rdx), %r12
	xorq	%r8, %r12
	rolq	$43, %r12
	movq	144(%rdx), %r13
	xorq	%r9, %r13
	rolq	$21, %r13
	movq	192(%rdx), %r14
	xorq	%r10, %r14
	rolq	$14, %r14
	andnq	%r12, %rbp, %r15
	xorq	%r11, %r15
	xorq	%rbx, %r15
	movq	%r15, (%rax)
	andnq	%r13, %r12, %r11
	xorq	%rbp, %r11
	movq	%r11, 8(%rax)
	andnq	%r14, %r13, %r11
	xorq	%r12, %r11
	movq	%r11, 16(%rax)
	andnq	%rbx, %r14, %r11
	xorq	%r13, %r11
	movq	%r11, 24(%rax)
	andnq	%rbp, %rbx, %r11
	xorq	%r14, %r11
	movq	%r11, 32(%rax)
	movq	24(%rdx), %r11
	xorq	%r9, %r11
	rolq	$28, %r11
	movq	72(%rdx), %rbx
	xorq	%r10, %rbx
	rolq	$20, %rbx
	movq	80(%rdx), %rbp
	xorq	%rsi, %rbp
	rolq	$3, %rbp
	movq	128(%rdx), %r12
	xorq	%rdi, %r12
	rolq	$45, %r12
	movq	176(%rdx), %r13
	xorq	%r8, %r13
	rolq	$61, %r13
	andnq	%rbp, %rbx, %r14
	xorq	%r11, %r14
	movq	%r14, 40(%rax)
	andnq	%r12, %rbp, %r14
	xorq	%rbx, %r14
	movq	%r14, 48(%rax)
	andnq	%r13, %r12, %r14
	xorq	%rbp, %r14
	movq	%r14, 56(%rax)
	andnq	%r11, %r13, %rbp
	xorq	%r12, %rbp
	movq	%rbp, 64(%rax)
	andnq	%rbx, %r11, %r11
	xorq	%r13, %r11
	movq	%r11, 72(%rax)
	movq	8(%rdx), %r11
	xorq	%rdi, %r11
	rolq	$1, %r11
	movq	56(%rdx), %rbx
	xorq	%r8, %rbx
	rolq	$6, %rbx
	movq	104(%rdx), %rbp
	xorq	%r9, %rbp
	rolq	$25, %rbp
	movq	152(%rdx), %r12
	xorq	%r10, %r12
	rolq	$8, %r12
	movq	160(%rdx), %r13
	xorq	%rsi, %r13
	rolq	$18, %r13
	andnq	%rbp, %rbx, %r14
	xorq	%r11, %r14
	movq	%r14, 80(%rax)
	andnq	%r12, %rbp, %r14
	xorq	%rbx, %r14
	movq	%r14, 88(%rax)
	andnq	%r13, %r12, %r14
	xorq	%rbp, %r14
	movq	%r14, 96(%rax)
	andnq	%r11, %r13, %rbp
	xorq	%r12, %rbp
	movq	%rbp, 104(%rax)
	andnq	%rbx, %r11, %r11
	xorq	%r13, %r11
	movq	%r11, 112(%rax)
	movq	32(%rdx), %r11
	xorq	%r10, %r11
	rolq	$27, %r11
	movq	40(%rdx), %rbx
	xorq	%rsi, %rbx
	rolq	$36, %rbx
	movq	88(%rdx), %rbp
	xorq	%rdi, %rbp
	rolq	$10, %rbp
	movq	136(%rdx), %r12
	xorq	%r8, %r12
	rolq	$15, %r12
	movq	184(%rdx), %r13
	xorq	%r9, %r13
	rolq	$56, %r13
	andnq	%rbp, %rbx, %r14
	xorq	%r11, %r14
	movq	%r14, 120(%rax)
	andnq	%r12, %rbp, %r14
	xorq	%rbx, %r14
	movq	%r14, 128(%rax)
	andnq	%r13, %r12, %r14
	xorq	%rbp, %r14
	movq	%r14, 136(%rax)
	andnq	%r11, %r13, %rbp
	xorq	%r12, %rbp
	movq	%rbp, 144(%rax)
	andnq	%rbx, %r11, %r11
	xorq	%r13, %r11
	movq	%r11, 152(%rax)
	movq	16(%rdx), %r11
	xorq	%r8, %r11
	rolq	$62, %r11
	movq	64(%rdx), %r8
	xorq	%r9, %r8
	rolq	$55, %r8
	movq	112(%rdx), %r9
	xorq	%r10, %r9
	rolq	$39, %r9
	movq	120(%rdx), %r10
	xorq	%rsi, %r10
	rolq	$41, %r10
	movq	168(%rdx), %rdx
	xorq	%rdi, %rdx
	rolq	$2, %rdx
	andnq	%r9, %r8, %rsi
	xorq	%r11, %rsi
	movq	%rsi, 160(%rax)
	andnq	%r10, %r9, %rsi
	xorq	%r8, %rsi
	movq	%rsi, 168(%rax)
	andnq	%rdx, %r10, %rsi
	xorq	%r9, %rsi
	movq	%rsi, 176(%rax)
	andnq	%r11, %rdx, %rsi
	xorq	%r10, %rsi
	movq	%rsi, 184(%rax)
	andnq	%r8, %r11, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, 192(%rax)
	movq	(%rsp), %rdx
	leaq	1(%rdx), %rdx
L_keccakf1600_scalar$2:
	cmpq	$24, %rdx
	jb  	L_keccakf1600_scalar$3
	jmp 	*208(%rsp)
L_nttunpack$1:
	vmovdqu	(%rax), %ymm1
	vmovdqu	32(%rax), %ymm3
	vmovdqu	64(%rax), %ymm4
	vmovdqu	96(%rax), %ymm5
	vmovdqu	128(%rax), %ymm2
	vmovdqu	160(%rax), %ymm6
	vmovdqu	192(%rax), %ymm7
	vmovdqu	224(%rax), %ymm8
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm2
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm7, %ymm4, %ymm6
	vperm2i128	$49, %ymm7, %ymm4, %ymm7
	vperm2i128	$32, %ymm8, %ymm5, %ymm9
	vperm2i128	$49, %ymm8, %ymm5, %ymm10
	vpunpcklqdq	%ymm6, %ymm0, %ymm4
	vpunpckhqdq	%ymm6, %ymm0, %ymm5
	vpunpcklqdq	%ymm7, %ymm1, %ymm6
	vpunpckhqdq	%ymm7, %ymm1, %ymm7
	vpunpcklqdq	%ymm9, %ymm2, %ymm0
	vpunpckhqdq	%ymm9, %ymm2, %ymm2
	vpunpcklqdq	%ymm10, %ymm3, %ymm8
	vpunpckhqdq	%ymm10, %ymm3, %ymm3
	vmovsldup	%ymm0, %ymm1
	vpblendd	$-86, %ymm1, %ymm4, %ymm9
	vpsrlq	$32, %ymm4, %ymm1
	vpblendd	$-86, %ymm0, %ymm1, %ymm0
	vmovsldup	%ymm2, %ymm1
	vpblendd	$-86, %ymm1, %ymm5, %ymm1
	vpsrlq	$32, %ymm5, %ymm4
	vpblendd	$-86, %ymm2, %ymm4, %ymm2
	vmovsldup	%ymm8, %ymm4
	vpblendd	$-86, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm5
	vpblendd	$-86, %ymm8, %ymm5, %ymm5
	vmovsldup	%ymm3, %ymm6
	vpblendd	$-86, %ymm6, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$-86, %ymm3, %ymm7, %ymm3
	vpslld	$16, %ymm4, %ymm7
	vpblendw	$-86, %ymm7, %ymm9, %ymm7
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$-86, %ymm4, %ymm8, %ymm4
	vpslld	$16, %ymm5, %ymm8
	vpblendw	$-86, %ymm8, %ymm0, %ymm8
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$-86, %ymm5, %ymm0, %ymm0
	vpslld	$16, %ymm6, %ymm5
	vpblendw	$-86, %ymm5, %ymm1, %ymm5
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$-86, %ymm6, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$-86, %ymm6, %ymm2, %ymm6
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm2
	vmovdqu	%ymm7, (%rax)
	vmovdqu	%ymm4, 32(%rax)
	vmovdqu	%ymm8, 64(%rax)
	vmovdqu	%ymm0, 96(%rax)
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	%ymm1, 160(%rax)
	vmovdqu	%ymm6, 192(%rax)
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm1
	vmovdqu	288(%rax), %ymm3
	vmovdqu	320(%rax), %ymm4
	vmovdqu	352(%rax), %ymm5
	vmovdqu	384(%rax), %ymm2
	vmovdqu	416(%rax), %ymm6
	vmovdqu	448(%rax), %ymm7
	vmovdqu	480(%rax), %ymm8
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm3, %ymm2
	vperm2i128	$49, %ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm7, %ymm4, %ymm6
	vperm2i128	$49, %ymm7, %ymm4, %ymm7
	vperm2i128	$32, %ymm8, %ymm5, %ymm9
	vperm2i128	$49, %ymm8, %ymm5, %ymm10
	vpunpcklqdq	%ymm6, %ymm0, %ymm4
	vpunpckhqdq	%ymm6, %ymm0, %ymm5
	vpunpcklqdq	%ymm7, %ymm1, %ymm6
	vpunpckhqdq	%ymm7, %ymm1, %ymm7
	vpunpcklqdq	%ymm9, %ymm2, %ymm0
	vpunpckhqdq	%ymm9, %ymm2, %ymm2
	vpunpcklqdq	%ymm10, %ymm3, %ymm8
	vpunpckhqdq	%ymm10, %ymm3, %ymm3
	vmovsldup	%ymm0, %ymm1
	vpblendd	$-86, %ymm1, %ymm4, %ymm9
	vpsrlq	$32, %ymm4, %ymm1
	vpblendd	$-86, %ymm0, %ymm1, %ymm0
	vmovsldup	%ymm2, %ymm1
	vpblendd	$-86, %ymm1, %ymm5, %ymm1
	vpsrlq	$32, %ymm5, %ymm4
	vpblendd	$-86, %ymm2, %ymm4, %ymm2
	vmovsldup	%ymm8, %ymm4
	vpblendd	$-86, %ymm4, %ymm6, %ymm4
	vpsrlq	$32, %ymm6, %ymm5
	vpblendd	$-86, %ymm8, %ymm5, %ymm5
	vmovsldup	%ymm3, %ymm6
	vpblendd	$-86, %ymm6, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$-86, %ymm3, %ymm7, %ymm3
	vpslld	$16, %ymm4, %ymm7
	vpblendw	$-86, %ymm7, %ymm9, %ymm7
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$-86, %ymm4, %ymm8, %ymm4
	vpslld	$16, %ymm5, %ymm8
	vpblendw	$-86, %ymm8, %ymm0, %ymm8
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$-86, %ymm5, %ymm0, %ymm0
	vpslld	$16, %ymm6, %ymm5
	vpblendw	$-86, %ymm5, %ymm1, %ymm5
	vpsrld	$16, %ymm1, %ymm1
	vpblendw	$-86, %ymm6, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$-86, %ymm6, %ymm2, %ymm6
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm2
	vmovdqu	%ymm7, 256(%rax)
	vmovdqu	%ymm4, 288(%rax)
	vmovdqu	%ymm8, 320(%rax)
	vmovdqu	%ymm0, 352(%rax)
	vmovdqu	%ymm5, 384(%rax)
	vmovdqu	%ymm1, 416(%rax)
	vmovdqu	%ymm6, 448(%rax)
	vmovdqu	%ymm2, 480(%rax)
	jmp 	*%rcx
L_nttpack$1:
	vmovdqu	(%rax), %ymm0
	vmovdqu	32(%rax), %ymm1
	vmovdqu	64(%rax), %ymm8
	vmovdqu	96(%rax), %ymm9
	vmovdqu	128(%rax), %ymm2
	vmovdqu	160(%rax), %ymm3
	vmovdqu	192(%rax), %ymm4
	vmovdqu	224(%rax), %ymm5
	vpslld	$16, %ymm1, %ymm6
	vpblendw	$-86, %ymm6, %ymm0, %ymm6
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$-86, %ymm1, %ymm0, %ymm0
	vpslld	$16, %ymm9, %ymm1
	vpblendw	$-86, %ymm1, %ymm8, %ymm7
	vpsrld	$16, %ymm8, %ymm1
	vpblendw	$-86, %ymm9, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$-86, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$-86, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$-86, %ymm5, %ymm4, %ymm4
	vmovsldup	%ymm7, %ymm5
	vpblendd	$-86, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm7, %ymm6, %ymm6
	vmovsldup	%ymm3, %ymm7
	vpblendd	$-86, %ymm7, %ymm8, %ymm7
	vpsrlq	$32, %ymm8, %ymm8
	vpblendd	$-86, %ymm3, %ymm8, %ymm3
	vmovsldup	%ymm1, %ymm8
	vpblendd	$-86, %ymm8, %ymm0, %ymm8
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$-86, %ymm1, %ymm0, %ymm0
	vmovsldup	%ymm4, %ymm1
	vpblendd	$-86, %ymm1, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm1
	vpblendd	$-86, %ymm4, %ymm1, %ymm10
	vpunpcklqdq	%ymm7, %ymm5, %ymm1
	vpunpckhqdq	%ymm7, %ymm5, %ymm2
	vpunpcklqdq	%ymm9, %ymm8, %ymm5
	vpunpckhqdq	%ymm9, %ymm8, %ymm4
	vpunpcklqdq	%ymm3, %ymm6, %ymm7
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm10, %ymm0, %ymm6
	vpunpckhqdq	%ymm10, %ymm0, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm8
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm7, %ymm5
	vperm2i128	$49, %ymm6, %ymm7, %ymm6
	vperm2i128	$32, %ymm4, %ymm2, %ymm7
	vperm2i128	$49, %ymm4, %ymm2, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm4
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm8, (%rax)
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	%ymm7, 64(%rax)
	vmovdqu	%ymm4, 96(%rax)
	vmovdqu	%ymm1, 128(%rax)
	vmovdqu	%ymm6, 160(%rax)
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	%ymm0, 224(%rax)
	vmovdqu	256(%rax), %ymm0
	vmovdqu	288(%rax), %ymm1
	vmovdqu	320(%rax), %ymm8
	vmovdqu	352(%rax), %ymm9
	vmovdqu	384(%rax), %ymm2
	vmovdqu	416(%rax), %ymm3
	vmovdqu	448(%rax), %ymm4
	vmovdqu	480(%rax), %ymm5
	vpslld	$16, %ymm1, %ymm6
	vpblendw	$-86, %ymm6, %ymm0, %ymm6
	vpsrld	$16, %ymm0, %ymm0
	vpblendw	$-86, %ymm1, %ymm0, %ymm0
	vpslld	$16, %ymm9, %ymm1
	vpblendw	$-86, %ymm1, %ymm8, %ymm7
	vpsrld	$16, %ymm8, %ymm1
	vpblendw	$-86, %ymm9, %ymm1, %ymm1
	vpslld	$16, %ymm3, %ymm8
	vpblendw	$-86, %ymm8, %ymm2, %ymm8
	vpsrld	$16, %ymm2, %ymm2
	vpblendw	$-86, %ymm3, %ymm2, %ymm2
	vpslld	$16, %ymm5, %ymm3
	vpblendw	$-86, %ymm3, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm4
	vpblendw	$-86, %ymm5, %ymm4, %ymm4
	vmovsldup	%ymm7, %ymm5
	vpblendd	$-86, %ymm5, %ymm6, %ymm5
	vpsrlq	$32, %ymm6, %ymm6
	vpblendd	$-86, %ymm7, %ymm6, %ymm6
	vmovsldup	%ymm3, %ymm7
	vpblendd	$-86, %ymm7, %ymm8, %ymm7
	vpsrlq	$32, %ymm8, %ymm8
	vpblendd	$-86, %ymm3, %ymm8, %ymm3
	vmovsldup	%ymm1, %ymm8
	vpblendd	$-86, %ymm8, %ymm0, %ymm8
	vpsrlq	$32, %ymm0, %ymm0
	vpblendd	$-86, %ymm1, %ymm0, %ymm0
	vmovsldup	%ymm4, %ymm1
	vpblendd	$-86, %ymm1, %ymm2, %ymm9
	vpsrlq	$32, %ymm2, %ymm1
	vpblendd	$-86, %ymm4, %ymm1, %ymm10
	vpunpcklqdq	%ymm7, %ymm5, %ymm1
	vpunpckhqdq	%ymm7, %ymm5, %ymm2
	vpunpcklqdq	%ymm9, %ymm8, %ymm5
	vpunpckhqdq	%ymm9, %ymm8, %ymm4
	vpunpcklqdq	%ymm3, %ymm6, %ymm7
	vpunpckhqdq	%ymm3, %ymm6, %ymm3
	vpunpcklqdq	%ymm10, %ymm0, %ymm6
	vpunpckhqdq	%ymm10, %ymm0, %ymm0
	vperm2i128	$32, %ymm5, %ymm1, %ymm8
	vperm2i128	$49, %ymm5, %ymm1, %ymm1
	vperm2i128	$32, %ymm6, %ymm7, %ymm5
	vperm2i128	$49, %ymm6, %ymm7, %ymm6
	vperm2i128	$32, %ymm4, %ymm2, %ymm7
	vperm2i128	$49, %ymm4, %ymm2, %ymm2
	vperm2i128	$32, %ymm0, %ymm3, %ymm4
	vperm2i128	$49, %ymm0, %ymm3, %ymm0
	vmovdqu	%ymm8, 256(%rax)
	vmovdqu	%ymm5, 288(%rax)
	vmovdqu	%ymm7, 320(%rax)
	vmovdqu	%ymm4, 352(%rax)
	vmovdqu	%ymm1, 384(%rax)
	vmovdqu	%ymm6, 416(%rax)
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	%ymm0, 480(%rax)
	jmp 	*%rcx
	.data
	.p2align	5
_glob_data:
glob_data:
      .byte 0
      .byte 1
      .byte 2
      .byte 3
      .byte 4
      .byte 8
      .byte 9
      .byte 10
      .byte 11
      .byte 12
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte 9
      .byte 10
      .byte 11
      .byte 12
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte 0
      .byte 1
      .byte 2
      .byte 3
      .byte 4
      .byte 8
      .byte 0
      .byte 1
      .byte 1
      .byte 2
      .byte 2
      .byte 3
      .byte 3
      .byte 4
      .byte 5
      .byte 6
      .byte 6
      .byte 7
      .byte 7
      .byte 8
      .byte 8
      .byte 9
      .byte 2
      .byte 3
      .byte 3
      .byte 4
      .byte 4
      .byte 5
      .byte 5
      .byte 6
      .byte 7
      .byte 8
      .byte 8
      .byte 9
      .byte 9
      .byte 10
      .byte 10
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 1
      .byte 1
      .byte 1
      .byte 2
      .byte 2
      .byte 2
      .byte 2
      .byte 3
      .byte 3
      .byte 3
      .byte 3
      .byte 4
      .byte 4
      .byte 4
      .byte 4
      .byte 5
      .byte 5
      .byte 5
      .byte 5
      .byte 6
      .byte 6
      .byte 6
      .byte 6
      .byte 7
      .byte 7
      .byte 7
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -126
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -126
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -126
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -126
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -118
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -118
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -118
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -118
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -117
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 9
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 9
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 9
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 9
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -118
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -118
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -118
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -118
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -120
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -120
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -120
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -120
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -117
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -117
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -117
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -119
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -119
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -119
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -119
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 3
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 3
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 3
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 3
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 2
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 2
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 2
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 2
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 10
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 8
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 8
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 8
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 7
      .byte 0
      .byte 1
      .byte 2
      .byte 3
      .byte 4
      .byte 5
      .byte 6
      .byte 15
      .byte 8
      .byte 9
      .byte 10
      .byte 11
      .byte 12
      .byte 13
      .byte 14
      .byte 23
      .byte 16
      .byte 17
      .byte 18
      .byte 19
      .byte 20
      .byte 21
      .byte 22
      .byte 31
      .byte 24
      .byte 25
      .byte 26
      .byte 27
      .byte 28
      .byte 29
      .byte 30
      .byte 1
      .byte 2
      .byte 3
      .byte 4
      .byte 5
      .byte 6
      .byte 7
      .byte 0
      .byte 9
      .byte 10
      .byte 11
      .byte 12
      .byte 13
      .byte 14
      .byte 15
      .byte 8
      .byte 17
      .byte 18
      .byte 19
      .byte 20
      .byte 21
      .byte 22
      .byte 23
      .byte 16
      .byte 25
      .byte 26
      .byte 27
      .byte 28
      .byte 29
      .byte 30
      .byte 31
      .byte 24
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 73
      .byte 5
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte 64
      .byte 3
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -128
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -127
      .byte 6
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -1
      .byte 15
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte -40
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -95
      .byte 5
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte -65
      .byte 78
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte -13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte 1
      .byte 13
      .byte -91
      .byte -91
      .byte -76
      .byte -31
      .byte 34
      .byte 79
      .byte 52
      .byte 93
      .byte 35
      .byte 68
      .byte 86
      .byte -91
      .byte -25
      .byte 78
      .byte -6
      .byte 83
      .byte 123
      .byte -57
      .byte 37
      .byte 43
      .byte 55
      .byte 58
      .byte -120
      .byte 24
      .byte -127
      .byte 126
      .byte 5
      .byte -60
      .byte -97
      .byte -9
      .byte -72
      .byte -80
      .byte -91
      .byte 6
      .byte -76
      .byte 5
      .byte 34
      .byte 9
      .byte 52
      .byte 1
      .byte 35
      .byte 11
      .byte 86
      .byte 3
      .byte -25
      .byte 9
      .byte -6
      .byte 5
      .byte 123
      .byte 6
      .byte 37
      .byte 12
      .byte 55
      .byte 5
      .byte -120
      .byte 0
      .byte -127
      .byte 11
      .byte 5
      .byte 5
      .byte -97
      .byte 10
      .byte -72
      .byte 8
      .byte 15
      .byte 68
      .byte 67
      .byte -94
      .byte 29
      .byte -112
      .byte 108
      .byte -124
      .byte 102
      .byte -43
      .byte -26
      .byte 87
      .byte -2
      .byte 30
      .byte -95
      .byte -41
      .byte -93
      .byte -67
      .byte 106
      .byte -95
      .byte 63
      .byte -43
      .byte -65
      .byte 81
      .byte -71
      .byte -96
      .byte -41
      .byte 28
      .byte -90
      .byte -100
      .byte -48
      .byte 121
      .byte 15
      .byte 7
      .byte 67
      .byte 9
      .byte 29
      .byte 9
      .byte 108
      .byte 0
      .byte 102
      .byte 3
      .byte -26
      .byte 5
      .byte -2
      .byte 4
      .byte -95
      .byte 4
      .byte -93
      .byte 4
      .byte 106
      .byte 3
      .byte 63
      .byte 8
      .byte -65
      .byte 4
      .byte -71
      .byte 5
      .byte -41
      .byte 7
      .byte -90
      .byte 10
      .byte -48
      .byte 9
      .byte -5
      .byte 69
      .byte 92
      .byte 94
      .byte 41
      .byte -17
      .byte 65
      .byte -66
      .byte -43
      .byte 49
      .byte -28
      .byte 113
      .byte 64
      .byte -55
      .byte -114
      .byte -53
      .byte -73
      .byte -72
      .byte -9
      .byte 117
      .byte -115
      .byte -36
      .byte -106
      .byte 110
      .byte -61
      .byte 34
      .byte 15
      .byte 62
      .byte 90
      .byte 110
      .byte 85
      .byte -78
      .byte -5
      .byte 4
      .byte 92
      .byte 10
      .byte 41
      .byte 4
      .byte 65
      .byte 11
      .byte -43
      .byte 2
      .byte -28
      .byte 5
      .byte 64
      .byte 9
      .byte -114
      .byte 1
      .byte -73
      .byte 3
      .byte -9
      .byte 0
      .byte -115
      .byte 5
      .byte -106
      .byte 12
      .byte -61
      .byte 9
      .byte 15
      .byte 1
      .byte 90
      .byte 0
      .byte 85
      .byte 3
      .byte 35
      .byte 63
      .byte 35
      .byte 63
      .byte -51
      .byte -105
      .byte -51
      .byte -105
      .byte 102
      .byte -35
      .byte 102
      .byte -35
      .byte 6
      .byte -72
      .byte 6
      .byte -72
      .byte -95
      .byte -35
      .byte -95
      .byte -35
      .byte 37
      .byte 41
      .byte 37
      .byte 41
      .byte 8
      .byte -95
      .byte 8
      .byte -95
      .byte -87
      .byte 109
      .byte -87
      .byte 109
      .byte 35
      .byte 6
      .byte 35
      .byte 6
      .byte -51
      .byte 0
      .byte -51
      .byte 0
      .byte 102
      .byte 11
      .byte 102
      .byte 11
      .byte 6
      .byte 6
      .byte 6
      .byte 6
      .byte -95
      .byte 10
      .byte -95
      .byte 10
      .byte 37
      .byte 10
      .byte 37
      .byte 10
      .byte 8
      .byte 9
      .byte 8
      .byte 9
      .byte -87
      .byte 2
      .byte -87
      .byte 2
      .byte 69
      .byte -122
      .byte 69
      .byte -122
      .byte 69
      .byte -122
      .byte 69
      .byte -122
      .byte -62
      .byte 43
      .byte -62
      .byte 43
      .byte -62
      .byte 43
      .byte -62
      .byte 43
      .byte -78
      .byte -6
      .byte -78
      .byte -6
      .byte -78
      .byte -6
      .byte -78
      .byte -6
      .byte 63
      .byte -42
      .byte 63
      .byte -42
      .byte 63
      .byte -42
      .byte 63
      .byte -42
      .byte 69
      .byte 7
      .byte 69
      .byte 7
      .byte 69
      .byte 7
      .byte 69
      .byte 7
      .byte -62
      .byte 5
      .byte -62
      .byte 5
      .byte -62
      .byte 5
      .byte -62
      .byte 5
      .byte -78
      .byte 4
      .byte -78
      .byte 4
      .byte -78
      .byte 4
      .byte -78
      .byte 4
      .byte 63
      .byte 9
      .byte 63
      .byte 9
      .byte 63
      .byte 9
      .byte 63
      .byte 9
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte 55
      .byte 65
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte -30
      .byte -111
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte 55
      .byte 12
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -30
      .byte 11
      .byte -19
      .byte -4
      .byte -19
      .byte -4
      .byte -19
      .byte 5
      .byte -19
      .byte 5
      .byte 75
      .byte 49
      .byte -72
      .byte -77
      .byte -92
      .byte -73
      .byte 125
      .byte -79
      .byte -94
      .byte -50
      .byte 54
      .byte 73
      .byte -109
      .byte -119
      .byte -9
      .byte 126
      .byte -116
      .byte -22
      .byte -52
      .byte -91
      .byte -21
      .byte 17
      .byte -74
      .byte -52
      .byte -104
      .byte 84
      .byte -102
      .byte 55
      .byte -74
      .byte -53
      .byte 83
      .byte -44
      .byte 75
      .byte 0
      .byte -72
      .byte 11
      .byte -92
      .byte 11
      .byte 125
      .byte 10
      .byte -94
      .byte 8
      .byte 54
      .byte 7
      .byte -109
      .byte 0
      .byte -9
      .byte 9
      .byte -116
      .byte 6
      .byte -52
      .byte 1
      .byte -21
      .byte 0
      .byte -74
      .byte 10
      .byte -104
      .byte 12
      .byte -102
      .byte 9
      .byte -74
      .byte 9
      .byte 83
      .byte 11
      .byte -100
      .byte 20
      .byte 95
      .byte 56
      .byte 104
      .byte -69
      .byte 54
      .byte 72
      .byte 90
      .byte 112
      .byte 9
      .byte -114
      .byte 122
      .byte -42
      .byte -10
      .byte -126
      .byte -37
      .byte -25
      .byte 35
      .byte 58
      .byte 80
      .byte -4
      .byte 91
      .byte 108
      .byte -13
      .byte -81
      .byte -29
      .byte 125
      .byte -42
      .byte 44
      .byte 79
      .byte 1
      .byte -100
      .byte 0
      .byte 95
      .byte 11
      .byte 104
      .byte 3
      .byte 54
      .byte 6
      .byte 90
      .byte 2
      .byte 9
      .byte 3
      .byte 122
      .byte 8
      .byte -10
      .byte 0
      .byte -37
      .byte 6
      .byte 35
      .byte 1
      .byte 80
      .byte 12
      .byte 91
      .byte 11
      .byte -13
      .byte 6
      .byte -29
      .byte 4
      .byte -42
      .byte 10
      .byte 79
      .byte 4
      .byte 68
      .byte -109
      .byte -125
      .byte 101
      .byte -118
      .byte 2
      .byte 82
      .byte -36
      .byte -102
      .byte 48
      .byte 64
      .byte -63
      .byte 8
      .byte -104
      .byte -3
      .byte 49
      .byte 8
      .byte -98
      .byte 26
      .byte -81
      .byte 46
      .byte -79
      .byte 13
      .byte 92
      .byte 10
      .byte -121
      .byte 40
      .byte -6
      .byte 117
      .byte 25
      .byte 58
      .byte 22
      .byte 68
      .byte 7
      .byte -125
      .byte 12
      .byte -118
      .byte 4
      .byte 82
      .byte 6
      .byte -102
      .byte 2
      .byte 64
      .byte 1
      .byte 8
      .byte 0
      .byte -3
      .byte 10
      .byte 8
      .byte 6
      .byte 26
      .byte 1
      .byte 46
      .byte 7
      .byte 13
      .byte 5
      .byte 10
      .byte 9
      .byte 40
      .byte 2
      .byte 117
      .byte 10
      .byte 58
      .byte 8
      .byte -126
      .byte 102
      .byte -126
      .byte 102
      .byte 66
      .byte -84
      .byte 66
      .byte -84
      .byte 79
      .byte 4
      .byte 79
      .byte 4
      .byte 61
      .byte -22
      .byte 61
      .byte -22
      .byte -126
      .byte 113
      .byte -126
      .byte 113
      .byte -7
      .byte 102
      .byte -7
      .byte 102
      .byte 45
      .byte -68
      .byte 45
      .byte -68
      .byte -60
      .byte 22
      .byte -60
      .byte 22
      .byte -126
      .byte 0
      .byte -126
      .byte 0
      .byte 66
      .byte 6
      .byte 66
      .byte 6
      .byte 79
      .byte 7
      .byte 79
      .byte 7
      .byte 61
      .byte 3
      .byte 61
      .byte 3
      .byte -126
      .byte 11
      .byte -126
      .byte 11
      .byte -7
      .byte 11
      .byte -7
      .byte 11
      .byte 45
      .byte 5
      .byte 45
      .byte 5
      .byte -60
      .byte 10
      .byte -60
      .byte 10
      .byte 75
      .byte 61
      .byte 75
      .byte 61
      .byte 75
      .byte 61
      .byte 75
      .byte 61
      .byte -40
      .byte 14
      .byte -40
      .byte 14
      .byte -40
      .byte 14
      .byte -40
      .byte 14
      .byte -109
      .byte -109
      .byte -109
      .byte -109
      .byte -109
      .byte -109
      .byte -109
      .byte -109
      .byte -85
      .byte 81
      .byte -85
      .byte 81
      .byte -85
      .byte 81
      .byte -85
      .byte 81
      .byte 75
      .byte 12
      .byte 75
      .byte 12
      .byte 75
      .byte 12
      .byte 75
      .byte 12
      .byte -40
      .byte 6
      .byte -40
      .byte 6
      .byte -40
      .byte 6
      .byte -40
      .byte 6
      .byte -109
      .byte 10
      .byte -109
      .byte 10
      .byte -109
      .byte 10
      .byte -109
      .byte 10
      .byte -85
      .byte 0
      .byte -85
      .byte 0
      .byte -85
      .byte 0
      .byte -85
      .byte 0
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 115
      .byte 48
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 44
      .byte -53
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 115
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 44
      .byte 7
      .byte 103
      .byte -58
      .byte 103
      .byte -58
      .byte 103
      .byte 1
      .byte 103
      .byte 1
      .byte -116
      .byte -21
      .byte -116
      .byte -21
      .byte -116
      .byte 7
      .byte -116
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 123
      .byte 11
      .byte 123
      .byte 11
      .byte 10
      .byte 11
      .byte 10
      .byte -102
      .byte 57
      .byte -102
      .byte 57
      .byte -102
      .byte 11
      .byte -102
      .byte 11
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -43
      .byte 52
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -114
      .byte -49
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -43
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte -114
      .byte 5
      .byte 86
      .byte -82
      .byte 86
      .byte -82
      .byte 86
      .byte -82
      .byte 86
      .byte -82
      .byte 110
      .byte 108
      .byte 110
      .byte 108
      .byte 110
      .byte 108
      .byte 110
      .byte 108
      .byte 41
      .byte -15
      .byte 41
      .byte -15
      .byte 41
      .byte -15
      .byte 41
      .byte -15
      .byte -74
      .byte -62
      .byte -74
      .byte -62
      .byte -74
      .byte -62
      .byte -74
      .byte -62
      .byte 86
      .byte 12
      .byte 86
      .byte 12
      .byte 86
      .byte 12
      .byte 86
      .byte 12
      .byte 110
      .byte 2
      .byte 110
      .byte 2
      .byte 110
      .byte 2
      .byte 110
      .byte 2
      .byte 41
      .byte 6
      .byte 41
      .byte 6
      .byte 41
      .byte 6
      .byte 41
      .byte 6
      .byte -74
      .byte 0
      .byte -74
      .byte 0
      .byte -74
      .byte 0
      .byte -74
      .byte 0
      .byte 61
      .byte -23
      .byte 61
      .byte -23
      .byte -44
      .byte 67
      .byte -44
      .byte 67
      .byte 8
      .byte -103
      .byte 8
      .byte -103
      .byte 127
      .byte -114
      .byte 127
      .byte -114
      .byte -60
      .byte 21
      .byte -60
      .byte 21
      .byte -78
      .byte -5
      .byte -78
      .byte -5
      .byte -65
      .byte 83
      .byte -65
      .byte 83
      .byte 127
      .byte -103
      .byte 127
      .byte -103
      .byte 61
      .byte 2
      .byte 61
      .byte 2
      .byte -44
      .byte 7
      .byte -44
      .byte 7
      .byte 8
      .byte 1
      .byte 8
      .byte 1
      .byte 127
      .byte 1
      .byte 127
      .byte 1
      .byte -60
      .byte 9
      .byte -60
      .byte 9
      .byte -78
      .byte 5
      .byte -78
      .byte 5
      .byte -65
      .byte 6
      .byte -65
      .byte 6
      .byte 127
      .byte 12
      .byte 127
      .byte 12
      .byte -57
      .byte -23
      .byte -116
      .byte -26
      .byte -39
      .byte 5
      .byte -9
      .byte 120
      .byte -12
      .byte -93
      .byte -45
      .byte 78
      .byte -25
      .byte 80
      .byte -7
      .byte 97
      .byte 4
      .byte -50
      .byte -7
      .byte 103
      .byte -63
      .byte 62
      .byte 103
      .byte -49
      .byte -81
      .byte 35
      .byte 119
      .byte -3
      .byte 126
      .byte -102
      .byte -67
      .byte 108
      .byte -57
      .byte 4
      .byte -116
      .byte 2
      .byte -39
      .byte 10
      .byte -9
      .byte 3
      .byte -12
      .byte 7
      .byte -45
      .byte 5
      .byte -25
      .byte 11
      .byte -7
      .byte 6
      .byte 4
      .byte 2
      .byte -7
      .byte 12
      .byte -63
      .byte 11
      .byte 103
      .byte 10
      .byte -81
      .byte 6
      .byte 119
      .byte 8
      .byte 126
      .byte 0
      .byte -67
      .byte 5
      .byte -78
      .byte -2
      .byte 43
      .byte -45
      .byte 30
      .byte -126
      .byte 14
      .byte 80
      .byte -90
      .byte -109
      .byte -79
      .byte 3
      .byte -34
      .byte -59
      .byte 38
      .byte 24
      .byte 11
      .byte 125
      .byte -121
      .byte 41
      .byte -8
      .byte 113
      .byte -89
      .byte -113
      .byte -53
      .byte -73
      .byte -103
      .byte 68
      .byte -94
      .byte -57
      .byte 101
      .byte -21
      .byte -78
      .byte 8
      .byte 43
      .byte 2
      .byte 30
      .byte 8
      .byte 14
      .byte 6
      .byte -90
      .byte 1
      .byte -79
      .byte 0
      .byte -34
      .byte 11
      .byte 38
      .byte 6
      .byte 11
      .byte 12
      .byte -121
      .byte 4
      .byte -8
      .byte 9
      .byte -89
      .byte 10
      .byte -53
      .byte 6
      .byte -103
      .byte 9
      .byte -94
      .byte 1
      .byte 101
      .byte 12
      .byte -82
      .byte 43
      .byte 75
      .byte 52
      .byte 103
      .byte -56
      .byte 105
      .byte -85
      .byte 75
      .byte 51
      .byte 22
      .byte -18
      .byte 53
      .byte 90
      .byte 117
      .byte 21
      .byte 10
      .byte -127
      .byte 110
      .byte 118
      .byte -53
      .byte -74
      .byte 95
      .byte 49
      .byte -124
      .byte 78
      .byte 93
      .byte 72
      .byte 73
      .byte 76
      .byte -74
      .byte -50
      .byte -82
      .byte 1
      .byte 75
      .byte 3
      .byte 103
      .byte 3
      .byte 105
      .byte 0
      .byte 75
      .byte 2
      .byte 22
      .byte 12
      .byte 53
      .byte 11
      .byte 117
      .byte 6
      .byte 10
      .byte 3
      .byte 110
      .byte 12
      .byte -53
      .byte 5
      .byte 95
      .byte 4
      .byte -124
      .byte 2
      .byte 93
      .byte 1
      .byte 73
      .byte 1
      .byte -74
      .byte 12
      .byte 20
      .byte 3
      .byte 20
      .byte 3
      .byte 20
      .byte 7
      .byte 20
      .byte 7
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte 31
      .byte 110
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte -54
      .byte -66
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte 31
      .byte 1
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -54
      .byte 0
      .byte -62
      .byte 41
      .byte -62
      .byte 41
      .byte -62
      .byte 41
      .byte -62
      .byte 41
      .byte 79
      .byte 5
      .byte 79
      .byte 5
      .byte 79
      .byte 5
      .byte 79
      .byte 5
      .byte 63
      .byte -44
      .byte 63
      .byte -44
      .byte 63
      .byte -44
      .byte 63
      .byte -44
      .byte -68
      .byte 121
      .byte -68
      .byte 121
      .byte -68
      .byte 121
      .byte -68
      .byte 121
      .byte -62
      .byte 3
      .byte -62
      .byte 3
      .byte -62
      .byte 3
      .byte -62
      .byte 3
      .byte 79
      .byte 8
      .byte 79
      .byte 8
      .byte 79
      .byte 8
      .byte 79
      .byte 8
      .byte 63
      .byte 7
      .byte 63
      .byte 7
      .byte 63
      .byte 7
      .byte 63
      .byte 7
      .byte -68
      .byte 5
      .byte -68
      .byte 5
      .byte -68
      .byte 5
      .byte -68
      .byte 5
      .byte 88
      .byte -110
      .byte 88
      .byte -110
      .byte -7
      .byte 94
      .byte -7
      .byte 94
      .byte -36
      .byte -42
      .byte -36
      .byte -42
      .byte 96
      .byte 34
      .byte 96
      .byte 34
      .byte -5
      .byte 71
      .byte -5
      .byte 71
      .byte -101
      .byte 34
      .byte -101
      .byte 34
      .byte 52
      .byte 104
      .byte 52
      .byte 104
      .byte -34
      .byte -64
      .byte -34
      .byte -64
      .byte 88
      .byte 10
      .byte 88
      .byte 10
      .byte -7
      .byte 3
      .byte -7
      .byte 3
      .byte -36
      .byte 2
      .byte -36
      .byte 2
      .byte 96
      .byte 2
      .byte 96
      .byte 2
      .byte -5
      .byte 6
      .byte -5
      .byte 6
      .byte -101
      .byte 1
      .byte -101
      .byte 1
      .byte 52
      .byte 12
      .byte 52
      .byte 12
      .byte -34
      .byte 6
      .byte -34
      .byte 6
      .byte -84
      .byte 77
      .byte -89
      .byte -111
      .byte -14
      .byte -63
      .byte 62
      .byte -35
      .byte 107
      .byte -111
      .byte 116
      .byte 35
      .byte 10
      .byte -118
      .byte 74
      .byte 71
      .byte 115
      .byte 52
      .byte -63
      .byte 54
      .byte 29
      .byte -114
      .byte 44
      .byte -50
      .byte -64
      .byte 65
      .byte -40
      .byte 16
      .byte -91
      .byte -95
      .byte 6
      .byte -70
      .byte -84
      .byte 9
      .byte -89
      .byte 12
      .byte -14
      .byte 11
      .byte 62
      .byte 3
      .byte 107
      .byte 0
      .byte 116
      .byte 7
      .byte 10
      .byte 12
      .byte 74
      .byte 9
      .byte 115
      .byte 11
      .byte -63
      .byte 3
      .byte 29
      .byte 7
      .byte 44
      .byte 10
      .byte -64
      .byte 1
      .byte -40
      .byte 8
      .byte -91
      .byte 2
      .byte 6
      .byte 8
      .byte 49
      .byte -122
      .byte 91
      .byte 99
      .byte 42
      .byte -29
      .byte 72
      .byte 95
      .byte 66
      .byte -82
      .byte -62
      .byte 42
      .byte -105
      .byte 94
      .byte 94
      .byte 66
      .byte 96
      .byte 40
      .byte 3
      .byte -31
      .byte 27
      .byte -88
      .byte -101
      .byte 42
      .byte -107
      .byte 123
      .byte -28
      .byte 111
      .byte -66
      .byte 93
      .byte -14
      .byte -69
      .byte 49
      .byte 3
      .byte 91
      .byte 2
      .byte 42
      .byte 5
      .byte 72
      .byte 7
      .byte 66
      .byte 8
      .byte -62
      .byte 4
      .byte -105
      .byte 9
      .byte 94
      .byte 8
      .byte 96
      .byte 8
      .byte 3
      .byte 8
      .byte 27
      .byte 7
      .byte -101
      .byte 9
      .byte -107
      .byte 12
      .byte -28
      .byte 3
      .byte -66
      .byte 3
      .byte -14
      .byte 5
      .byte 73
      .byte 79
      .byte 98
      .byte 8
      .byte -4
      .byte 59
      .byte -128
      .byte -127
      .byte 121
      .byte -25
      .byte -54
      .byte -59
      .byte -36
      .byte -44
      .byte -122
      .byte 56
      .byte 7
      .byte -84
      .byte 26
      .byte -79
      .byte -85
      .byte 90
      .byte -34
      .byte -69
      .byte -51
      .byte -94
      .byte -33
      .byte -80
      .byte 77
      .byte 30
      .byte 92
      .byte 90
      .byte 73
      .byte 4
      .byte 98
      .byte 2
      .byte -4
      .byte 7
      .byte -128
      .byte 1
      .byte 121
      .byte 12
      .byte -54
      .byte 7
      .byte -36
      .byte 0
      .byte -122
      .byte 6
      .byte 7
      .byte 7
      .byte 26
      .byte 3
      .byte -85
      .byte 9
      .byte -34
      .byte 1
      .byte -51
      .byte 11
      .byte -33
      .byte 3
      .byte 77
      .byte 7
      .byte 92
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 4
      .byte 5
      .byte 8
      .byte 9
      .byte 12
      .byte 13
      .byte 2
      .byte 3
      .byte 6
      .byte 7
      .byte 10
      .byte 11
      .byte 14
      .byte 15
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 4
      .byte 1
      .byte 0
      .byte 0
      .byte 4
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -126
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -118
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -117
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 9
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -118
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -120
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -117
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -119
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 3
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 2
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 10
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -127
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -128
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte 1
      .byte 0
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte -128
      .byte 0
      .byte -128
      .byte 0
      .byte 0
      .byte 0
      .byte -128
      .byte -8
      .byte 31
      .byte -32
      .byte 127
      .byte 4
      .byte 52
      .byte 1
      .byte 13
      .byte 0
      .byte 8
      .byte -128
      .byte 0
      .byte 15
      .byte 0
      .byte -16
      .byte 0
      .byte -1
      .byte 3
      .byte 0
      .byte 16
      .byte 15
      .byte 0
      .byte 1
      .byte 16
      .byte 15
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 1
      .byte 2
      .byte -1
      .byte 3
      .byte 4
      .byte 5
      .byte -1
      .byte 6
      .byte 7
      .byte 8
      .byte -1
      .byte 9
      .byte 10
      .byte 11
      .byte -1
      .byte 4
      .byte 5
      .byte 6
      .byte -1
      .byte 7
      .byte 8
      .byte 9
      .byte -1
      .byte 10
      .byte 11
      .byte 12
      .byte -1
      .byte 13
      .byte 14
      .byte 15
      .byte -1
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -5
      .byte 58
      .byte -91
      .byte 6
      .byte 15
      .byte 7
      .byte -76
      .byte 5
      .byte 67
      .byte 9
      .byte 34
      .byte 9
      .byte 29
      .byte 9
      .byte 52
      .byte 1
      .byte 108
      .byte 0
      .byte 35
      .byte 11
      .byte 102
      .byte 3
      .byte 86
      .byte 3
      .byte -26
      .byte 5
      .byte -25
      .byte 9
      .byte -2
      .byte 4
      .byte -6
      .byte 5
      .byte -95
      .byte 4
      .byte 123
      .byte 6
      .byte -93
      .byte 4
      .byte 37
      .byte 12
      .byte 106
      .byte 3
      .byte 55
      .byte 5
      .byte 63
      .byte 8
      .byte -120
      .byte 0
      .byte -65
      .byte 4
      .byte -127
      .byte 11
      .byte -71
      .byte 5
      .byte 5
      .byte 5
      .byte -41
      .byte 7
      .byte -97
      .byte 10
      .byte -90
      .byte 10
      .byte -72
      .byte 8
      .byte -48
      .byte 9
      .byte 75
      .byte 0
      .byte -100
      .byte 0
      .byte -72
      .byte 11
      .byte 95
      .byte 11
      .byte -92
      .byte 11
      .byte 104
      .byte 3
      .byte 125
      .byte 10
      .byte 54
      .byte 6
      .byte -94
      .byte 8
      .byte 90
      .byte 2
      .byte 54
      .byte 7
      .byte 9
      .byte 3
      .byte -109
      .byte 0
      .byte 122
      .byte 8
      .byte -9
      .byte 9
      .byte -10
      .byte 0
      .byte -116
      .byte 6
      .byte -37
      .byte 6
      .byte -52
      .byte 1
      .byte 35
      .byte 1
      .byte -21
      .byte 0
      .byte 80
      .byte 12
      .byte -74
      .byte 10
      .byte 91
      .byte 11
      .byte -104
      .byte 12
      .byte -13
      .byte 6
      .byte -102
      .byte 9
      .byte -29
      .byte 4
      .byte -74
      .byte 9
      .byte -42
      .byte 10
      .byte 83
      .byte 11
      .byte 79
      .byte 4
      .byte -5
      .byte 4
      .byte 92
      .byte 10
      .byte 41
      .byte 4
      .byte 65
      .byte 11
      .byte -43
      .byte 2
      .byte -28
      .byte 5
      .byte 64
      .byte 9
      .byte -114
      .byte 1
      .byte -73
      .byte 3
      .byte -9
      .byte 0
      .byte -115
      .byte 5
      .byte -106
      .byte 12
      .byte -61
      .byte 9
      .byte 15
      .byte 1
      .byte 90
      .byte 0
      .byte 85
      .byte 3
      .byte 68
      .byte 7
      .byte -125
      .byte 12
      .byte -118
      .byte 4
      .byte 82
      .byte 6
      .byte -102
      .byte 2
      .byte 64
      .byte 1
      .byte 8
      .byte 0
      .byte -3
      .byte 10
      .byte 8
      .byte 6
      .byte 26
      .byte 1
      .byte 46
      .byte 7
      .byte 13
      .byte 5
      .byte 10
      .byte 9
      .byte 40
      .byte 2
      .byte 117
      .byte 10
      .byte 58
      .byte 8
      .byte 35
      .byte 6
      .byte -51
      .byte 0
      .byte 102
      .byte 11
      .byte 6
      .byte 6
      .byte -95
      .byte 10
      .byte 37
      .byte 10
      .byte 8
      .byte 9
      .byte -87
      .byte 2
      .byte -126
      .byte 0
      .byte 66
      .byte 6
      .byte 79
      .byte 7
      .byte 61
      .byte 3
      .byte -126
      .byte 11
      .byte -7
      .byte 11
      .byte 45
      .byte 5
      .byte -60
      .byte 10
      .byte 69
      .byte 7
      .byte -62
      .byte 5
      .byte -78
      .byte 4
      .byte 63
      .byte 9
      .byte 75
      .byte 12
      .byte -40
      .byte 6
      .byte -109
      .byte 10
      .byte -85
      .byte 0
      .byte 55
      .byte 12
      .byte -30
      .byte 11
      .byte 115
      .byte 7
      .byte 44
      .byte 7
      .byte -19
      .byte 5
      .byte 103
      .byte 1
      .byte -10
      .byte 2
      .byte -95
      .byte 5
      .byte -19
      .byte 8
      .byte 11
      .byte 10
      .byte -102
      .byte 11
      .byte 20
      .byte 7
      .byte -43
      .byte 5
      .byte -114
      .byte 5
      .byte 31
      .byte 1
      .byte -54
      .byte 0
      .byte 86
      .byte 12
      .byte 110
      .byte 2
      .byte 41
      .byte 6
      .byte -74
      .byte 0
      .byte -62
      .byte 3
      .byte 79
      .byte 8
      .byte 63
      .byte 7
      .byte -68
      .byte 5
      .byte 61
      .byte 2
      .byte -44
      .byte 7
      .byte 8
      .byte 1
      .byte 127
      .byte 1
      .byte -60
      .byte 9
      .byte -78
      .byte 5
      .byte -65
      .byte 6
      .byte 127
      .byte 12
      .byte 88
      .byte 10
      .byte -7
      .byte 3
      .byte -36
      .byte 2
      .byte 96
      .byte 2
      .byte -5
      .byte 6
      .byte -101
      .byte 1
      .byte 52
      .byte 12
      .byte -34
      .byte 6
      .byte -57
      .byte 4
      .byte -116
      .byte 2
      .byte -39
      .byte 10
      .byte -9
      .byte 3
      .byte -12
      .byte 7
      .byte -45
      .byte 5
      .byte -25
      .byte 11
      .byte -7
      .byte 6
      .byte 4
      .byte 2
      .byte -7
      .byte 12
      .byte -63
      .byte 11
      .byte 103
      .byte 10
      .byte -81
      .byte 6
      .byte 119
      .byte 8
      .byte 126
      .byte 0
      .byte -67
      .byte 5
      .byte -84
      .byte 9
      .byte -89
      .byte 12
      .byte -14
      .byte 11
      .byte 62
      .byte 3
      .byte 107
      .byte 0
      .byte 116
      .byte 7
      .byte 10
      .byte 12
      .byte 74
      .byte 9
      .byte 115
      .byte 11
      .byte -63
      .byte 3
      .byte 29
      .byte 7
      .byte 44
      .byte 10
      .byte -64
      .byte 1
      .byte -40
      .byte 8
      .byte -91
      .byte 2
      .byte 6
      .byte 8
      .byte -78
      .byte 8
      .byte -82
      .byte 1
      .byte 43
      .byte 2
      .byte 75
      .byte 3
      .byte 30
      .byte 8
      .byte 103
      .byte 3
      .byte 14
      .byte 6
      .byte 105
      .byte 0
      .byte -90
      .byte 1
      .byte 75
      .byte 2
      .byte -79
      .byte 0
      .byte 22
      .byte 12
      .byte -34
      .byte 11
      .byte 53
      .byte 11
      .byte 38
      .byte 6
      .byte 117
      .byte 6
      .byte 11
      .byte 12
      .byte 10
      .byte 3
      .byte -121
      .byte 4
      .byte 110
      .byte 12
      .byte -8
      .byte 9
      .byte -53
      .byte 5
      .byte -89
      .byte 10
      .byte 95
      .byte 4
      .byte -53
      .byte 6
      .byte -124
      .byte 2
      .byte -103
      .byte 9
      .byte 93
      .byte 1
      .byte -94
      .byte 1
      .byte 73
      .byte 1
      .byte 101
      .byte 12
      .byte -74
      .byte 12
      .byte 49
      .byte 3
      .byte 73
      .byte 4
      .byte 91
      .byte 2
      .byte 98
      .byte 2
      .byte 42
      .byte 5
      .byte -4
      .byte 7
      .byte 72
      .byte 7
      .byte -128
      .byte 1
      .byte 66
      .byte 8
      .byte 121
      .byte 12
      .byte -62
      .byte 4
      .byte -54
      .byte 7
      .byte -105
      .byte 9
      .byte -36
      .byte 0
      .byte 94
      .byte 8
      .byte -122
      .byte 6
      .byte 96
      .byte 8
      .byte 7
      .byte 7
      .byte 3
      .byte 8
      .byte 26
      .byte 3
      .byte 27
      .byte 7
      .byte -85
      .byte 9
      .byte -101
      .byte 9
      .byte -34
      .byte 1
      .byte -107
      .byte 12
      .byte -51
      .byte 11
      .byte -28
      .byte 3
      .byte -33
      .byte 3
      .byte -66
      .byte 3
      .byte 77
      .byte 7
      .byte -14
      .byte 5
      .byte 92
      .byte 6
