	.att_syntax
	.text
	.p2align	5
	.globl	_jade_kem_kyber_kyber768_amd64_ref_dec
	.globl	jade_kem_kyber_kyber768_amd64_ref_dec
	.globl	_jade_kem_kyber_kyber768_amd64_ref_enc
	.globl	jade_kem_kyber_kyber768_amd64_ref_enc
	.globl	_jade_kem_kyber_kyber768_amd64_ref_keypair
	.globl	jade_kem_kyber_kyber768_amd64_ref_keypair
_jade_kem_kyber_kyber768_amd64_ref_dec:
jade_kem_kyber_kyber768_amd64_ref_dec:
	movq	%rsp, %rax
	leaq	-14560(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 14552(%rsp)
	movq	%rbx, 14504(%rsp)
	movq	%rbp, 14512(%rsp)
	movq	%r12, 14520(%rsp)
	movq	%r13, 14528(%rsp)
	movq	%r14, 14536(%rsp)
	movq	%r15, 14544(%rsp)
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	leaq	80(%rsp), %rax
	movq	$0, %rcx
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$207
Ljade_kem_kyber_kyber768_amd64_ref_dec$208:
	movzbl	(%rsi,%rdi), %r8d
	leaq	1(%rdi), %rdi
	movzbl	(%rsi,%rdi), %r9d
	leaq	1(%rdi), %rdi
	movzbl	(%rsi,%rdi), %r10d
	leaq	1(%rdi), %rdi
	movzbl	(%rsi,%rdi), %r11d
	leaq	1(%rdi), %rdi
	movzbl	(%rsi,%rdi), %ebx
	leaq	1(%rdi), %rdi
	movl	%r9d, %ebp
	shrl	$2, %r9d
	andl	$3, %ebp
	shll	$8, %ebp
	orl 	%ebp, %r8d
	movl	%r10d, %ebp
	shrl	$4, %r10d
	andl	$15, %ebp
	shll	$6, %ebp
	orl 	%ebp, %r9d
	movl	%r11d, %ebp
	shrl	$6, %r11d
	andl	$63, %ebp
	shll	$4, %ebp
	orl 	%ebp, %r10d
	shll	$2, %ebx
	orl 	%ebx, %r11d
	imull	$3329, %r8d, %r8d
	leal	512(%r8), %r8d
	shrl	$10, %r8d
	movw	%r8w, 2456(%rsp,%rcx,2)
	leaq	1(%rcx), %rcx
	imull	$3329, %r9d, %r8d
	leal	512(%r8), %r8d
	shrl	$10, %r8d
	movw	%r8w, 2456(%rsp,%rcx,2)
	leaq	1(%rcx), %rcx
	imull	$3329, %r10d, %r8d
	leal	512(%r8), %r8d
	shrl	$10, %r8d
	movw	%r8w, 2456(%rsp,%rcx,2)
	leaq	1(%rcx), %rcx
	imull	$3329, %r11d, %r8d
	leal	512(%r8), %r8d
	shrl	$10, %r8d
	movw	%r8w, 2456(%rsp,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$207:
	cmpq	$768, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$208
	leaq	960(%rsi), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$206(%rip), %r11
	jmp 	L_poly_decompress$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$206:
	movq	%rdx, %rsi
	leaq	3992(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$205(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$205:
	leaq	384(%rsi), %rsi
	leaq	4504(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$204(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$204:
	leaq	384(%rsi), %rsi
	leaq	5016(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$203(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$203:
	leaq	2456(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$202(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$202:
	leaq	2968(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$201(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$201:
	leaq	3480(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$200(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$200:
	leaq	920(%rsp), %rdi
	leaq	3992(%rsp), %rcx
	leaq	2456(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$199(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$199:
	leaq	16(%rsp), %rsp
	leaq	1432(%rsp), %rdi
	leaq	4504(%rsp), %rcx
	leaq	2968(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$198(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$198:
	leaq	16(%rsp), %rsp
	leaq	920(%rsp), %rcx
	leaq	1432(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$197(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$197:
	leaq	1432(%rsp), %rdi
	leaq	5016(%rsp), %rcx
	leaq	3480(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$196(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$196:
	leaq	16(%rsp), %rsp
	leaq	920(%rsp), %rcx
	leaq	1432(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$195(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$195:
	leaq	920(%rsp), %rcx
	movq	$0, %rsi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$193
Ljade_kem_kyber_kyber768_amd64_ref_dec$194:
	movw	(%rcx,%rsi,2), %di
	movswl	%di, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %di
	movw	%di, (%rcx,%rsi,2)
	leaq	1(%rsi), %rsi
Ljade_kem_kyber_kyber768_amd64_ref_dec$193:
	cmpq	$256, %rsi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$194
	leaq	920(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$192(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$192:
	leaq	1432(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	920(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$191(%rip), %r11
	jmp 	L_poly_sub$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$191:
	leaq	1432(%rsp), %rcx
	movq	$0, %rsi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$189
Ljade_kem_kyber_kyber768_amd64_ref_dec$190:
	movw	(%rcx,%rsi,2), %di
	movswl	%di, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %di
	movw	%di, (%rcx,%rsi,2)
	leaq	1(%rsi), %rsi
Ljade_kem_kyber_kyber768_amd64_ref_dec$189:
	cmpq	$256, %rsi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$190
	leaq	1432(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$188(%rip), %rcx
	jmp 	L_i_poly_tomsg$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$188:
	leaq	32(%rdx), %rax
	leaq	2304(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, 112(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 120(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 128(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 136(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	144(%rsp), %rax
	leaq	80(%rsp), %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$187(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_sha3_512_64$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$187:
	leaq	216(%rsp), %rsp
	movq	16(%rsp), %rax
	leaq	1152(%rax), %rdx
	leaq	13410(%rsp), %rsi
	leaq	80(%rsp), %rcx
	leaq	176(%rsp), %rax
	movq	%rsi, 24(%rsp)
	movq	%rdx, %rsi
	leaq	2456(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$186(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$186:
	leaq	384(%rsi), %rsi
	leaq	2968(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$185(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$185:
	leaq	384(%rsi), %rsi
	leaq	3480(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$184(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$184:
	movq	$0, %rsi
	leaq	1152(%rdx), %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$182
Ljade_kem_kyber_kyber768_amd64_ref_dec$183:
	movq	(%rdx), %rdi
	movq	%rdi, 48(%rsp,%rsi,8)
	leaq	8(%rdx), %rdx
	leaq	1(%rsi), %rsi
Ljade_kem_kyber_kyber768_amd64_ref_dec$182:
	cmpq	$4, %rsi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$183
	leaq	1432(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$181(%rip), %rsi
	jmp 	L_i_poly_frommsg$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$181:
	movq	$1, %rcx
	movq	%rcx, 32(%rsp)
	movb	48(%rsp), %cl
	movb	%cl, 13208(%rsp)
	movb	49(%rsp), %cl
	movb	%cl, 13209(%rsp)
	movb	50(%rsp), %cl
	movb	%cl, 13210(%rsp)
	movb	51(%rsp), %cl
	movb	%cl, 13211(%rsp)
	movb	52(%rsp), %cl
	movb	%cl, 13212(%rsp)
	movb	53(%rsp), %cl
	movb	%cl, 13213(%rsp)
	movb	54(%rsp), %cl
	movb	%cl, 13214(%rsp)
	movb	55(%rsp), %cl
	movb	%cl, 13215(%rsp)
	movb	56(%rsp), %cl
	movb	%cl, 13216(%rsp)
	movb	57(%rsp), %cl
	movb	%cl, 13217(%rsp)
	movb	58(%rsp), %cl
	movb	%cl, 13218(%rsp)
	movb	59(%rsp), %cl
	movb	%cl, 13219(%rsp)
	movb	60(%rsp), %cl
	movb	%cl, 13220(%rsp)
	movb	61(%rsp), %cl
	movb	%cl, 13221(%rsp)
	movb	62(%rsp), %cl
	movb	%cl, 13222(%rsp)
	movb	63(%rsp), %cl
	movb	%cl, 13223(%rsp)
	movb	64(%rsp), %cl
	movb	%cl, 13224(%rsp)
	movb	65(%rsp), %cl
	movb	%cl, 13225(%rsp)
	movb	66(%rsp), %cl
	movb	%cl, 13226(%rsp)
	movb	67(%rsp), %cl
	movb	%cl, 13227(%rsp)
	movb	68(%rsp), %cl
	movb	%cl, 13228(%rsp)
	movb	69(%rsp), %cl
	movb	%cl, 13229(%rsp)
	movb	70(%rsp), %cl
	movb	%cl, 13230(%rsp)
	movb	71(%rsp), %cl
	movb	%cl, 13231(%rsp)
	movb	72(%rsp), %cl
	movb	%cl, 13232(%rsp)
	movb	73(%rsp), %cl
	movb	%cl, 13233(%rsp)
	movb	74(%rsp), %cl
	movb	%cl, 13234(%rsp)
	movb	75(%rsp), %cl
	movb	%cl, 13235(%rsp)
	movb	76(%rsp), %cl
	movb	%cl, 13236(%rsp)
	movb	77(%rsp), %cl
	movb	%cl, 13237(%rsp)
	movb	78(%rsp), %cl
	movb	%cl, 13238(%rsp)
	movb	79(%rsp), %cl
	movb	%cl, 13239(%rsp)
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$179
	movb	$0, 13240(%rsp)
	movb	$0, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$180
Ljade_kem_kyber_kyber768_amd64_ref_dec$179:
	movb	$0, 13240(%rsp)
	movb	$0, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$180:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$178(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$178:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$170
Ljade_kem_kyber_kyber768_amd64_ref_dec$171:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$177(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$177:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$172
Ljade_kem_kyber_kyber768_amd64_ref_dec$173:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$176
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$176:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$174
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$174
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$175:
Ljade_kem_kyber_kyber768_amd64_ref_dec$174:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$172:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$173
Ljade_kem_kyber_kyber768_amd64_ref_dec$170:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$171
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$168
Ljade_kem_kyber_kyber768_amd64_ref_dec$169:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$168:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$169
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$166
	movb	$0, 13240(%rsp)
	movb	$1, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$167
Ljade_kem_kyber_kyber768_amd64_ref_dec$166:
	movb	$1, 13240(%rsp)
	movb	$0, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$167:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$165(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$165:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$157
Ljade_kem_kyber_kyber768_amd64_ref_dec$158:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$164(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$164:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$159
Ljade_kem_kyber_kyber768_amd64_ref_dec$160:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$163
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$163:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$161
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$161
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$162:
Ljade_kem_kyber_kyber768_amd64_ref_dec$161:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$159:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$160
Ljade_kem_kyber_kyber768_amd64_ref_dec$157:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$158
	movq	$0, %rcx
	movq	$256, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$155
Ljade_kem_kyber_kyber768_amd64_ref_dec$156:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$155:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$156
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$153
	movb	$0, 13240(%rsp)
	movb	$2, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$154
Ljade_kem_kyber_kyber768_amd64_ref_dec$153:
	movb	$2, 13240(%rsp)
	movb	$0, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$154:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$152(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$152:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$144
Ljade_kem_kyber_kyber768_amd64_ref_dec$145:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$151(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$151:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$146
Ljade_kem_kyber_kyber768_amd64_ref_dec$147:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$150
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$150:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$148
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$148
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$149:
Ljade_kem_kyber_kyber768_amd64_ref_dec$148:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$146:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$147
Ljade_kem_kyber_kyber768_amd64_ref_dec$144:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$145
	movq	$0, %rcx
	movq	$512, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$142
Ljade_kem_kyber_kyber768_amd64_ref_dec$143:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$142:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$143
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$140
	movb	$1, 13240(%rsp)
	movb	$0, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$141
Ljade_kem_kyber_kyber768_amd64_ref_dec$140:
	movb	$0, 13240(%rsp)
	movb	$1, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$141:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$139(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$139:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$131
Ljade_kem_kyber_kyber768_amd64_ref_dec$132:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$138(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$138:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$133
Ljade_kem_kyber_kyber768_amd64_ref_dec$134:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$137
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$137:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$135
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$135
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$136:
Ljade_kem_kyber_kyber768_amd64_ref_dec$135:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$133:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$134
Ljade_kem_kyber_kyber768_amd64_ref_dec$131:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$132
	movq	$0, %rcx
	movq	$768, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$129
Ljade_kem_kyber_kyber768_amd64_ref_dec$130:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$129:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$130
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$127
	movb	$1, 13240(%rsp)
	movb	$1, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$128
Ljade_kem_kyber_kyber768_amd64_ref_dec$127:
	movb	$1, 13240(%rsp)
	movb	$1, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$128:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$126(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$126:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$118
Ljade_kem_kyber_kyber768_amd64_ref_dec$119:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$125(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$125:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$120
Ljade_kem_kyber_kyber768_amd64_ref_dec$121:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$124
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$124:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$122
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$122
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$123:
Ljade_kem_kyber_kyber768_amd64_ref_dec$122:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$120:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$121
Ljade_kem_kyber_kyber768_amd64_ref_dec$118:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$119
	movq	$0, %rcx
	movq	$1024, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$116
Ljade_kem_kyber_kyber768_amd64_ref_dec$117:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$116:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$117
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$114
	movb	$1, 13240(%rsp)
	movb	$2, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$115
Ljade_kem_kyber_kyber768_amd64_ref_dec$114:
	movb	$2, 13240(%rsp)
	movb	$1, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$115:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$113(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$113:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$105
Ljade_kem_kyber_kyber768_amd64_ref_dec$106:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$112(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$112:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$107
Ljade_kem_kyber_kyber768_amd64_ref_dec$108:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$111
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$111:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$109
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$109
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$110:
Ljade_kem_kyber_kyber768_amd64_ref_dec$109:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$107:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$108
Ljade_kem_kyber_kyber768_amd64_ref_dec$105:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$106
	movq	$0, %rcx
	movq	$1280, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$103
Ljade_kem_kyber_kyber768_amd64_ref_dec$104:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$103:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$104
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$101
	movb	$2, 13240(%rsp)
	movb	$0, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$102
Ljade_kem_kyber_kyber768_amd64_ref_dec$101:
	movb	$0, 13240(%rsp)
	movb	$2, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$102:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$100(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$100:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$92
Ljade_kem_kyber_kyber768_amd64_ref_dec$93:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$99(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$99:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$94
Ljade_kem_kyber_kyber768_amd64_ref_dec$95:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$98
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$98:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$96
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$96
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$97:
Ljade_kem_kyber_kyber768_amd64_ref_dec$96:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$94:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$95
Ljade_kem_kyber_kyber768_amd64_ref_dec$92:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$93
	movq	$0, %rcx
	movq	$1536, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$90
Ljade_kem_kyber_kyber768_amd64_ref_dec$91:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$90:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$91
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$88
	movb	$2, 13240(%rsp)
	movb	$1, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$89
Ljade_kem_kyber_kyber768_amd64_ref_dec$88:
	movb	$1, 13240(%rsp)
	movb	$2, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$89:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$87(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$87:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$79
Ljade_kem_kyber_kyber768_amd64_ref_dec$80:
	movq	%r8, 40(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$86(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$86:
	movq	40(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$81
Ljade_kem_kyber_kyber768_amd64_ref_dec$82:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$85
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$85:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$83
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$83
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$84:
Ljade_kem_kyber_kyber768_amd64_ref_dec$83:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$81:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$82
Ljade_kem_kyber_kyber768_amd64_ref_dec$79:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$80
	movq	$0, %rcx
	movq	$1792, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$77
Ljade_kem_kyber_kyber768_amd64_ref_dec$78:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$77:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$78
	movq	32(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$75
	movb	$2, 13240(%rsp)
	movb	$2, 13241(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$76
Ljade_kem_kyber_kyber768_amd64_ref_dec$75:
	movb	$2, 13240(%rsp)
	movb	$2, 13241(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_dec$76:
	leaq	208(%rsp), %rcx
	leaq	13208(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$74(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$74:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$66
Ljade_kem_kyber_kyber768_amd64_ref_dec$67:
	movq	%r8, 32(%rsp)
	leaq	208(%rsp), %rcx
	leaq	13242(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$73(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$73:
	movq	32(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$68
Ljade_kem_kyber_kyber768_amd64_ref_dec$69:
	movzbw	13242(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13242(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$72
	movw	%dx, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$72:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$70
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_dec$70
	movw	%di, 920(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_dec$71:
Ljade_kem_kyber_kyber768_amd64_ref_dec$70:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$68:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_dec$69
Ljade_kem_kyber_kyber768_amd64_ref_dec$66:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$67
	movq	$0, %rcx
	movq	$2048, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$64
Ljade_kem_kyber_kyber768_amd64_ref_dec$65:
	movw	920(%rsp,%rcx,2), %si
	movw	%si, 8600(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_dec$64:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$65
	movb	$0, %cl
	leaq	3992(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$63(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$63:
	leaq	176(%rsp), %rsp
	movb	$1, %cl
	leaq	4504(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$62(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$62:
	leaq	176(%rsp), %rsp
	movb	$2, %cl
	leaq	5016(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$61(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$61:
	leaq	176(%rsp), %rsp
	movb	$3, %cl
	leaq	5528(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$60(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$60:
	leaq	176(%rsp), %rsp
	movb	$4, %cl
	leaq	6040(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$59(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$59:
	leaq	176(%rsp), %rsp
	movb	$5, %cl
	leaq	6552(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$58(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$58:
	leaq	176(%rsp), %rsp
	movb	$6, %cl
	leaq	920(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$57(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$57:
	leaq	176(%rsp), %rsp
	leaq	3992(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$56(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$56:
	leaq	4504(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$55(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$55:
	leaq	5016(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$54(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$54:
	leaq	7064(%rsp), %rdi
	leaq	8600(%rsp), %rcx
	leaq	3992(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$53(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$53:
	leaq	16(%rsp), %rsp
	leaq	408(%rsp), %rdi
	leaq	9112(%rsp), %rcx
	leaq	4504(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$52(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$52:
	leaq	16(%rsp), %rsp
	leaq	7064(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$51(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$51:
	leaq	408(%rsp), %rdi
	leaq	9624(%rsp), %rcx
	leaq	5016(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$50(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$50:
	leaq	16(%rsp), %rsp
	leaq	7064(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$49(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$49:
	leaq	7064(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$47
Ljade_kem_kyber_kyber768_amd64_ref_dec$48:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$47:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$48
	leaq	7576(%rsp), %rdi
	leaq	10136(%rsp), %rcx
	leaq	3992(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$46(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$46:
	leaq	16(%rsp), %rsp
	leaq	408(%rsp), %rdi
	leaq	10648(%rsp), %rcx
	leaq	4504(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$45(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$45:
	leaq	16(%rsp), %rsp
	leaq	7576(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$44(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$44:
	leaq	408(%rsp), %rdi
	leaq	11160(%rsp), %rcx
	leaq	5016(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$43(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$43:
	leaq	16(%rsp), %rsp
	leaq	7576(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$42(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$42:
	leaq	7576(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$40
Ljade_kem_kyber_kyber768_amd64_ref_dec$41:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$40:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$41
	leaq	8088(%rsp), %rdi
	leaq	11672(%rsp), %rcx
	leaq	3992(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$39(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$39:
	leaq	16(%rsp), %rsp
	leaq	408(%rsp), %rdi
	leaq	12184(%rsp), %rcx
	leaq	4504(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$38(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$38:
	leaq	16(%rsp), %rsp
	leaq	8088(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$37(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$37:
	leaq	408(%rsp), %rdi
	leaq	12696(%rsp), %rcx
	leaq	5016(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$36(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$36:
	leaq	16(%rsp), %rsp
	leaq	8088(%rsp), %rcx
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$35(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$35:
	leaq	8088(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$33
Ljade_kem_kyber_kyber768_amd64_ref_dec$34:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$33:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$34
	leaq	408(%rsp), %rdi
	leaq	2456(%rsp), %rcx
	leaq	3992(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$32(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$32:
	leaq	16(%rsp), %rsp
	leaq	1944(%rsp), %rdi
	leaq	2968(%rsp), %rcx
	leaq	4504(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$31(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$31:
	leaq	16(%rsp), %rsp
	leaq	408(%rsp), %rcx
	leaq	1944(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$30(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$30:
	leaq	1944(%rsp), %rdi
	leaq	3480(%rsp), %rcx
	leaq	5016(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$29(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$29:
	leaq	16(%rsp), %rsp
	leaq	408(%rsp), %rcx
	leaq	1944(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$28(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$28:
	leaq	408(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$26
Ljade_kem_kyber_kyber768_amd64_ref_dec$27:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$26:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$27
	leaq	7064(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$25(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$25:
	leaq	7576(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$24(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$24:
	leaq	8088(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$23(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$23:
	leaq	408(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$22(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$22:
	leaq	7064(%rsp), %rcx
	leaq	5528(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$21(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$21:
	leaq	7576(%rsp), %rcx
	leaq	6040(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$20(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$20:
	leaq	8088(%rsp), %rcx
	leaq	6552(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$19(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$19:
	leaq	408(%rsp), %rcx
	leaq	920(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$18(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$18:
	leaq	408(%rsp), %rcx
	leaq	1432(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$17(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$17:
	leaq	7064(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$15
Ljade_kem_kyber_kyber768_amd64_ref_dec$16:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$15:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$16
	leaq	7576(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$13
Ljade_kem_kyber_kyber768_amd64_ref_dec$14:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$13:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$14
	leaq	8088(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$11
Ljade_kem_kyber_kyber768_amd64_ref_dec$12:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$11:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$12
	leaq	408(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$9
Ljade_kem_kyber_kyber768_amd64_ref_dec$10:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_dec$9:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$10
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	$0, %rdx
	movq	$0, %r11
	leaq	7064(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$8(%rip), %r10
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$8:
	leaq	7576(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$7(%rip), %r10
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$7:
	leaq	8088(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$6(%rip), %r10
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$6:
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_dec$4
Ljade_kem_kyber_kyber768_amd64_ref_dec$5:
	movzwq	7064(%rsp,%rdx,2), %rsi
	leaq	1(%rdx), %rdx
	shlq	$10, %rsi
	leaq	1665(%rsi), %rsi
	imulq	$1290167, %rsi, %rsi
	shrq	$32, %rsi
	andq	$1023, %rsi
	movzwq	7064(%rsp,%rdx,2), %rdi
	leaq	1(%rdx), %rdx
	shlq	$10, %rdi
	leaq	1665(%rdi), %rdi
	imulq	$1290167, %rdi, %rdi
	shrq	$32, %rdi
	andq	$1023, %rdi
	movzwq	7064(%rsp,%rdx,2), %r8
	leaq	1(%rdx), %rdx
	shlq	$10, %r8
	leaq	1665(%r8), %r8
	imulq	$1290167, %r8, %r8
	shrq	$32, %r8
	andq	$1023, %r8
	movzwq	7064(%rsp,%rdx,2), %r9
	leaq	1(%rdx), %rdx
	shlq	$10, %r9
	leaq	1665(%r9), %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movw	%si, %r10w
	andw	$255, %r10w
	movb	%r10b, (%rcx,%r11)
	leaq	1(%r11), %r10
	shrw	$8, %si
	movw	%di, %r11w
	shlw	$2, %r11w
	orw 	%si, %r11w
	movb	%r11b, (%rcx,%r10)
	leaq	1(%r10), %rsi
	shrw	$6, %di
	movw	%r8w, %r10w
	shlw	$4, %r10w
	orw 	%di, %r10w
	movb	%r10b, (%rcx,%rsi)
	leaq	1(%rsi), %rsi
	shrw	$4, %r8w
	movw	%r9w, %di
	shlw	$6, %di
	orw 	%r8w, %di
	movb	%dil, (%rcx,%rsi)
	leaq	1(%rsi), %rsi
	shrq	$2, %r9
	movb	%r9b, (%rcx,%rsi)
	leaq	1(%rsi), %r11
Ljade_kem_kyber_kyber768_amd64_ref_dec$4:
	cmpq	$768, %rdx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_dec$5
	leaq	960(%rax), %rax
	leaq	408(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$3(%rip), %rcx
	jmp 	L_i_poly_compress$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$3:
	movq	8(%rsp), %rsi
	leaq	13410(%rsp), %rax
	movq	$0, %rcx
	movb	(%rax), %dl
	movb	(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1(%rax), %dl
	movb	1(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	2(%rax), %dl
	movb	2(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	3(%rax), %dl
	movb	3(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	4(%rax), %dl
	movb	4(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	5(%rax), %dl
	movb	5(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	6(%rax), %dl
	movb	6(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	7(%rax), %dl
	movb	7(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	8(%rax), %dl
	movb	8(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	9(%rax), %dl
	movb	9(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	10(%rax), %dl
	movb	10(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	11(%rax), %dl
	movb	11(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	12(%rax), %dl
	movb	12(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	13(%rax), %dl
	movb	13(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	14(%rax), %dl
	movb	14(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	15(%rax), %dl
	movb	15(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	16(%rax), %dl
	movb	16(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	17(%rax), %dl
	movb	17(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	18(%rax), %dl
	movb	18(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	19(%rax), %dl
	movb	19(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	20(%rax), %dl
	movb	20(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	21(%rax), %dl
	movb	21(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	22(%rax), %dl
	movb	22(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	23(%rax), %dl
	movb	23(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	24(%rax), %dl
	movb	24(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	25(%rax), %dl
	movb	25(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	26(%rax), %dl
	movb	26(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	27(%rax), %dl
	movb	27(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	28(%rax), %dl
	movb	28(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	29(%rax), %dl
	movb	29(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	30(%rax), %dl
	movb	30(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	31(%rax), %dl
	movb	31(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	32(%rax), %dl
	movb	32(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	33(%rax), %dl
	movb	33(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	34(%rax), %dl
	movb	34(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	35(%rax), %dl
	movb	35(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	36(%rax), %dl
	movb	36(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	37(%rax), %dl
	movb	37(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	38(%rax), %dl
	movb	38(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	39(%rax), %dl
	movb	39(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	40(%rax), %dl
	movb	40(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	41(%rax), %dl
	movb	41(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	42(%rax), %dl
	movb	42(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	43(%rax), %dl
	movb	43(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	44(%rax), %dl
	movb	44(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	45(%rax), %dl
	movb	45(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	46(%rax), %dl
	movb	46(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	47(%rax), %dl
	movb	47(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	48(%rax), %dl
	movb	48(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	49(%rax), %dl
	movb	49(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	50(%rax), %dl
	movb	50(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	51(%rax), %dl
	movb	51(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	52(%rax), %dl
	movb	52(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	53(%rax), %dl
	movb	53(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	54(%rax), %dl
	movb	54(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	55(%rax), %dl
	movb	55(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	56(%rax), %dl
	movb	56(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	57(%rax), %dl
	movb	57(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	58(%rax), %dl
	movb	58(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	59(%rax), %dl
	movb	59(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	60(%rax), %dl
	movb	60(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	61(%rax), %dl
	movb	61(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	62(%rax), %dl
	movb	62(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	63(%rax), %dl
	movb	63(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	64(%rax), %dl
	movb	64(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	65(%rax), %dl
	movb	65(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	66(%rax), %dl
	movb	66(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	67(%rax), %dl
	movb	67(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	68(%rax), %dl
	movb	68(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	69(%rax), %dl
	movb	69(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	70(%rax), %dl
	movb	70(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	71(%rax), %dl
	movb	71(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	72(%rax), %dl
	movb	72(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	73(%rax), %dl
	movb	73(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	74(%rax), %dl
	movb	74(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	75(%rax), %dl
	movb	75(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	76(%rax), %dl
	movb	76(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	77(%rax), %dl
	movb	77(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	78(%rax), %dl
	movb	78(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	79(%rax), %dl
	movb	79(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	80(%rax), %dl
	movb	80(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	81(%rax), %dl
	movb	81(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	82(%rax), %dl
	movb	82(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	83(%rax), %dl
	movb	83(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	84(%rax), %dl
	movb	84(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	85(%rax), %dl
	movb	85(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	86(%rax), %dl
	movb	86(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	87(%rax), %dl
	movb	87(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	88(%rax), %dl
	movb	88(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	89(%rax), %dl
	movb	89(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	90(%rax), %dl
	movb	90(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	91(%rax), %dl
	movb	91(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	92(%rax), %dl
	movb	92(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	93(%rax), %dl
	movb	93(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	94(%rax), %dl
	movb	94(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	95(%rax), %dl
	movb	95(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	96(%rax), %dl
	movb	96(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	97(%rax), %dl
	movb	97(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	98(%rax), %dl
	movb	98(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	99(%rax), %dl
	movb	99(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	100(%rax), %dl
	movb	100(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	101(%rax), %dl
	movb	101(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	102(%rax), %dl
	movb	102(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	103(%rax), %dl
	movb	103(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	104(%rax), %dl
	movb	104(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	105(%rax), %dl
	movb	105(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	106(%rax), %dl
	movb	106(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	107(%rax), %dl
	movb	107(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	108(%rax), %dl
	movb	108(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	109(%rax), %dl
	movb	109(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	110(%rax), %dl
	movb	110(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	111(%rax), %dl
	movb	111(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	112(%rax), %dl
	movb	112(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	113(%rax), %dl
	movb	113(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	114(%rax), %dl
	movb	114(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	115(%rax), %dl
	movb	115(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	116(%rax), %dl
	movb	116(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	117(%rax), %dl
	movb	117(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	118(%rax), %dl
	movb	118(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	119(%rax), %dl
	movb	119(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	120(%rax), %dl
	movb	120(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	121(%rax), %dl
	movb	121(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	122(%rax), %dl
	movb	122(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	123(%rax), %dl
	movb	123(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	124(%rax), %dl
	movb	124(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	125(%rax), %dl
	movb	125(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	126(%rax), %dl
	movb	126(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	127(%rax), %dl
	movb	127(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	128(%rax), %dl
	movb	128(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	129(%rax), %dl
	movb	129(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	130(%rax), %dl
	movb	130(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	131(%rax), %dl
	movb	131(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	132(%rax), %dl
	movb	132(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	133(%rax), %dl
	movb	133(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	134(%rax), %dl
	movb	134(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	135(%rax), %dl
	movb	135(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	136(%rax), %dl
	movb	136(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	137(%rax), %dl
	movb	137(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	138(%rax), %dl
	movb	138(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	139(%rax), %dl
	movb	139(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	140(%rax), %dl
	movb	140(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	141(%rax), %dl
	movb	141(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	142(%rax), %dl
	movb	142(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	143(%rax), %dl
	movb	143(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	144(%rax), %dl
	movb	144(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	145(%rax), %dl
	movb	145(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	146(%rax), %dl
	movb	146(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	147(%rax), %dl
	movb	147(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	148(%rax), %dl
	movb	148(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	149(%rax), %dl
	movb	149(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	150(%rax), %dl
	movb	150(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	151(%rax), %dl
	movb	151(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	152(%rax), %dl
	movb	152(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	153(%rax), %dl
	movb	153(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	154(%rax), %dl
	movb	154(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	155(%rax), %dl
	movb	155(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	156(%rax), %dl
	movb	156(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	157(%rax), %dl
	movb	157(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	158(%rax), %dl
	movb	158(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	159(%rax), %dl
	movb	159(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	160(%rax), %dl
	movb	160(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	161(%rax), %dl
	movb	161(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	162(%rax), %dl
	movb	162(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	163(%rax), %dl
	movb	163(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	164(%rax), %dl
	movb	164(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	165(%rax), %dl
	movb	165(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	166(%rax), %dl
	movb	166(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	167(%rax), %dl
	movb	167(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	168(%rax), %dl
	movb	168(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	169(%rax), %dl
	movb	169(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	170(%rax), %dl
	movb	170(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	171(%rax), %dl
	movb	171(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	172(%rax), %dl
	movb	172(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	173(%rax), %dl
	movb	173(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	174(%rax), %dl
	movb	174(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	175(%rax), %dl
	movb	175(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	176(%rax), %dl
	movb	176(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	177(%rax), %dl
	movb	177(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	178(%rax), %dl
	movb	178(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	179(%rax), %dl
	movb	179(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	180(%rax), %dl
	movb	180(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	181(%rax), %dl
	movb	181(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	182(%rax), %dl
	movb	182(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	183(%rax), %dl
	movb	183(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	184(%rax), %dl
	movb	184(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	185(%rax), %dl
	movb	185(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	186(%rax), %dl
	movb	186(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	187(%rax), %dl
	movb	187(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	188(%rax), %dl
	movb	188(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	189(%rax), %dl
	movb	189(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	190(%rax), %dl
	movb	190(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	191(%rax), %dl
	movb	191(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	192(%rax), %dl
	movb	192(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	193(%rax), %dl
	movb	193(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	194(%rax), %dl
	movb	194(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	195(%rax), %dl
	movb	195(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	196(%rax), %dl
	movb	196(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	197(%rax), %dl
	movb	197(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	198(%rax), %dl
	movb	198(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	199(%rax), %dl
	movb	199(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	200(%rax), %dl
	movb	200(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	201(%rax), %dl
	movb	201(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	202(%rax), %dl
	movb	202(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	203(%rax), %dl
	movb	203(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	204(%rax), %dl
	movb	204(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	205(%rax), %dl
	movb	205(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	206(%rax), %dl
	movb	206(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	207(%rax), %dl
	movb	207(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	208(%rax), %dl
	movb	208(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	209(%rax), %dl
	movb	209(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	210(%rax), %dl
	movb	210(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	211(%rax), %dl
	movb	211(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	212(%rax), %dl
	movb	212(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	213(%rax), %dl
	movb	213(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	214(%rax), %dl
	movb	214(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	215(%rax), %dl
	movb	215(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	216(%rax), %dl
	movb	216(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	217(%rax), %dl
	movb	217(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	218(%rax), %dl
	movb	218(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	219(%rax), %dl
	movb	219(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	220(%rax), %dl
	movb	220(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	221(%rax), %dl
	movb	221(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	222(%rax), %dl
	movb	222(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	223(%rax), %dl
	movb	223(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	224(%rax), %dl
	movb	224(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	225(%rax), %dl
	movb	225(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	226(%rax), %dl
	movb	226(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	227(%rax), %dl
	movb	227(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	228(%rax), %dl
	movb	228(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	229(%rax), %dl
	movb	229(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	230(%rax), %dl
	movb	230(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	231(%rax), %dl
	movb	231(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	232(%rax), %dl
	movb	232(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	233(%rax), %dl
	movb	233(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	234(%rax), %dl
	movb	234(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	235(%rax), %dl
	movb	235(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	236(%rax), %dl
	movb	236(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	237(%rax), %dl
	movb	237(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	238(%rax), %dl
	movb	238(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	239(%rax), %dl
	movb	239(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	240(%rax), %dl
	movb	240(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	241(%rax), %dl
	movb	241(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	242(%rax), %dl
	movb	242(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	243(%rax), %dl
	movb	243(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	244(%rax), %dl
	movb	244(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	245(%rax), %dl
	movb	245(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	246(%rax), %dl
	movb	246(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	247(%rax), %dl
	movb	247(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	248(%rax), %dl
	movb	248(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	249(%rax), %dl
	movb	249(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	250(%rax), %dl
	movb	250(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	251(%rax), %dl
	movb	251(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	252(%rax), %dl
	movb	252(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	253(%rax), %dl
	movb	253(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	254(%rax), %dl
	movb	254(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	255(%rax), %dl
	movb	255(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	256(%rax), %dl
	movb	256(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	257(%rax), %dl
	movb	257(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	258(%rax), %dl
	movb	258(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	259(%rax), %dl
	movb	259(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	260(%rax), %dl
	movb	260(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	261(%rax), %dl
	movb	261(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	262(%rax), %dl
	movb	262(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	263(%rax), %dl
	movb	263(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	264(%rax), %dl
	movb	264(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	265(%rax), %dl
	movb	265(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	266(%rax), %dl
	movb	266(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	267(%rax), %dl
	movb	267(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	268(%rax), %dl
	movb	268(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	269(%rax), %dl
	movb	269(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	270(%rax), %dl
	movb	270(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	271(%rax), %dl
	movb	271(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	272(%rax), %dl
	movb	272(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	273(%rax), %dl
	movb	273(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	274(%rax), %dl
	movb	274(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	275(%rax), %dl
	movb	275(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	276(%rax), %dl
	movb	276(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	277(%rax), %dl
	movb	277(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	278(%rax), %dl
	movb	278(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	279(%rax), %dl
	movb	279(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	280(%rax), %dl
	movb	280(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	281(%rax), %dl
	movb	281(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	282(%rax), %dl
	movb	282(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	283(%rax), %dl
	movb	283(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	284(%rax), %dl
	movb	284(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	285(%rax), %dl
	movb	285(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	286(%rax), %dl
	movb	286(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	287(%rax), %dl
	movb	287(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	288(%rax), %dl
	movb	288(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	289(%rax), %dl
	movb	289(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	290(%rax), %dl
	movb	290(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	291(%rax), %dl
	movb	291(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	292(%rax), %dl
	movb	292(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	293(%rax), %dl
	movb	293(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	294(%rax), %dl
	movb	294(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	295(%rax), %dl
	movb	295(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	296(%rax), %dl
	movb	296(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	297(%rax), %dl
	movb	297(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	298(%rax), %dl
	movb	298(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	299(%rax), %dl
	movb	299(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	300(%rax), %dl
	movb	300(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	301(%rax), %dl
	movb	301(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	302(%rax), %dl
	movb	302(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	303(%rax), %dl
	movb	303(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	304(%rax), %dl
	movb	304(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	305(%rax), %dl
	movb	305(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	306(%rax), %dl
	movb	306(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	307(%rax), %dl
	movb	307(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	308(%rax), %dl
	movb	308(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	309(%rax), %dl
	movb	309(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	310(%rax), %dl
	movb	310(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	311(%rax), %dl
	movb	311(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	312(%rax), %dl
	movb	312(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	313(%rax), %dl
	movb	313(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	314(%rax), %dl
	movb	314(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	315(%rax), %dl
	movb	315(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	316(%rax), %dl
	movb	316(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	317(%rax), %dl
	movb	317(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	318(%rax), %dl
	movb	318(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	319(%rax), %dl
	movb	319(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	320(%rax), %dl
	movb	320(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	321(%rax), %dl
	movb	321(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	322(%rax), %dl
	movb	322(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	323(%rax), %dl
	movb	323(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	324(%rax), %dl
	movb	324(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	325(%rax), %dl
	movb	325(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	326(%rax), %dl
	movb	326(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	327(%rax), %dl
	movb	327(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	328(%rax), %dl
	movb	328(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	329(%rax), %dl
	movb	329(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	330(%rax), %dl
	movb	330(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	331(%rax), %dl
	movb	331(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	332(%rax), %dl
	movb	332(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	333(%rax), %dl
	movb	333(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	334(%rax), %dl
	movb	334(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	335(%rax), %dl
	movb	335(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	336(%rax), %dl
	movb	336(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	337(%rax), %dl
	movb	337(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	338(%rax), %dl
	movb	338(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	339(%rax), %dl
	movb	339(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	340(%rax), %dl
	movb	340(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	341(%rax), %dl
	movb	341(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	342(%rax), %dl
	movb	342(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	343(%rax), %dl
	movb	343(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	344(%rax), %dl
	movb	344(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	345(%rax), %dl
	movb	345(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	346(%rax), %dl
	movb	346(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	347(%rax), %dl
	movb	347(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	348(%rax), %dl
	movb	348(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	349(%rax), %dl
	movb	349(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	350(%rax), %dl
	movb	350(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	351(%rax), %dl
	movb	351(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	352(%rax), %dl
	movb	352(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	353(%rax), %dl
	movb	353(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	354(%rax), %dl
	movb	354(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	355(%rax), %dl
	movb	355(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	356(%rax), %dl
	movb	356(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	357(%rax), %dl
	movb	357(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	358(%rax), %dl
	movb	358(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	359(%rax), %dl
	movb	359(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	360(%rax), %dl
	movb	360(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	361(%rax), %dl
	movb	361(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	362(%rax), %dl
	movb	362(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	363(%rax), %dl
	movb	363(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	364(%rax), %dl
	movb	364(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	365(%rax), %dl
	movb	365(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	366(%rax), %dl
	movb	366(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	367(%rax), %dl
	movb	367(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	368(%rax), %dl
	movb	368(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	369(%rax), %dl
	movb	369(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	370(%rax), %dl
	movb	370(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	371(%rax), %dl
	movb	371(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	372(%rax), %dl
	movb	372(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	373(%rax), %dl
	movb	373(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	374(%rax), %dl
	movb	374(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	375(%rax), %dl
	movb	375(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	376(%rax), %dl
	movb	376(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	377(%rax), %dl
	movb	377(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	378(%rax), %dl
	movb	378(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	379(%rax), %dl
	movb	379(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	380(%rax), %dl
	movb	380(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	381(%rax), %dl
	movb	381(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	382(%rax), %dl
	movb	382(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	383(%rax), %dl
	movb	383(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	384(%rax), %dl
	movb	384(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	385(%rax), %dl
	movb	385(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	386(%rax), %dl
	movb	386(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	387(%rax), %dl
	movb	387(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	388(%rax), %dl
	movb	388(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	389(%rax), %dl
	movb	389(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	390(%rax), %dl
	movb	390(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	391(%rax), %dl
	movb	391(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	392(%rax), %dl
	movb	392(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	393(%rax), %dl
	movb	393(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	394(%rax), %dl
	movb	394(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	395(%rax), %dl
	movb	395(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	396(%rax), %dl
	movb	396(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	397(%rax), %dl
	movb	397(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	398(%rax), %dl
	movb	398(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	399(%rax), %dl
	movb	399(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	400(%rax), %dl
	movb	400(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	401(%rax), %dl
	movb	401(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	402(%rax), %dl
	movb	402(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	403(%rax), %dl
	movb	403(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	404(%rax), %dl
	movb	404(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	405(%rax), %dl
	movb	405(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	406(%rax), %dl
	movb	406(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	407(%rax), %dl
	movb	407(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	408(%rax), %dl
	movb	408(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	409(%rax), %dl
	movb	409(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	410(%rax), %dl
	movb	410(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	411(%rax), %dl
	movb	411(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	412(%rax), %dl
	movb	412(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	413(%rax), %dl
	movb	413(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	414(%rax), %dl
	movb	414(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	415(%rax), %dl
	movb	415(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	416(%rax), %dl
	movb	416(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	417(%rax), %dl
	movb	417(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	418(%rax), %dl
	movb	418(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	419(%rax), %dl
	movb	419(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	420(%rax), %dl
	movb	420(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	421(%rax), %dl
	movb	421(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	422(%rax), %dl
	movb	422(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	423(%rax), %dl
	movb	423(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	424(%rax), %dl
	movb	424(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	425(%rax), %dl
	movb	425(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	426(%rax), %dl
	movb	426(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	427(%rax), %dl
	movb	427(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	428(%rax), %dl
	movb	428(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	429(%rax), %dl
	movb	429(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	430(%rax), %dl
	movb	430(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	431(%rax), %dl
	movb	431(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	432(%rax), %dl
	movb	432(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	433(%rax), %dl
	movb	433(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	434(%rax), %dl
	movb	434(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	435(%rax), %dl
	movb	435(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	436(%rax), %dl
	movb	436(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	437(%rax), %dl
	movb	437(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	438(%rax), %dl
	movb	438(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	439(%rax), %dl
	movb	439(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	440(%rax), %dl
	movb	440(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	441(%rax), %dl
	movb	441(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	442(%rax), %dl
	movb	442(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	443(%rax), %dl
	movb	443(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	444(%rax), %dl
	movb	444(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	445(%rax), %dl
	movb	445(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	446(%rax), %dl
	movb	446(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	447(%rax), %dl
	movb	447(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	448(%rax), %dl
	movb	448(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	449(%rax), %dl
	movb	449(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	450(%rax), %dl
	movb	450(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	451(%rax), %dl
	movb	451(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	452(%rax), %dl
	movb	452(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	453(%rax), %dl
	movb	453(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	454(%rax), %dl
	movb	454(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	455(%rax), %dl
	movb	455(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	456(%rax), %dl
	movb	456(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	457(%rax), %dl
	movb	457(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	458(%rax), %dl
	movb	458(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	459(%rax), %dl
	movb	459(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	460(%rax), %dl
	movb	460(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	461(%rax), %dl
	movb	461(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	462(%rax), %dl
	movb	462(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	463(%rax), %dl
	movb	463(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	464(%rax), %dl
	movb	464(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	465(%rax), %dl
	movb	465(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	466(%rax), %dl
	movb	466(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	467(%rax), %dl
	movb	467(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	468(%rax), %dl
	movb	468(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	469(%rax), %dl
	movb	469(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	470(%rax), %dl
	movb	470(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	471(%rax), %dl
	movb	471(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	472(%rax), %dl
	movb	472(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	473(%rax), %dl
	movb	473(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	474(%rax), %dl
	movb	474(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	475(%rax), %dl
	movb	475(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	476(%rax), %dl
	movb	476(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	477(%rax), %dl
	movb	477(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	478(%rax), %dl
	movb	478(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	479(%rax), %dl
	movb	479(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	480(%rax), %dl
	movb	480(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	481(%rax), %dl
	movb	481(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	482(%rax), %dl
	movb	482(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	483(%rax), %dl
	movb	483(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	484(%rax), %dl
	movb	484(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	485(%rax), %dl
	movb	485(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	486(%rax), %dl
	movb	486(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	487(%rax), %dl
	movb	487(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	488(%rax), %dl
	movb	488(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	489(%rax), %dl
	movb	489(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	490(%rax), %dl
	movb	490(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	491(%rax), %dl
	movb	491(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	492(%rax), %dl
	movb	492(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	493(%rax), %dl
	movb	493(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	494(%rax), %dl
	movb	494(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	495(%rax), %dl
	movb	495(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	496(%rax), %dl
	movb	496(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	497(%rax), %dl
	movb	497(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	498(%rax), %dl
	movb	498(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	499(%rax), %dl
	movb	499(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	500(%rax), %dl
	movb	500(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	501(%rax), %dl
	movb	501(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	502(%rax), %dl
	movb	502(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	503(%rax), %dl
	movb	503(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	504(%rax), %dl
	movb	504(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	505(%rax), %dl
	movb	505(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	506(%rax), %dl
	movb	506(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	507(%rax), %dl
	movb	507(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	508(%rax), %dl
	movb	508(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	509(%rax), %dl
	movb	509(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	510(%rax), %dl
	movb	510(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	511(%rax), %dl
	movb	511(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	512(%rax), %dl
	movb	512(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	513(%rax), %dl
	movb	513(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	514(%rax), %dl
	movb	514(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	515(%rax), %dl
	movb	515(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	516(%rax), %dl
	movb	516(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	517(%rax), %dl
	movb	517(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	518(%rax), %dl
	movb	518(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	519(%rax), %dl
	movb	519(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	520(%rax), %dl
	movb	520(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	521(%rax), %dl
	movb	521(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	522(%rax), %dl
	movb	522(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	523(%rax), %dl
	movb	523(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	524(%rax), %dl
	movb	524(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	525(%rax), %dl
	movb	525(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	526(%rax), %dl
	movb	526(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	527(%rax), %dl
	movb	527(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	528(%rax), %dl
	movb	528(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	529(%rax), %dl
	movb	529(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	530(%rax), %dl
	movb	530(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	531(%rax), %dl
	movb	531(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	532(%rax), %dl
	movb	532(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	533(%rax), %dl
	movb	533(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	534(%rax), %dl
	movb	534(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	535(%rax), %dl
	movb	535(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	536(%rax), %dl
	movb	536(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	537(%rax), %dl
	movb	537(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	538(%rax), %dl
	movb	538(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	539(%rax), %dl
	movb	539(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	540(%rax), %dl
	movb	540(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	541(%rax), %dl
	movb	541(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	542(%rax), %dl
	movb	542(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	543(%rax), %dl
	movb	543(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	544(%rax), %dl
	movb	544(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	545(%rax), %dl
	movb	545(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	546(%rax), %dl
	movb	546(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	547(%rax), %dl
	movb	547(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	548(%rax), %dl
	movb	548(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	549(%rax), %dl
	movb	549(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	550(%rax), %dl
	movb	550(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	551(%rax), %dl
	movb	551(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	552(%rax), %dl
	movb	552(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	553(%rax), %dl
	movb	553(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	554(%rax), %dl
	movb	554(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	555(%rax), %dl
	movb	555(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	556(%rax), %dl
	movb	556(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	557(%rax), %dl
	movb	557(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	558(%rax), %dl
	movb	558(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	559(%rax), %dl
	movb	559(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	560(%rax), %dl
	movb	560(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	561(%rax), %dl
	movb	561(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	562(%rax), %dl
	movb	562(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	563(%rax), %dl
	movb	563(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	564(%rax), %dl
	movb	564(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	565(%rax), %dl
	movb	565(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	566(%rax), %dl
	movb	566(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	567(%rax), %dl
	movb	567(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	568(%rax), %dl
	movb	568(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	569(%rax), %dl
	movb	569(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	570(%rax), %dl
	movb	570(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	571(%rax), %dl
	movb	571(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	572(%rax), %dl
	movb	572(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	573(%rax), %dl
	movb	573(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	574(%rax), %dl
	movb	574(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	575(%rax), %dl
	movb	575(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	576(%rax), %dl
	movb	576(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	577(%rax), %dl
	movb	577(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	578(%rax), %dl
	movb	578(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	579(%rax), %dl
	movb	579(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	580(%rax), %dl
	movb	580(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	581(%rax), %dl
	movb	581(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	582(%rax), %dl
	movb	582(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	583(%rax), %dl
	movb	583(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	584(%rax), %dl
	movb	584(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	585(%rax), %dl
	movb	585(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	586(%rax), %dl
	movb	586(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	587(%rax), %dl
	movb	587(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	588(%rax), %dl
	movb	588(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	589(%rax), %dl
	movb	589(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	590(%rax), %dl
	movb	590(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	591(%rax), %dl
	movb	591(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	592(%rax), %dl
	movb	592(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	593(%rax), %dl
	movb	593(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	594(%rax), %dl
	movb	594(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	595(%rax), %dl
	movb	595(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	596(%rax), %dl
	movb	596(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	597(%rax), %dl
	movb	597(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	598(%rax), %dl
	movb	598(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	599(%rax), %dl
	movb	599(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	600(%rax), %dl
	movb	600(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	601(%rax), %dl
	movb	601(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	602(%rax), %dl
	movb	602(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	603(%rax), %dl
	movb	603(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	604(%rax), %dl
	movb	604(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	605(%rax), %dl
	movb	605(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	606(%rax), %dl
	movb	606(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	607(%rax), %dl
	movb	607(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	608(%rax), %dl
	movb	608(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	609(%rax), %dl
	movb	609(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	610(%rax), %dl
	movb	610(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	611(%rax), %dl
	movb	611(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	612(%rax), %dl
	movb	612(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	613(%rax), %dl
	movb	613(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	614(%rax), %dl
	movb	614(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	615(%rax), %dl
	movb	615(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	616(%rax), %dl
	movb	616(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	617(%rax), %dl
	movb	617(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	618(%rax), %dl
	movb	618(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	619(%rax), %dl
	movb	619(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	620(%rax), %dl
	movb	620(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	621(%rax), %dl
	movb	621(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	622(%rax), %dl
	movb	622(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	623(%rax), %dl
	movb	623(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	624(%rax), %dl
	movb	624(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	625(%rax), %dl
	movb	625(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	626(%rax), %dl
	movb	626(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	627(%rax), %dl
	movb	627(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	628(%rax), %dl
	movb	628(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	629(%rax), %dl
	movb	629(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	630(%rax), %dl
	movb	630(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	631(%rax), %dl
	movb	631(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	632(%rax), %dl
	movb	632(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	633(%rax), %dl
	movb	633(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	634(%rax), %dl
	movb	634(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	635(%rax), %dl
	movb	635(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	636(%rax), %dl
	movb	636(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	637(%rax), %dl
	movb	637(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	638(%rax), %dl
	movb	638(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	639(%rax), %dl
	movb	639(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	640(%rax), %dl
	movb	640(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	641(%rax), %dl
	movb	641(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	642(%rax), %dl
	movb	642(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	643(%rax), %dl
	movb	643(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	644(%rax), %dl
	movb	644(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	645(%rax), %dl
	movb	645(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	646(%rax), %dl
	movb	646(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	647(%rax), %dl
	movb	647(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	648(%rax), %dl
	movb	648(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	649(%rax), %dl
	movb	649(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	650(%rax), %dl
	movb	650(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	651(%rax), %dl
	movb	651(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	652(%rax), %dl
	movb	652(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	653(%rax), %dl
	movb	653(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	654(%rax), %dl
	movb	654(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	655(%rax), %dl
	movb	655(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	656(%rax), %dl
	movb	656(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	657(%rax), %dl
	movb	657(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	658(%rax), %dl
	movb	658(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	659(%rax), %dl
	movb	659(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	660(%rax), %dl
	movb	660(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	661(%rax), %dl
	movb	661(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	662(%rax), %dl
	movb	662(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	663(%rax), %dl
	movb	663(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	664(%rax), %dl
	movb	664(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	665(%rax), %dl
	movb	665(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	666(%rax), %dl
	movb	666(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	667(%rax), %dl
	movb	667(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	668(%rax), %dl
	movb	668(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	669(%rax), %dl
	movb	669(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	670(%rax), %dl
	movb	670(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	671(%rax), %dl
	movb	671(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	672(%rax), %dl
	movb	672(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	673(%rax), %dl
	movb	673(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	674(%rax), %dl
	movb	674(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	675(%rax), %dl
	movb	675(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	676(%rax), %dl
	movb	676(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	677(%rax), %dl
	movb	677(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	678(%rax), %dl
	movb	678(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	679(%rax), %dl
	movb	679(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	680(%rax), %dl
	movb	680(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	681(%rax), %dl
	movb	681(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	682(%rax), %dl
	movb	682(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	683(%rax), %dl
	movb	683(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	684(%rax), %dl
	movb	684(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	685(%rax), %dl
	movb	685(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	686(%rax), %dl
	movb	686(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	687(%rax), %dl
	movb	687(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	688(%rax), %dl
	movb	688(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	689(%rax), %dl
	movb	689(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	690(%rax), %dl
	movb	690(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	691(%rax), %dl
	movb	691(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	692(%rax), %dl
	movb	692(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	693(%rax), %dl
	movb	693(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	694(%rax), %dl
	movb	694(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	695(%rax), %dl
	movb	695(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	696(%rax), %dl
	movb	696(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	697(%rax), %dl
	movb	697(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	698(%rax), %dl
	movb	698(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	699(%rax), %dl
	movb	699(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	700(%rax), %dl
	movb	700(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	701(%rax), %dl
	movb	701(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	702(%rax), %dl
	movb	702(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	703(%rax), %dl
	movb	703(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	704(%rax), %dl
	movb	704(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	705(%rax), %dl
	movb	705(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	706(%rax), %dl
	movb	706(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	707(%rax), %dl
	movb	707(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	708(%rax), %dl
	movb	708(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	709(%rax), %dl
	movb	709(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	710(%rax), %dl
	movb	710(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	711(%rax), %dl
	movb	711(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	712(%rax), %dl
	movb	712(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	713(%rax), %dl
	movb	713(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	714(%rax), %dl
	movb	714(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	715(%rax), %dl
	movb	715(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	716(%rax), %dl
	movb	716(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	717(%rax), %dl
	movb	717(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	718(%rax), %dl
	movb	718(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	719(%rax), %dl
	movb	719(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	720(%rax), %dl
	movb	720(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	721(%rax), %dl
	movb	721(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	722(%rax), %dl
	movb	722(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	723(%rax), %dl
	movb	723(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	724(%rax), %dl
	movb	724(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	725(%rax), %dl
	movb	725(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	726(%rax), %dl
	movb	726(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	727(%rax), %dl
	movb	727(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	728(%rax), %dl
	movb	728(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	729(%rax), %dl
	movb	729(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	730(%rax), %dl
	movb	730(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	731(%rax), %dl
	movb	731(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	732(%rax), %dl
	movb	732(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	733(%rax), %dl
	movb	733(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	734(%rax), %dl
	movb	734(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	735(%rax), %dl
	movb	735(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	736(%rax), %dl
	movb	736(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	737(%rax), %dl
	movb	737(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	738(%rax), %dl
	movb	738(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	739(%rax), %dl
	movb	739(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	740(%rax), %dl
	movb	740(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	741(%rax), %dl
	movb	741(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	742(%rax), %dl
	movb	742(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	743(%rax), %dl
	movb	743(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	744(%rax), %dl
	movb	744(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	745(%rax), %dl
	movb	745(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	746(%rax), %dl
	movb	746(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	747(%rax), %dl
	movb	747(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	748(%rax), %dl
	movb	748(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	749(%rax), %dl
	movb	749(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	750(%rax), %dl
	movb	750(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	751(%rax), %dl
	movb	751(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	752(%rax), %dl
	movb	752(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	753(%rax), %dl
	movb	753(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	754(%rax), %dl
	movb	754(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	755(%rax), %dl
	movb	755(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	756(%rax), %dl
	movb	756(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	757(%rax), %dl
	movb	757(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	758(%rax), %dl
	movb	758(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	759(%rax), %dl
	movb	759(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	760(%rax), %dl
	movb	760(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	761(%rax), %dl
	movb	761(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	762(%rax), %dl
	movb	762(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	763(%rax), %dl
	movb	763(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	764(%rax), %dl
	movb	764(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	765(%rax), %dl
	movb	765(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	766(%rax), %dl
	movb	766(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	767(%rax), %dl
	movb	767(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	768(%rax), %dl
	movb	768(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	769(%rax), %dl
	movb	769(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	770(%rax), %dl
	movb	770(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	771(%rax), %dl
	movb	771(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	772(%rax), %dl
	movb	772(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	773(%rax), %dl
	movb	773(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	774(%rax), %dl
	movb	774(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	775(%rax), %dl
	movb	775(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	776(%rax), %dl
	movb	776(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	777(%rax), %dl
	movb	777(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	778(%rax), %dl
	movb	778(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	779(%rax), %dl
	movb	779(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	780(%rax), %dl
	movb	780(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	781(%rax), %dl
	movb	781(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	782(%rax), %dl
	movb	782(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	783(%rax), %dl
	movb	783(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	784(%rax), %dl
	movb	784(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	785(%rax), %dl
	movb	785(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	786(%rax), %dl
	movb	786(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	787(%rax), %dl
	movb	787(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	788(%rax), %dl
	movb	788(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	789(%rax), %dl
	movb	789(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	790(%rax), %dl
	movb	790(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	791(%rax), %dl
	movb	791(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	792(%rax), %dl
	movb	792(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	793(%rax), %dl
	movb	793(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	794(%rax), %dl
	movb	794(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	795(%rax), %dl
	movb	795(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	796(%rax), %dl
	movb	796(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	797(%rax), %dl
	movb	797(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	798(%rax), %dl
	movb	798(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	799(%rax), %dl
	movb	799(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	800(%rax), %dl
	movb	800(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	801(%rax), %dl
	movb	801(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	802(%rax), %dl
	movb	802(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	803(%rax), %dl
	movb	803(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	804(%rax), %dl
	movb	804(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	805(%rax), %dl
	movb	805(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	806(%rax), %dl
	movb	806(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	807(%rax), %dl
	movb	807(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	808(%rax), %dl
	movb	808(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	809(%rax), %dl
	movb	809(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	810(%rax), %dl
	movb	810(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	811(%rax), %dl
	movb	811(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	812(%rax), %dl
	movb	812(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	813(%rax), %dl
	movb	813(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	814(%rax), %dl
	movb	814(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	815(%rax), %dl
	movb	815(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	816(%rax), %dl
	movb	816(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	817(%rax), %dl
	movb	817(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	818(%rax), %dl
	movb	818(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	819(%rax), %dl
	movb	819(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	820(%rax), %dl
	movb	820(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	821(%rax), %dl
	movb	821(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	822(%rax), %dl
	movb	822(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	823(%rax), %dl
	movb	823(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	824(%rax), %dl
	movb	824(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	825(%rax), %dl
	movb	825(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	826(%rax), %dl
	movb	826(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	827(%rax), %dl
	movb	827(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	828(%rax), %dl
	movb	828(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	829(%rax), %dl
	movb	829(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	830(%rax), %dl
	movb	830(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	831(%rax), %dl
	movb	831(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	832(%rax), %dl
	movb	832(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	833(%rax), %dl
	movb	833(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	834(%rax), %dl
	movb	834(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	835(%rax), %dl
	movb	835(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	836(%rax), %dl
	movb	836(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	837(%rax), %dl
	movb	837(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	838(%rax), %dl
	movb	838(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	839(%rax), %dl
	movb	839(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	840(%rax), %dl
	movb	840(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	841(%rax), %dl
	movb	841(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	842(%rax), %dl
	movb	842(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	843(%rax), %dl
	movb	843(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	844(%rax), %dl
	movb	844(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	845(%rax), %dl
	movb	845(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	846(%rax), %dl
	movb	846(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	847(%rax), %dl
	movb	847(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	848(%rax), %dl
	movb	848(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	849(%rax), %dl
	movb	849(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	850(%rax), %dl
	movb	850(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	851(%rax), %dl
	movb	851(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	852(%rax), %dl
	movb	852(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	853(%rax), %dl
	movb	853(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	854(%rax), %dl
	movb	854(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	855(%rax), %dl
	movb	855(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	856(%rax), %dl
	movb	856(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	857(%rax), %dl
	movb	857(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	858(%rax), %dl
	movb	858(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	859(%rax), %dl
	movb	859(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	860(%rax), %dl
	movb	860(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	861(%rax), %dl
	movb	861(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	862(%rax), %dl
	movb	862(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	863(%rax), %dl
	movb	863(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	864(%rax), %dl
	movb	864(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	865(%rax), %dl
	movb	865(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	866(%rax), %dl
	movb	866(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	867(%rax), %dl
	movb	867(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	868(%rax), %dl
	movb	868(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	869(%rax), %dl
	movb	869(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	870(%rax), %dl
	movb	870(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	871(%rax), %dl
	movb	871(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	872(%rax), %dl
	movb	872(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	873(%rax), %dl
	movb	873(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	874(%rax), %dl
	movb	874(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	875(%rax), %dl
	movb	875(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	876(%rax), %dl
	movb	876(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	877(%rax), %dl
	movb	877(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	878(%rax), %dl
	movb	878(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	879(%rax), %dl
	movb	879(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	880(%rax), %dl
	movb	880(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	881(%rax), %dl
	movb	881(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	882(%rax), %dl
	movb	882(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	883(%rax), %dl
	movb	883(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	884(%rax), %dl
	movb	884(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	885(%rax), %dl
	movb	885(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	886(%rax), %dl
	movb	886(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	887(%rax), %dl
	movb	887(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	888(%rax), %dl
	movb	888(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	889(%rax), %dl
	movb	889(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	890(%rax), %dl
	movb	890(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	891(%rax), %dl
	movb	891(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	892(%rax), %dl
	movb	892(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	893(%rax), %dl
	movb	893(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	894(%rax), %dl
	movb	894(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	895(%rax), %dl
	movb	895(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	896(%rax), %dl
	movb	896(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	897(%rax), %dl
	movb	897(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	898(%rax), %dl
	movb	898(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	899(%rax), %dl
	movb	899(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	900(%rax), %dl
	movb	900(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	901(%rax), %dl
	movb	901(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	902(%rax), %dl
	movb	902(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	903(%rax), %dl
	movb	903(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	904(%rax), %dl
	movb	904(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	905(%rax), %dl
	movb	905(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	906(%rax), %dl
	movb	906(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	907(%rax), %dl
	movb	907(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	908(%rax), %dl
	movb	908(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	909(%rax), %dl
	movb	909(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	910(%rax), %dl
	movb	910(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	911(%rax), %dl
	movb	911(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	912(%rax), %dl
	movb	912(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	913(%rax), %dl
	movb	913(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	914(%rax), %dl
	movb	914(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	915(%rax), %dl
	movb	915(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	916(%rax), %dl
	movb	916(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	917(%rax), %dl
	movb	917(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	918(%rax), %dl
	movb	918(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	919(%rax), %dl
	movb	919(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	920(%rax), %dl
	movb	920(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	921(%rax), %dl
	movb	921(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	922(%rax), %dl
	movb	922(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	923(%rax), %dl
	movb	923(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	924(%rax), %dl
	movb	924(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	925(%rax), %dl
	movb	925(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	926(%rax), %dl
	movb	926(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	927(%rax), %dl
	movb	927(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	928(%rax), %dl
	movb	928(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	929(%rax), %dl
	movb	929(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	930(%rax), %dl
	movb	930(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	931(%rax), %dl
	movb	931(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	932(%rax), %dl
	movb	932(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	933(%rax), %dl
	movb	933(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	934(%rax), %dl
	movb	934(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	935(%rax), %dl
	movb	935(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	936(%rax), %dl
	movb	936(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	937(%rax), %dl
	movb	937(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	938(%rax), %dl
	movb	938(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	939(%rax), %dl
	movb	939(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	940(%rax), %dl
	movb	940(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	941(%rax), %dl
	movb	941(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	942(%rax), %dl
	movb	942(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	943(%rax), %dl
	movb	943(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	944(%rax), %dl
	movb	944(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	945(%rax), %dl
	movb	945(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	946(%rax), %dl
	movb	946(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	947(%rax), %dl
	movb	947(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	948(%rax), %dl
	movb	948(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	949(%rax), %dl
	movb	949(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	950(%rax), %dl
	movb	950(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	951(%rax), %dl
	movb	951(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	952(%rax), %dl
	movb	952(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	953(%rax), %dl
	movb	953(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	954(%rax), %dl
	movb	954(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	955(%rax), %dl
	movb	955(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	956(%rax), %dl
	movb	956(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	957(%rax), %dl
	movb	957(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	958(%rax), %dl
	movb	958(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	959(%rax), %dl
	movb	959(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	960(%rax), %dl
	movb	960(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	961(%rax), %dl
	movb	961(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	962(%rax), %dl
	movb	962(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	963(%rax), %dl
	movb	963(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	964(%rax), %dl
	movb	964(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	965(%rax), %dl
	movb	965(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	966(%rax), %dl
	movb	966(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	967(%rax), %dl
	movb	967(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	968(%rax), %dl
	movb	968(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	969(%rax), %dl
	movb	969(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	970(%rax), %dl
	movb	970(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	971(%rax), %dl
	movb	971(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	972(%rax), %dl
	movb	972(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	973(%rax), %dl
	movb	973(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	974(%rax), %dl
	movb	974(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	975(%rax), %dl
	movb	975(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	976(%rax), %dl
	movb	976(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	977(%rax), %dl
	movb	977(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	978(%rax), %dl
	movb	978(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	979(%rax), %dl
	movb	979(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	980(%rax), %dl
	movb	980(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	981(%rax), %dl
	movb	981(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	982(%rax), %dl
	movb	982(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	983(%rax), %dl
	movb	983(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	984(%rax), %dl
	movb	984(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	985(%rax), %dl
	movb	985(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	986(%rax), %dl
	movb	986(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	987(%rax), %dl
	movb	987(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	988(%rax), %dl
	movb	988(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	989(%rax), %dl
	movb	989(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	990(%rax), %dl
	movb	990(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	991(%rax), %dl
	movb	991(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	992(%rax), %dl
	movb	992(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	993(%rax), %dl
	movb	993(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	994(%rax), %dl
	movb	994(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	995(%rax), %dl
	movb	995(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	996(%rax), %dl
	movb	996(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	997(%rax), %dl
	movb	997(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	998(%rax), %dl
	movb	998(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	999(%rax), %dl
	movb	999(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1000(%rax), %dl
	movb	1000(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1001(%rax), %dl
	movb	1001(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1002(%rax), %dl
	movb	1002(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1003(%rax), %dl
	movb	1003(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1004(%rax), %dl
	movb	1004(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1005(%rax), %dl
	movb	1005(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1006(%rax), %dl
	movb	1006(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1007(%rax), %dl
	movb	1007(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1008(%rax), %dl
	movb	1008(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1009(%rax), %dl
	movb	1009(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1010(%rax), %dl
	movb	1010(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1011(%rax), %dl
	movb	1011(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1012(%rax), %dl
	movb	1012(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1013(%rax), %dl
	movb	1013(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1014(%rax), %dl
	movb	1014(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1015(%rax), %dl
	movb	1015(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1016(%rax), %dl
	movb	1016(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1017(%rax), %dl
	movb	1017(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1018(%rax), %dl
	movb	1018(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1019(%rax), %dl
	movb	1019(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1020(%rax), %dl
	movb	1020(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1021(%rax), %dl
	movb	1021(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1022(%rax), %dl
	movb	1022(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1023(%rax), %dl
	movb	1023(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1024(%rax), %dl
	movb	1024(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1025(%rax), %dl
	movb	1025(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1026(%rax), %dl
	movb	1026(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1027(%rax), %dl
	movb	1027(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1028(%rax), %dl
	movb	1028(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1029(%rax), %dl
	movb	1029(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1030(%rax), %dl
	movb	1030(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1031(%rax), %dl
	movb	1031(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1032(%rax), %dl
	movb	1032(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1033(%rax), %dl
	movb	1033(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1034(%rax), %dl
	movb	1034(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1035(%rax), %dl
	movb	1035(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1036(%rax), %dl
	movb	1036(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1037(%rax), %dl
	movb	1037(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1038(%rax), %dl
	movb	1038(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1039(%rax), %dl
	movb	1039(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1040(%rax), %dl
	movb	1040(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1041(%rax), %dl
	movb	1041(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1042(%rax), %dl
	movb	1042(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1043(%rax), %dl
	movb	1043(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1044(%rax), %dl
	movb	1044(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1045(%rax), %dl
	movb	1045(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1046(%rax), %dl
	movb	1046(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1047(%rax), %dl
	movb	1047(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1048(%rax), %dl
	movb	1048(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1049(%rax), %dl
	movb	1049(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1050(%rax), %dl
	movb	1050(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1051(%rax), %dl
	movb	1051(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1052(%rax), %dl
	movb	1052(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1053(%rax), %dl
	movb	1053(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1054(%rax), %dl
	movb	1054(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1055(%rax), %dl
	movb	1055(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1056(%rax), %dl
	movb	1056(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1057(%rax), %dl
	movb	1057(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1058(%rax), %dl
	movb	1058(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1059(%rax), %dl
	movb	1059(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1060(%rax), %dl
	movb	1060(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1061(%rax), %dl
	movb	1061(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1062(%rax), %dl
	movb	1062(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1063(%rax), %dl
	movb	1063(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1064(%rax), %dl
	movb	1064(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1065(%rax), %dl
	movb	1065(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1066(%rax), %dl
	movb	1066(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1067(%rax), %dl
	movb	1067(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1068(%rax), %dl
	movb	1068(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1069(%rax), %dl
	movb	1069(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1070(%rax), %dl
	movb	1070(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1071(%rax), %dl
	movb	1071(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1072(%rax), %dl
	movb	1072(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1073(%rax), %dl
	movb	1073(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1074(%rax), %dl
	movb	1074(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1075(%rax), %dl
	movb	1075(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1076(%rax), %dl
	movb	1076(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1077(%rax), %dl
	movb	1077(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1078(%rax), %dl
	movb	1078(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1079(%rax), %dl
	movb	1079(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1080(%rax), %dl
	movb	1080(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1081(%rax), %dl
	movb	1081(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1082(%rax), %dl
	movb	1082(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1083(%rax), %dl
	movb	1083(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1084(%rax), %dl
	movb	1084(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1085(%rax), %dl
	movb	1085(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1086(%rax), %dl
	movb	1086(%rsi), %dil
	xorb	%dil, %dl
	movzbq	%dl, %rdx
	orq 	%rdx, %rcx
	movb	1087(%rax), %al
	movb	1087(%rsi), %dl
	xorb	%dl, %al
	movzbq	%al, %rax
	orq 	%rax, %rcx
	negq	%rcx
	shrq	$63, %rcx
	movq	16(%rsp), %rax
	leaq	64(%rax), %rax
	leaq	2304(%rax), %rax
	leaq	144(%rsp), %rdx
	negq	%rcx
	movb	(%rdx), %dil
	movb	(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, (%rdx)
	movb	1(%rdx), %dil
	movb	1(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 1(%rdx)
	movb	2(%rdx), %dil
	movb	2(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 2(%rdx)
	movb	3(%rdx), %dil
	movb	3(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 3(%rdx)
	movb	4(%rdx), %dil
	movb	4(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 4(%rdx)
	movb	5(%rdx), %dil
	movb	5(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 5(%rdx)
	movb	6(%rdx), %dil
	movb	6(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 6(%rdx)
	movb	7(%rdx), %dil
	movb	7(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 7(%rdx)
	movb	8(%rdx), %dil
	movb	8(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 8(%rdx)
	movb	9(%rdx), %dil
	movb	9(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 9(%rdx)
	movb	10(%rdx), %dil
	movb	10(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 10(%rdx)
	movb	11(%rdx), %dil
	movb	11(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 11(%rdx)
	movb	12(%rdx), %dil
	movb	12(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 12(%rdx)
	movb	13(%rdx), %dil
	movb	13(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 13(%rdx)
	movb	14(%rdx), %dil
	movb	14(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 14(%rdx)
	movb	15(%rdx), %dil
	movb	15(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 15(%rdx)
	movb	16(%rdx), %dil
	movb	16(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 16(%rdx)
	movb	17(%rdx), %dil
	movb	17(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 17(%rdx)
	movb	18(%rdx), %dil
	movb	18(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 18(%rdx)
	movb	19(%rdx), %dil
	movb	19(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 19(%rdx)
	movb	20(%rdx), %dil
	movb	20(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 20(%rdx)
	movb	21(%rdx), %dil
	movb	21(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 21(%rdx)
	movb	22(%rdx), %dil
	movb	22(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 22(%rdx)
	movb	23(%rdx), %dil
	movb	23(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 23(%rdx)
	movb	24(%rdx), %dil
	movb	24(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 24(%rdx)
	movb	25(%rdx), %dil
	movb	25(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 25(%rdx)
	movb	26(%rdx), %dil
	movb	26(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 26(%rdx)
	movb	27(%rdx), %dil
	movb	27(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 27(%rdx)
	movb	28(%rdx), %dil
	movb	28(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 28(%rdx)
	movb	29(%rdx), %dil
	movb	29(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 29(%rdx)
	movb	30(%rdx), %dil
	movb	30(%rax), %r8b
	xorb	%dil, %r8b
	andb	%cl, %r8b
	xorb	%r8b, %dil
	movb	%dil, 30(%rdx)
	movb	31(%rdx), %dil
	movb	31(%rax), %al
	xorb	%dil, %al
	andb	%cl, %al
	xorb	%al, %dil
	movb	%dil, 31(%rdx)
	movq	$1088, %rax
	leaq	176(%rsp), %rcx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$2(%rip), %rdx
	movq	%rdx, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$2:
	leaq	240(%rsp), %rsp
	movq	(%rsp), %rax
	movq	$32, %rcx
	leaq	144(%rsp), %rdx
	leaq	-224(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_dec$1(%rip), %rsi
	movq	%rsi, 216(%rsp)
	jmp 	L_shake256_64$1
Ljade_kem_kyber_kyber768_amd64_ref_dec$1:
	leaq	224(%rsp), %rsp
	xorq	%rax, %rax
	movq	14504(%rsp), %rbx
	movq	14512(%rsp), %rbp
	movq	14520(%rsp), %r12
	movq	14528(%rsp), %r13
	movq	14536(%rsp), %r14
	movq	14544(%rsp), %r15
	movq	14552(%rsp), %rsp
	ret 
_jade_kem_kyber_kyber768_amd64_ref_enc:
jade_kem_kyber_kyber768_amd64_ref_enc:
	movq	%rsp, %rax
	leaq	-13456(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rax, 13448(%rsp)
	movq	%rbx, 13400(%rsp)
	movq	%rbp, 13408(%rsp)
	movq	%r12, 13416(%rsp)
	movq	%r13, 13424(%rsp)
	movq	%r14, 13432(%rsp)
	movq	%r15, 13440(%rsp)
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movq	%rdx, %r12
	leaq	32(%rsp), %rdi
	movq	$32, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%r12, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 88(%rsp)
	leaq	128(%rsp), %rax
	leaq	64(%rsp), %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$189(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_isha3_256_32$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$189:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rsi
	movq	$1184, %rax
	leaq	160(%rsp), %rcx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$188(%rip), %rdx
	movq	%rdx, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$188:
	leaq	240(%rsp), %rsp
	leaq	64(%rsp), %rax
	leaq	128(%rsp), %rcx
	leaq	-216(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$187(%rip), %rdx
	movq	%rdx, 208(%rsp)
	jmp 	L_sha3_512_64$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$187:
	leaq	216(%rsp), %rsp
	movq	(%rsp), %rdx
	leaq	128(%rsp), %rcx
	leaq	96(%rsp), %rax
	movq	%rdx, %rsi
	leaq	2440(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$186(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$186:
	leaq	384(%rsi), %rsi
	leaq	2952(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$185(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$185:
	leaq	384(%rsi), %rsi
	leaq	3464(%rsp), %rdi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$184(%rip), %r8
	jmp 	L_poly_frombytes$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$184:
	movq	$0, %rsi
	leaq	1152(%rdx), %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$182
Ljade_kem_kyber_kyber768_amd64_ref_enc$183:
	movq	(%rdx), %rdi
	movq	%rdi, 32(%rsp,%rsi,8)
	leaq	8(%rdx), %rdx
	leaq	1(%rsi), %rsi
Ljade_kem_kyber_kyber768_amd64_ref_enc$182:
	cmpq	$4, %rsi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$183
	leaq	392(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$181(%rip), %rsi
	jmp 	L_i_poly_frommsg$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$181:
	movq	$1, %rcx
	movq	%rcx, (%rsp)
	movb	32(%rsp), %cl
	movb	%cl, 13192(%rsp)
	movb	33(%rsp), %cl
	movb	%cl, 13193(%rsp)
	movb	34(%rsp), %cl
	movb	%cl, 13194(%rsp)
	movb	35(%rsp), %cl
	movb	%cl, 13195(%rsp)
	movb	36(%rsp), %cl
	movb	%cl, 13196(%rsp)
	movb	37(%rsp), %cl
	movb	%cl, 13197(%rsp)
	movb	38(%rsp), %cl
	movb	%cl, 13198(%rsp)
	movb	39(%rsp), %cl
	movb	%cl, 13199(%rsp)
	movb	40(%rsp), %cl
	movb	%cl, 13200(%rsp)
	movb	41(%rsp), %cl
	movb	%cl, 13201(%rsp)
	movb	42(%rsp), %cl
	movb	%cl, 13202(%rsp)
	movb	43(%rsp), %cl
	movb	%cl, 13203(%rsp)
	movb	44(%rsp), %cl
	movb	%cl, 13204(%rsp)
	movb	45(%rsp), %cl
	movb	%cl, 13205(%rsp)
	movb	46(%rsp), %cl
	movb	%cl, 13206(%rsp)
	movb	47(%rsp), %cl
	movb	%cl, 13207(%rsp)
	movb	48(%rsp), %cl
	movb	%cl, 13208(%rsp)
	movb	49(%rsp), %cl
	movb	%cl, 13209(%rsp)
	movb	50(%rsp), %cl
	movb	%cl, 13210(%rsp)
	movb	51(%rsp), %cl
	movb	%cl, 13211(%rsp)
	movb	52(%rsp), %cl
	movb	%cl, 13212(%rsp)
	movb	53(%rsp), %cl
	movb	%cl, 13213(%rsp)
	movb	54(%rsp), %cl
	movb	%cl, 13214(%rsp)
	movb	55(%rsp), %cl
	movb	%cl, 13215(%rsp)
	movb	56(%rsp), %cl
	movb	%cl, 13216(%rsp)
	movb	57(%rsp), %cl
	movb	%cl, 13217(%rsp)
	movb	58(%rsp), %cl
	movb	%cl, 13218(%rsp)
	movb	59(%rsp), %cl
	movb	%cl, 13219(%rsp)
	movb	60(%rsp), %cl
	movb	%cl, 13220(%rsp)
	movb	61(%rsp), %cl
	movb	%cl, 13221(%rsp)
	movb	62(%rsp), %cl
	movb	%cl, 13222(%rsp)
	movb	63(%rsp), %cl
	movb	%cl, 13223(%rsp)
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$179
	movb	$0, 13224(%rsp)
	movb	$0, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$180
Ljade_kem_kyber_kyber768_amd64_ref_enc$179:
	movb	$0, 13224(%rsp)
	movb	$0, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$180:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$178(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$178:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$170
Ljade_kem_kyber_kyber768_amd64_ref_enc$171:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$177(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$177:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$172
Ljade_kem_kyber_kyber768_amd64_ref_enc$173:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$176
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$176:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$174
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$174
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$175:
Ljade_kem_kyber_kyber768_amd64_ref_enc$174:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$172:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$173
Ljade_kem_kyber_kyber768_amd64_ref_enc$170:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$171
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$168
Ljade_kem_kyber_kyber768_amd64_ref_enc$169:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$168:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$169
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$166
	movb	$0, 13224(%rsp)
	movb	$1, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$167
Ljade_kem_kyber_kyber768_amd64_ref_enc$166:
	movb	$1, 13224(%rsp)
	movb	$0, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$167:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$165(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$165:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$157
Ljade_kem_kyber_kyber768_amd64_ref_enc$158:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$164(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$164:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$159
Ljade_kem_kyber_kyber768_amd64_ref_enc$160:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$163
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$163:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$161
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$161
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$162:
Ljade_kem_kyber_kyber768_amd64_ref_enc$161:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$159:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$160
Ljade_kem_kyber_kyber768_amd64_ref_enc$157:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$158
	movq	$0, %rcx
	movq	$256, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$155
Ljade_kem_kyber_kyber768_amd64_ref_enc$156:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$155:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$156
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$153
	movb	$0, 13224(%rsp)
	movb	$2, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$154
Ljade_kem_kyber_kyber768_amd64_ref_enc$153:
	movb	$2, 13224(%rsp)
	movb	$0, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$154:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$152(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$152:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$144
Ljade_kem_kyber_kyber768_amd64_ref_enc$145:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$151(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$151:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$146
Ljade_kem_kyber_kyber768_amd64_ref_enc$147:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$150
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$150:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$148
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$148
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$149:
Ljade_kem_kyber_kyber768_amd64_ref_enc$148:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$146:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$147
Ljade_kem_kyber_kyber768_amd64_ref_enc$144:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$145
	movq	$0, %rcx
	movq	$512, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$142
Ljade_kem_kyber_kyber768_amd64_ref_enc$143:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$142:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$143
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$140
	movb	$1, 13224(%rsp)
	movb	$0, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$141
Ljade_kem_kyber_kyber768_amd64_ref_enc$140:
	movb	$0, 13224(%rsp)
	movb	$1, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$141:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$139(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$139:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$131
Ljade_kem_kyber_kyber768_amd64_ref_enc$132:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$138(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$138:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$133
Ljade_kem_kyber_kyber768_amd64_ref_enc$134:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$137
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$137:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$135
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$135
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$136:
Ljade_kem_kyber_kyber768_amd64_ref_enc$135:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$133:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$134
Ljade_kem_kyber_kyber768_amd64_ref_enc$131:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$132
	movq	$0, %rcx
	movq	$768, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$129
Ljade_kem_kyber_kyber768_amd64_ref_enc$130:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$129:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$130
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$127
	movb	$1, 13224(%rsp)
	movb	$1, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$128
Ljade_kem_kyber_kyber768_amd64_ref_enc$127:
	movb	$1, 13224(%rsp)
	movb	$1, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$128:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$126(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$126:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$118
Ljade_kem_kyber_kyber768_amd64_ref_enc$119:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$125(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$125:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$120
Ljade_kem_kyber_kyber768_amd64_ref_enc$121:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$124
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$124:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$122
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$122
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$123:
Ljade_kem_kyber_kyber768_amd64_ref_enc$122:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$120:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$121
Ljade_kem_kyber_kyber768_amd64_ref_enc$118:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$119
	movq	$0, %rcx
	movq	$1024, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$116
Ljade_kem_kyber_kyber768_amd64_ref_enc$117:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$116:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$117
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$114
	movb	$1, 13224(%rsp)
	movb	$2, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$115
Ljade_kem_kyber_kyber768_amd64_ref_enc$114:
	movb	$2, 13224(%rsp)
	movb	$1, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$115:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$113(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$113:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$105
Ljade_kem_kyber_kyber768_amd64_ref_enc$106:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$112(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$112:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$107
Ljade_kem_kyber_kyber768_amd64_ref_enc$108:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$111
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$111:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$109
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$109
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$110:
Ljade_kem_kyber_kyber768_amd64_ref_enc$109:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$107:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$108
Ljade_kem_kyber_kyber768_amd64_ref_enc$105:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$106
	movq	$0, %rcx
	movq	$1280, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$103
Ljade_kem_kyber_kyber768_amd64_ref_enc$104:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$103:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$104
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$101
	movb	$2, 13224(%rsp)
	movb	$0, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$102
Ljade_kem_kyber_kyber768_amd64_ref_enc$101:
	movb	$0, 13224(%rsp)
	movb	$2, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$102:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$100(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$100:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$92
Ljade_kem_kyber_kyber768_amd64_ref_enc$93:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$99(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$99:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$94
Ljade_kem_kyber_kyber768_amd64_ref_enc$95:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$98
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$98:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$96
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$96
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$97:
Ljade_kem_kyber_kyber768_amd64_ref_enc$96:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$94:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$95
Ljade_kem_kyber_kyber768_amd64_ref_enc$92:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$93
	movq	$0, %rcx
	movq	$1536, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$90
Ljade_kem_kyber_kyber768_amd64_ref_enc$91:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$90:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$91
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$88
	movb	$2, 13224(%rsp)
	movb	$1, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$89
Ljade_kem_kyber_kyber768_amd64_ref_enc$88:
	movb	$1, 13224(%rsp)
	movb	$2, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$89:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$87(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$87:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$79
Ljade_kem_kyber_kyber768_amd64_ref_enc$80:
	movq	%r8, 24(%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$86(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$86:
	movq	24(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$81
Ljade_kem_kyber_kyber768_amd64_ref_enc$82:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$85
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$85:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$83
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$83
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$84:
Ljade_kem_kyber_kyber768_amd64_ref_enc$83:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$81:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$82
Ljade_kem_kyber_kyber768_amd64_ref_enc$79:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$80
	movq	$0, %rcx
	movq	$1792, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$77
Ljade_kem_kyber_kyber768_amd64_ref_enc$78:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$77:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$78
	movq	(%rsp), %rcx
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$75
	movb	$2, 13224(%rsp)
	movb	$2, 13225(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$76
Ljade_kem_kyber_kyber768_amd64_ref_enc$75:
	movb	$2, 13224(%rsp)
	movb	$2, 13225(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_enc$76:
	leaq	192(%rsp), %rcx
	leaq	13192(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$74(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$74:
	movq	$0, %r8
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$66
Ljade_kem_kyber_kyber768_amd64_ref_enc$67:
	movq	%r8, (%rsp)
	leaq	192(%rsp), %rcx
	leaq	13226(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$73(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$73:
	movq	(%rsp), %rcx
	movq	%rcx, %r8
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$68
Ljade_kem_kyber_kyber768_amd64_ref_enc$69:
	movzbw	13226(%rsp,%rcx), %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	movw	%si, %di
	shrw	$4, %di
	andw	$15, %si
	shlw	$8, %si
	orw 	%si, %dx
	leaq	1(%rcx), %rcx
	movzbw	13226(%rsp,%rcx), %si
	shlw	$4, %si
	orw 	%si, %di
	leaq	1(%rcx), %rcx
	cmpw	$3329, %dx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$72
	movw	%dx, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$72:
	cmpw	$3329, %di
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$70
	cmpq	$256, %r8
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_enc$70
	movw	%di, 904(%rsp,%r8,2)
	leaq	1(%r8), %r8
Ljade_kem_kyber_kyber768_amd64_ref_enc$71:
Ljade_kem_kyber_kyber768_amd64_ref_enc$70:
	movq	$256, %rdx
	subq	%r8, %rdx
	leaq	-1(%rdx), %rdx
	movq	$168, %rsi
	subq	%rcx, %rsi
	leaq	-3(%rsi), %rsi
	orq 	%rsi, %rdx
	shrq	$63, %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$68:
	cmpq	$0, %rdx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_enc$69
Ljade_kem_kyber_kyber768_amd64_ref_enc$66:
	cmpq	$256, %r8
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$67
	movq	$0, %rcx
	movq	$2048, %rdx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$64
Ljade_kem_kyber_kyber768_amd64_ref_enc$65:
	movw	904(%rsp,%rcx,2), %si
	movw	%si, 8584(%rsp,%rdx,2)
	leaq	1(%rcx), %rcx
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$64:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$65
	movb	$0, %cl
	leaq	3976(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$63(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$63:
	leaq	176(%rsp), %rsp
	movb	$1, %cl
	leaq	4488(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$62(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$62:
	leaq	176(%rsp), %rsp
	movb	$2, %cl
	leaq	5000(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$61(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$61:
	leaq	176(%rsp), %rsp
	movb	$3, %cl
	leaq	5512(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$60(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$60:
	leaq	176(%rsp), %rsp
	movb	$4, %cl
	leaq	6024(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$59(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$59:
	leaq	176(%rsp), %rsp
	movb	$5, %cl
	leaq	6536(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$58(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$58:
	leaq	176(%rsp), %rsp
	movb	$6, %cl
	leaq	904(%rsp), %rdx
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$57(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$57:
	leaq	176(%rsp), %rsp
	leaq	3976(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$56(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$56:
	leaq	4488(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$55(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$55:
	leaq	5000(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$54(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$54:
	leaq	7048(%rsp), %rdi
	leaq	8584(%rsp), %rcx
	leaq	3976(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$53(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$53:
	leaq	16(%rsp), %rsp
	leaq	1416(%rsp), %rdi
	leaq	9096(%rsp), %rcx
	leaq	4488(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$52(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$52:
	leaq	16(%rsp), %rsp
	leaq	7048(%rsp), %rcx
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$51(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$51:
	leaq	1416(%rsp), %rdi
	leaq	9608(%rsp), %rcx
	leaq	5000(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$50(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$50:
	leaq	16(%rsp), %rsp
	leaq	7048(%rsp), %rcx
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$49(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$49:
	leaq	7048(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$47
Ljade_kem_kyber_kyber768_amd64_ref_enc$48:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$47:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$48
	leaq	7560(%rsp), %rdi
	leaq	10120(%rsp), %rcx
	leaq	3976(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$46(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$46:
	leaq	16(%rsp), %rsp
	leaq	1416(%rsp), %rdi
	leaq	10632(%rsp), %rcx
	leaq	4488(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$45(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$45:
	leaq	16(%rsp), %rsp
	leaq	7560(%rsp), %rcx
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$44(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$44:
	leaq	1416(%rsp), %rdi
	leaq	11144(%rsp), %rcx
	leaq	5000(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$43(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$43:
	leaq	16(%rsp), %rsp
	leaq	7560(%rsp), %rcx
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$42(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$42:
	leaq	7560(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$40
Ljade_kem_kyber_kyber768_amd64_ref_enc$41:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$40:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$41
	leaq	8072(%rsp), %rdi
	leaq	11656(%rsp), %rcx
	leaq	3976(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$39(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$39:
	leaq	16(%rsp), %rsp
	leaq	1416(%rsp), %rdi
	leaq	12168(%rsp), %rcx
	leaq	4488(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$38(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$38:
	leaq	16(%rsp), %rsp
	leaq	8072(%rsp), %rcx
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$37(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$37:
	leaq	1416(%rsp), %rdi
	leaq	12680(%rsp), %rcx
	leaq	5000(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$36(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$36:
	leaq	16(%rsp), %rsp
	leaq	8072(%rsp), %rcx
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$35(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$35:
	leaq	8072(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$33
Ljade_kem_kyber_kyber768_amd64_ref_enc$34:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$33:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$34
	leaq	1416(%rsp), %rdi
	leaq	2440(%rsp), %rcx
	leaq	3976(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$32(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$32:
	leaq	16(%rsp), %rsp
	leaq	1928(%rsp), %rdi
	leaq	2952(%rsp), %rcx
	leaq	4488(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$31(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$31:
	leaq	16(%rsp), %rsp
	leaq	1416(%rsp), %rcx
	leaq	1928(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$30(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$30:
	leaq	1928(%rsp), %rdi
	leaq	3464(%rsp), %rcx
	leaq	5000(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$29(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$29:
	leaq	16(%rsp), %rsp
	leaq	1416(%rsp), %rcx
	leaq	1928(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$28(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$28:
	leaq	1416(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$26
Ljade_kem_kyber_kyber768_amd64_ref_enc$27:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$26:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$27
	leaq	7048(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$25(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$25:
	leaq	7560(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$24(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$24:
	leaq	8072(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$23(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$23:
	leaq	1416(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$22(%rip), %r15
	jmp 	L_poly_invntt$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$22:
	leaq	7048(%rsp), %rcx
	leaq	5512(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$21(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$21:
	leaq	7560(%rsp), %rcx
	leaq	6024(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$20(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$20:
	leaq	8072(%rsp), %rcx
	leaq	6536(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$19(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$19:
	leaq	1416(%rsp), %rcx
	leaq	904(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$18(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$18:
	leaq	1416(%rsp), %rcx
	leaq	392(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$17(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$17:
	leaq	7048(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$15
Ljade_kem_kyber_kyber768_amd64_ref_enc$16:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$15:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$16
	leaq	7560(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$13
Ljade_kem_kyber_kyber768_amd64_ref_enc$14:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$13:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$14
	leaq	8072(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$11
Ljade_kem_kyber_kyber768_amd64_ref_enc$12:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$11:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$12
	leaq	1416(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$9
Ljade_kem_kyber_kyber768_amd64_ref_enc$10:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_enc$9:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$10
	movq	8(%rsp), %rax
	movq	$0, %rcx
	movq	$0, %rdx
	leaq	7048(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$8(%rip), %r10
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$8:
	leaq	7560(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$7(%rip), %r10
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$7:
	leaq	8072(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$6(%rip), %r10
	jmp 	L_poly_csubq$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$6:
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_enc$4
Ljade_kem_kyber_kyber768_amd64_ref_enc$5:
	movzwq	7048(%rsp,%rcx,2), %rsi
	leaq	1(%rcx), %rcx
	shlq	$10, %rsi
	leaq	1665(%rsi), %rsi
	imulq	$1290167, %rsi, %rsi
	shrq	$32, %rsi
	andq	$1023, %rsi
	movzwq	7048(%rsp,%rcx,2), %rdi
	leaq	1(%rcx), %rcx
	shlq	$10, %rdi
	leaq	1665(%rdi), %rdi
	imulq	$1290167, %rdi, %rdi
	shrq	$32, %rdi
	andq	$1023, %rdi
	movzwq	7048(%rsp,%rcx,2), %r8
	leaq	1(%rcx), %rcx
	shlq	$10, %r8
	leaq	1665(%r8), %r8
	imulq	$1290167, %r8, %r8
	shrq	$32, %r8
	andq	$1023, %r8
	movzwq	7048(%rsp,%rcx,2), %r9
	leaq	1(%rcx), %rcx
	shlq	$10, %r9
	leaq	1665(%r9), %r9
	imulq	$1290167, %r9, %r9
	shrq	$32, %r9
	andq	$1023, %r9
	movw	%si, %r10w
	andw	$255, %r10w
	movb	%r10b, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	shrw	$8, %si
	movw	%di, %r10w
	shlw	$2, %r10w
	orw 	%si, %r10w
	movb	%r10b, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	shrw	$6, %di
	movw	%r8w, %si
	shlw	$4, %si
	orw 	%di, %si
	movb	%sil, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	shrw	$4, %r8w
	movw	%r9w, %si
	shlw	$6, %si
	orw 	%r8w, %si
	movb	%sil, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	shrq	$2, %r9
	movb	%r9b, (%rax,%rdx)
	leaq	1(%rdx), %rdx
Ljade_kem_kyber_kyber768_amd64_ref_enc$4:
	cmpq	$768, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_enc$5
	leaq	960(%rax), %rax
	leaq	1416(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$3(%rip), %rcx
	jmp 	L_poly_compress$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$3:
	movq	8(%rsp), %rsi
	movq	$1088, %rax
	leaq	96(%rsp), %rcx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$2(%rip), %rdx
	movq	%rdx, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$2:
	leaq	240(%rsp), %rsp
	movq	16(%rsp), %rax
	movq	$32, %rcx
	leaq	64(%rsp), %rdx
	leaq	-224(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_enc$1(%rip), %rsi
	movq	%rsi, 216(%rsp)
	jmp 	L_shake256_64$1
Ljade_kem_kyber_kyber768_amd64_ref_enc$1:
	leaq	224(%rsp), %rsp
	xorq	%rax, %rax
	movq	13400(%rsp), %rbx
	movq	13408(%rsp), %rbp
	movq	13416(%rsp), %r12
	movq	13424(%rsp), %r13
	movq	13432(%rsp), %r14
	movq	13440(%rsp), %r15
	movq	13448(%rsp), %rsp
	ret 
_jade_kem_kyber_kyber768_amd64_ref_keypair:
jade_kem_kyber_kyber768_amd64_ref_keypair:
	movq	%rsp, %rax
	leaq	-10440(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rax, 10432(%rsp)
	movq	%rbx, 10384(%rsp)
	movq	%rbp, 10392(%rsp)
	movq	%r12, 10400(%rsp)
	movq	%r13, 10408(%rsp)
	movq	%r14, 10416(%rsp)
	movq	%r15, 10424(%rsp)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	leaq	120(%rsp), %rdi
	movq	$64, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbp, 32(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 80(%rsp)
	leaq	184(%rsp), %rax
	leaq	56(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$170(%rip), %r13
	jmp 	L_sha3512_32$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$170:
	leaq	200(%rsp), %rsp
	movq	184(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	$0, %rax
	movq	%rax, 40(%rsp)
	movb	56(%rsp), %al
	movb	%al, 10176(%rsp)
	movb	57(%rsp), %al
	movb	%al, 10177(%rsp)
	movb	58(%rsp), %al
	movb	%al, 10178(%rsp)
	movb	59(%rsp), %al
	movb	%al, 10179(%rsp)
	movb	60(%rsp), %al
	movb	%al, 10180(%rsp)
	movb	61(%rsp), %al
	movb	%al, 10181(%rsp)
	movb	62(%rsp), %al
	movb	%al, 10182(%rsp)
	movb	63(%rsp), %al
	movb	%al, 10183(%rsp)
	movb	64(%rsp), %al
	movb	%al, 10184(%rsp)
	movb	65(%rsp), %al
	movb	%al, 10185(%rsp)
	movb	66(%rsp), %al
	movb	%al, 10186(%rsp)
	movb	67(%rsp), %al
	movb	%al, 10187(%rsp)
	movb	68(%rsp), %al
	movb	%al, 10188(%rsp)
	movb	69(%rsp), %al
	movb	%al, 10189(%rsp)
	movb	70(%rsp), %al
	movb	%al, 10190(%rsp)
	movb	71(%rsp), %al
	movb	%al, 10191(%rsp)
	movb	72(%rsp), %al
	movb	%al, 10192(%rsp)
	movb	73(%rsp), %al
	movb	%al, 10193(%rsp)
	movb	74(%rsp), %al
	movb	%al, 10194(%rsp)
	movb	75(%rsp), %al
	movb	%al, 10195(%rsp)
	movb	76(%rsp), %al
	movb	%al, 10196(%rsp)
	movb	77(%rsp), %al
	movb	%al, 10197(%rsp)
	movb	78(%rsp), %al
	movb	%al, 10198(%rsp)
	movb	79(%rsp), %al
	movb	%al, 10199(%rsp)
	movb	80(%rsp), %al
	movb	%al, 10200(%rsp)
	movb	81(%rsp), %al
	movb	%al, 10201(%rsp)
	movb	82(%rsp), %al
	movb	%al, 10202(%rsp)
	movb	83(%rsp), %al
	movb	%al, 10203(%rsp)
	movb	84(%rsp), %al
	movb	%al, 10204(%rsp)
	movb	85(%rsp), %al
	movb	%al, 10205(%rsp)
	movb	86(%rsp), %al
	movb	%al, 10206(%rsp)
	movb	87(%rsp), %al
	movb	%al, 10207(%rsp)
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$168
	movb	$0, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$169
Ljade_kem_kyber_kyber768_amd64_ref_keypair$168:
	movb	$0, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$169:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$167(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$167:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$159
Ljade_kem_kyber_kyber768_amd64_ref_keypair$160:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$166(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$166:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$161
Ljade_kem_kyber_kyber768_amd64_ref_keypair$162:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$165
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$165:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$163
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$163
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$164:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$163:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$161:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$162
Ljade_kem_kyber_kyber768_amd64_ref_keypair$159:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$160
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$157
Ljade_kem_kyber_kyber768_amd64_ref_keypair$158:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$157:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$158
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$155
	movb	$0, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$156
Ljade_kem_kyber_kyber768_amd64_ref_keypair$155:
	movb	$1, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$156:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$154(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$154:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$146
Ljade_kem_kyber_kyber768_amd64_ref_keypair$147:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$153(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$153:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$148
Ljade_kem_kyber_kyber768_amd64_ref_keypair$149:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$152
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$152:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$150
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$150
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$151:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$150:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$148:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$149
Ljade_kem_kyber_kyber768_amd64_ref_keypair$146:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$147
	movq	$0, %rax
	movq	$256, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$144
Ljade_kem_kyber_kyber768_amd64_ref_keypair$145:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$144:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$145
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$142
	movb	$0, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$143
Ljade_kem_kyber_kyber768_amd64_ref_keypair$142:
	movb	$2, 10208(%rsp)
	movb	$0, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$143:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$141(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$141:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$133
Ljade_kem_kyber_kyber768_amd64_ref_keypair$134:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$140(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$140:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$135
Ljade_kem_kyber_kyber768_amd64_ref_keypair$136:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$139
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$139:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$137
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$137
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$138:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$137:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$135:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$136
Ljade_kem_kyber_kyber768_amd64_ref_keypair$133:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$134
	movq	$0, %rax
	movq	$512, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$131
Ljade_kem_kyber_kyber768_amd64_ref_keypair$132:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$131:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$132
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$129
	movb	$1, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$130
Ljade_kem_kyber_kyber768_amd64_ref_keypair$129:
	movb	$0, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$130:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$128(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$128:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$120
Ljade_kem_kyber_kyber768_amd64_ref_keypair$121:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$127(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$127:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$122
Ljade_kem_kyber_kyber768_amd64_ref_keypair$123:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$126
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$126:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$124
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$124
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$125:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$124:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$122:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$123
Ljade_kem_kyber_kyber768_amd64_ref_keypair$120:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$121
	movq	$0, %rax
	movq	$768, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$118
Ljade_kem_kyber_kyber768_amd64_ref_keypair$119:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$118:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$119
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$116
	movb	$1, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$117
Ljade_kem_kyber_kyber768_amd64_ref_keypair$116:
	movb	$1, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$117:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$115(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$115:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$107
Ljade_kem_kyber_kyber768_amd64_ref_keypair$108:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$114(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$114:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$109
Ljade_kem_kyber_kyber768_amd64_ref_keypair$110:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$113
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$113:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$111
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$111
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$112:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$111:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$109:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$110
Ljade_kem_kyber_kyber768_amd64_ref_keypair$107:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$108
	movq	$0, %rax
	movq	$1024, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$105
Ljade_kem_kyber_kyber768_amd64_ref_keypair$106:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$105:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$106
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$103
	movb	$1, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$104
Ljade_kem_kyber_kyber768_amd64_ref_keypair$103:
	movb	$2, 10208(%rsp)
	movb	$1, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$104:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$102(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$102:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$94
Ljade_kem_kyber_kyber768_amd64_ref_keypair$95:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$101(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$101:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$96
Ljade_kem_kyber_kyber768_amd64_ref_keypair$97:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$100
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$100:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$98
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$98
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$99:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$98:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$96:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$97
Ljade_kem_kyber_kyber768_amd64_ref_keypair$94:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$95
	movq	$0, %rax
	movq	$1280, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$92
Ljade_kem_kyber_kyber768_amd64_ref_keypair$93:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$92:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$93
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$90
	movb	$2, 10208(%rsp)
	movb	$0, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$91
Ljade_kem_kyber_kyber768_amd64_ref_keypair$90:
	movb	$0, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$91:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$89(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$89:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$81
Ljade_kem_kyber_kyber768_amd64_ref_keypair$82:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$88(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$88:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$83
Ljade_kem_kyber_kyber768_amd64_ref_keypair$84:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$87
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$87:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$85
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$85
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$86:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$85:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$83:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$84
Ljade_kem_kyber_kyber768_amd64_ref_keypair$81:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$82
	movq	$0, %rax
	movq	$1536, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$79
Ljade_kem_kyber_kyber768_amd64_ref_keypair$80:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$79:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$80
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$77
	movb	$2, 10208(%rsp)
	movb	$1, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$78
Ljade_kem_kyber_kyber768_amd64_ref_keypair$77:
	movb	$1, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$78:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$76(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$76:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$68
Ljade_kem_kyber_kyber768_amd64_ref_keypair$69:
	movq	%rdi, 48(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$75(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$75:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$70
Ljade_kem_kyber_kyber768_amd64_ref_keypair$71:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$74
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$74:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$72
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$72
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$73:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$72:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$70:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$71
Ljade_kem_kyber_kyber768_amd64_ref_keypair$68:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$69
	movq	$0, %rax
	movq	$1792, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$66
Ljade_kem_kyber_kyber768_amd64_ref_keypair$67:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$66:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$67
	movq	40(%rsp), %rax
	cmpq	$0, %rax
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$64
	movb	$2, 10208(%rsp)
	movb	$2, 10209(%rsp)
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$65
Ljade_kem_kyber_kyber768_amd64_ref_keypair$64:
	movb	$2, 10208(%rsp)
	movb	$2, 10209(%rsp)
Ljade_kem_kyber_kyber768_amd64_ref_keypair$65:
	leaq	248(%rsp), %rcx
	leaq	10176(%rsp), %rdx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$63(%rip), %rsi
	jmp 	L_shake128_absorb34$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$63:
	movq	$0, %rdi
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$55
Ljade_kem_kyber_kyber768_amd64_ref_keypair$56:
	movq	%rdi, 40(%rsp)
	leaq	248(%rsp), %rcx
	leaq	10210(%rsp), %r13
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$62(%rip), %r14
	jmp 	L_shake128_squeezeblock$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$62:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$57
Ljade_kem_kyber_kyber768_amd64_ref_keypair$58:
	movzbw	10210(%rsp,%rax), %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	movw	%dx, %si
	shrw	$4, %si
	andw	$15, %dx
	shlw	$8, %dx
	orw 	%dx, %cx
	leaq	1(%rax), %rax
	movzbw	10210(%rsp,%rax), %dx
	shlw	$4, %dx
	orw 	%dx, %si
	leaq	1(%rax), %rax
	cmpw	$3329, %cx
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$61
	movw	%cx, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$61:
	cmpw	$3329, %si
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$59
	cmpq	$256, %rdi
	jnb 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$59
	movw	%si, 448(%rsp,%rdi,2)
	leaq	1(%rdi), %rdi
Ljade_kem_kyber_kyber768_amd64_ref_keypair$60:
Ljade_kem_kyber_kyber768_amd64_ref_keypair$59:
	movq	$256, %rcx
	subq	%rdi, %rcx
	leaq	-1(%rcx), %rcx
	movq	$168, %rdx
	subq	%rax, %rdx
	leaq	-3(%rdx), %rdx
	orq 	%rdx, %rcx
	shrq	$63, %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$57:
	cmpq	$0, %rcx
	je  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$58
Ljade_kem_kyber_kyber768_amd64_ref_keypair$55:
	cmpq	$256, %rdi
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$56
	movq	$0, %rax
	movq	$2048, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$53
Ljade_kem_kyber_kyber768_amd64_ref_keypair$54:
	movw	448(%rsp,%rax,2), %dx
	movw	%dx, 5568(%rsp,%rcx,2)
	leaq	1(%rax), %rax
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$53:
	cmpq	$256, %rax
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$54
	movb	$0, %cl
	leaq	960(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$52(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$52:
	leaq	176(%rsp), %rsp
	movb	$1, %cl
	leaq	1472(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$51(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$51:
	leaq	176(%rsp), %rsp
	movb	$2, %cl
	leaq	1984(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$50(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$50:
	leaq	176(%rsp), %rsp
	movb	$3, %cl
	leaq	2496(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$49(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$49:
	leaq	176(%rsp), %rsp
	movb	$4, %cl
	leaq	3008(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$48(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$48:
	leaq	176(%rsp), %rsp
	movb	$5, %cl
	leaq	3520(%rsp), %rdx
	leaq	88(%rsp), %rax
	leaq	-176(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$47(%rip), %r13
	jmp 	L_poly_getnoise$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$47:
	leaq	176(%rsp), %rsp
	leaq	960(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$46(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$46:
	leaq	1472(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$45(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$45:
	leaq	1984(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$44(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$44:
	leaq	2496(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$43(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$43:
	leaq	3008(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$42(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$42:
	leaq	3520(%rsp), %rcx
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$41(%rip), %rbp
	jmp 	L_poly_ntt$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$41:
	leaq	4032(%rsp), %rdi
	leaq	5568(%rsp), %rcx
	leaq	960(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$40(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$40:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rdi
	leaq	6080(%rsp), %rcx
	leaq	1472(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$39(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$39:
	leaq	16(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$38(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$38:
	leaq	448(%rsp), %rdi
	leaq	6592(%rsp), %rcx
	leaq	1984(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$37(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$37:
	leaq	16(%rsp), %rsp
	leaq	4032(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$36(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$36:
	leaq	4032(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$34
Ljade_kem_kyber_kyber768_amd64_ref_keypair$35:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$34:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$35
	leaq	4032(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$33(%rip), %r8
	jmp 	L_poly_frommont$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$33:
	leaq	4544(%rsp), %rdi
	leaq	7104(%rsp), %rcx
	leaq	960(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$32(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$32:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rdi
	leaq	7616(%rsp), %rcx
	leaq	1472(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$31(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$31:
	leaq	16(%rsp), %rsp
	leaq	4544(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$30(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$30:
	leaq	448(%rsp), %rdi
	leaq	8128(%rsp), %rcx
	leaq	1984(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$29(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$29:
	leaq	16(%rsp), %rsp
	leaq	4544(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$28(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$28:
	leaq	4544(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$26
Ljade_kem_kyber_kyber768_amd64_ref_keypair$27:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$26:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$27
	leaq	4544(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$25(%rip), %r8
	jmp 	L_poly_frommont$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$25:
	leaq	5056(%rsp), %rdi
	leaq	8640(%rsp), %rcx
	leaq	960(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$24(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$24:
	leaq	16(%rsp), %rsp
	leaq	448(%rsp), %rdi
	leaq	9152(%rsp), %rcx
	leaq	1472(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$23(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$23:
	leaq	16(%rsp), %rsp
	leaq	5056(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$22(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$22:
	leaq	448(%rsp), %rdi
	leaq	9664(%rsp), %rcx
	leaq	1984(%rsp), %rsi
	leaq	-16(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$21(%rip), %r9
	jmp 	L_poly_basemul$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$21:
	leaq	16(%rsp), %rsp
	leaq	5056(%rsp), %rcx
	leaq	448(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$20(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$20:
	leaq	5056(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$18
Ljade_kem_kyber_kyber768_amd64_ref_keypair$19:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$18:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$19
	leaq	5056(%rsp), %rax
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$17(%rip), %r8
	jmp 	L_poly_frommont$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$17:
	leaq	4032(%rsp), %rcx
	leaq	2496(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$16(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$16:
	leaq	4544(%rsp), %rcx
	leaq	3008(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$15(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$15:
	leaq	5056(%rsp), %rcx
	leaq	3520(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$14(%rip), %r10
	jmp 	L_poly_add2$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$14:
	leaq	4032(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$12
Ljade_kem_kyber_kyber768_amd64_ref_keypair$13:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$12:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$13
	leaq	4544(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$10
Ljade_kem_kyber_kyber768_amd64_ref_keypair$11:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$10:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$11
	leaq	5056(%rsp), %rax
	movq	$0, %rcx
	jmp 	Ljade_kem_kyber_kyber768_amd64_ref_keypair$8
Ljade_kem_kyber_kyber768_amd64_ref_keypair$9:
	movw	(%rax,%rcx,2), %dx
	movswl	%dx, %esi
	imull	$20159, %esi, %esi
	sarl	$26, %esi
	imull	$3329, %esi, %esi
	subw	%si, %dx
	movw	%dx, (%rax,%rcx,2)
	leaq	1(%rcx), %rcx
Ljade_kem_kyber_kyber768_amd64_ref_keypair$8:
	cmpq	$256, %rcx
	jb  	Ljade_kem_kyber_kyber768_amd64_ref_keypair$9
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	960(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$7(%rip), %rdx
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$7:
	leaq	384(%rcx), %rcx
	leaq	1472(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$6(%rip), %rdx
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$6:
	leaq	384(%rcx), %rcx
	leaq	1984(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$5(%rip), %rdx
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$5:
	movq	%rax, %rcx
	leaq	4032(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$4(%rip), %rdx
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$4:
	leaq	384(%rcx), %rcx
	leaq	4544(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$3(%rip), %rdx
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$3:
	leaq	384(%rcx), %rcx
	leaq	5056(%rsp), %rsi
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$2(%rip), %rdx
	jmp 	L_poly_tobytes$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$2:
	leaq	1152(%rax), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	72(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	leaq	1152(%rax), %rcx
	movq	8(%rsp), %rax
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
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rsi
	movq	$1184, %rax
	leaq	56(%rsp), %rcx
	leaq	-240(%rsp), %rsp
	leaq	Ljade_kem_kyber_kyber768_amd64_ref_keypair$1(%rip), %rdx
	movq	%rdx, 232(%rsp)
	jmp 	L_isha3_256$1
Ljade_kem_kyber_kyber768_amd64_ref_keypair$1:
	leaq	240(%rsp), %rsp
	movq	16(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	72(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	8(%rax), %rax
	movq	(%rsp), %rcx
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
L_i_poly_tomsg$1:
	leaq	L_i_poly_tomsg$2(%rip), %r10
	jmp 	L_poly_csubq$1
L_i_poly_tomsg$2:
	movb	$0, %dil
	movw	(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	2(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	4(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	6(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	8(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	10(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	12(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	14(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, (%rax)
	movb	$0, %dil
	movw	16(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	18(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	20(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	22(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	24(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	26(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	28(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	30(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 1(%rax)
	movb	$0, %dil
	movw	32(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	34(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	36(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	38(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	40(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	42(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	44(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	46(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 2(%rax)
	movb	$0, %dil
	movw	48(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	50(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	52(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	54(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	56(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	58(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	60(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	62(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 3(%rax)
	movb	$0, %dil
	movw	64(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	66(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	68(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	70(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	72(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	74(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	76(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	78(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 4(%rax)
	movb	$0, %dil
	movw	80(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	82(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	84(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	86(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	88(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	90(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	92(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	94(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 5(%rax)
	movb	$0, %dil
	movw	96(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	98(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	100(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	102(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	104(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	106(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	108(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	110(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 6(%rax)
	movb	$0, %dil
	movw	112(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	114(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	116(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	118(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	120(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	122(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	124(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	126(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 7(%rax)
	movb	$0, %dil
	movw	128(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	130(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	132(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	134(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	136(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	138(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	140(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	142(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 8(%rax)
	movb	$0, %dil
	movw	144(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	146(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	148(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	150(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	152(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	154(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	156(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	158(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 9(%rax)
	movb	$0, %dil
	movw	160(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	162(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	164(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	166(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	168(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	170(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	172(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	174(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 10(%rax)
	movb	$0, %dil
	movw	176(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	178(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	180(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	182(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	184(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	186(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	188(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	190(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 11(%rax)
	movb	$0, %dil
	movw	192(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	194(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	196(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	198(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	200(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	202(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	204(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	206(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 12(%rax)
	movb	$0, %dil
	movw	208(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	210(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	212(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	214(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	216(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	218(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	220(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	222(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 13(%rax)
	movb	$0, %dil
	movw	224(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	226(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	228(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	230(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	232(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	234(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	236(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	238(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 14(%rax)
	movb	$0, %dil
	movw	240(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	242(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	244(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	246(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	248(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	250(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	252(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	254(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 15(%rax)
	movb	$0, %dil
	movw	256(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	258(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	260(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	262(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	264(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	266(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	268(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	270(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 16(%rax)
	movb	$0, %dil
	movw	272(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	274(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	276(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	278(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	280(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	282(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	284(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	286(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 17(%rax)
	movb	$0, %dil
	movw	288(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	290(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	292(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	294(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	296(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	298(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	300(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	302(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 18(%rax)
	movb	$0, %dil
	movw	304(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	306(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	308(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	310(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	312(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	314(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	316(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	318(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 19(%rax)
	movb	$0, %dil
	movw	320(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	322(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	324(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	326(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	328(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	330(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	332(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	334(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 20(%rax)
	movb	$0, %dil
	movw	336(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	338(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	340(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	342(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	344(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	346(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	348(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	350(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 21(%rax)
	movb	$0, %dil
	movw	352(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	354(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	356(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	358(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	360(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	362(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	364(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	366(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 22(%rax)
	movb	$0, %dil
	movw	368(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	370(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	372(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	374(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	376(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	378(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	380(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	382(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 23(%rax)
	movb	$0, %dil
	movw	384(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	386(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	388(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	390(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	392(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	394(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	396(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	398(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 24(%rax)
	movb	$0, %dil
	movw	400(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	402(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	404(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	406(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	408(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	410(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	412(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	414(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 25(%rax)
	movb	$0, %dil
	movw	416(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	418(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	420(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	422(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	424(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	426(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	428(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	430(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 26(%rax)
	movb	$0, %dil
	movw	432(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	434(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	436(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	438(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	440(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	442(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	444(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	446(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 27(%rax)
	movb	$0, %dil
	movw	448(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	450(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	452(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	454(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	456(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	458(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	460(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	462(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 28(%rax)
	movb	$0, %dil
	movw	464(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	466(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	468(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	470(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	472(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	474(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	476(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	478(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 29(%rax)
	movb	$0, %dil
	movw	480(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	482(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	484(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	486(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	488(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	490(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	492(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	494(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$7, %r8d
	orb 	%r8b, %dil
	movb	%dil, 30(%rax)
	movb	$0, %dil
	movw	496(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$0, %r8d
	orb 	%r8b, %dil
	movw	498(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$1, %r8d
	orb 	%r8b, %dil
	movw	500(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$2, %r8d
	orb 	%r8b, %dil
	movw	502(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$3, %r8d
	orb 	%r8b, %dil
	movw	504(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$4, %r8d
	orb 	%r8b, %dil
	movw	506(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$5, %r8d
	orb 	%r8b, %dil
	movw	508(%rsi), %r8w
	movzwl	%r8w, %r8d
	shll	$1, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$1, %r8d
	shll	$6, %r8d
	orb 	%r8b, %dil
	movw	510(%rsi), %si
	movzwl	%si, %esi
	shll	$1, %esi
	leal	1665(%rsi), %esi
	imull	$80635, %esi, %esi
	shrl	$28, %esi
	andl	$1, %esi
	shll	$7, %esi
	orb 	%sil, %dil
	movb	%dil, 31(%rax)
	jmp 	*%rcx
L_poly_tomsg$1:
	leaq	L_poly_tomsg$2(%rip), %r10
	jmp 	L_poly_csubq$1
L_poly_tomsg$2:
	movb	$0, %dl
	movw	(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	2(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	4(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	6(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	8(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	10(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	12(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	14(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, (%rax)
	movb	$0, %dl
	movw	16(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	18(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	20(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	22(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	24(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	26(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	28(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	30(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 1(%rax)
	movb	$0, %dl
	movw	32(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	34(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	36(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	38(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	40(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	42(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	44(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	46(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 2(%rax)
	movb	$0, %dl
	movw	48(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	50(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	52(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	54(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	56(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	58(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	60(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	62(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 3(%rax)
	movb	$0, %dl
	movw	64(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	66(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	68(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	70(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	72(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	74(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	76(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	78(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 4(%rax)
	movb	$0, %dl
	movw	80(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	82(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	84(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	86(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	88(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	90(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	92(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	94(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 5(%rax)
	movb	$0, %dl
	movw	96(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	98(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	100(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	102(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	104(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	106(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	108(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	110(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 6(%rax)
	movb	$0, %dl
	movw	112(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	114(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	116(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	118(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	120(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	122(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	124(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	126(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 7(%rax)
	movb	$0, %dl
	movw	128(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	130(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	132(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	134(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	136(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	138(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	140(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	142(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 8(%rax)
	movb	$0, %dl
	movw	144(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	146(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	148(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	150(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	152(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	154(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	156(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	158(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 9(%rax)
	movb	$0, %dl
	movw	160(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	162(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	164(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	166(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	168(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	170(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	172(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	174(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 10(%rax)
	movb	$0, %dl
	movw	176(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	178(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	180(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	182(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	184(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	186(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	188(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	190(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 11(%rax)
	movb	$0, %dl
	movw	192(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	194(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	196(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	198(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	200(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	202(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	204(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	206(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 12(%rax)
	movb	$0, %dl
	movw	208(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	210(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	212(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	214(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	216(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	218(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	220(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	222(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 13(%rax)
	movb	$0, %dl
	movw	224(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	226(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	228(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	230(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	232(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	234(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	236(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	238(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 14(%rax)
	movb	$0, %dl
	movw	240(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	242(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	244(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	246(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	248(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	250(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	252(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	254(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 15(%rax)
	movb	$0, %dl
	movw	256(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	258(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	260(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	262(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	264(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	266(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	268(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	270(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 16(%rax)
	movb	$0, %dl
	movw	272(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	274(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	276(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	278(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	280(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	282(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	284(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	286(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 17(%rax)
	movb	$0, %dl
	movw	288(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	290(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	292(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	294(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	296(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	298(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	300(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	302(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 18(%rax)
	movb	$0, %dl
	movw	304(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	306(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	308(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	310(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	312(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	314(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	316(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	318(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 19(%rax)
	movb	$0, %dl
	movw	320(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	322(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	324(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	326(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	328(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	330(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	332(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	334(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 20(%rax)
	movb	$0, %dl
	movw	336(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	338(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	340(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	342(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	344(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	346(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	348(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	350(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 21(%rax)
	movb	$0, %dl
	movw	352(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	354(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	356(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	358(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	360(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	362(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	364(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	366(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 22(%rax)
	movb	$0, %dl
	movw	368(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	370(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	372(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	374(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	376(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	378(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	380(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	382(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 23(%rax)
	movb	$0, %dl
	movw	384(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	386(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	388(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	390(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	392(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	394(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	396(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	398(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 24(%rax)
	movb	$0, %dl
	movw	400(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	402(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	404(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	406(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	408(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	410(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	412(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	414(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 25(%rax)
	movb	$0, %dl
	movw	416(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	418(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	420(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	422(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	424(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	426(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	428(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	430(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 26(%rax)
	movb	$0, %dl
	movw	432(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	434(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	436(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	438(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	440(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	442(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	444(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	446(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 27(%rax)
	movb	$0, %dl
	movw	448(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	450(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	452(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	454(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	456(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	458(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	460(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	462(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 28(%rax)
	movb	$0, %dl
	movw	464(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	466(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	468(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	470(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	472(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	474(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	476(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	478(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 29(%rax)
	movb	$0, %dl
	movw	480(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	482(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	484(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	486(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	488(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	490(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	492(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	494(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$7, %edi
	orb 	%dil, %dl
	movb	%dl, 30(%rax)
	movb	$0, %dl
	movw	496(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$0, %edi
	orb 	%dil, %dl
	movw	498(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$1, %edi
	orb 	%dil, %dl
	movw	500(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$2, %edi
	orb 	%dil, %dl
	movw	502(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$3, %edi
	orb 	%dil, %dl
	movw	504(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$4, %edi
	orb 	%dil, %dl
	movw	506(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$5, %edi
	orb 	%dil, %dl
	movw	508(%rsi), %di
	movzwl	%di, %edi
	shll	$1, %edi
	leal	1665(%rdi), %edi
	imull	$80635, %edi, %edi
	shrl	$28, %edi
	andl	$1, %edi
	shll	$6, %edi
	orb 	%dil, %dl
	movw	510(%rsi), %si
	movzwl	%si, %esi
	shll	$1, %esi
	leal	1665(%rsi), %esi
	imull	$80635, %esi, %esi
	shrl	$28, %esi
	andl	$1, %esi
	shll	$7, %esi
	orb 	%sil, %dl
	movb	%dl, 31(%rax)
	jmp 	*%rcx
L_poly_tobytes$1:
	leaq	L_poly_tobytes$4(%rip), %r10
	jmp 	L_poly_csubq$1
L_poly_tobytes$4:
	movq	$0, %rdi
	movq	$0, %r8
	jmp 	L_poly_tobytes$2
L_poly_tobytes$3:
	movw	(%rsi,%rdi,2), %r9w
	leaq	1(%rdi), %rdi
	movw	(%rsi,%rdi,2), %r10w
	leaq	1(%rdi), %rdi
	movw	%r9w, %r11w
	andw	$255, %r11w
	movb	%r11b, (%rcx,%r8)
	leaq	1(%r8), %r8
	shrw	$8, %r9w
	movw	%r10w, %r11w
	andw	$15, %r11w
	shlw	$4, %r11w
	orw 	%r9w, %r11w
	movb	%r11b, (%rcx,%r8)
	leaq	1(%r8), %r8
	shrw	$4, %r10w
	movb	%r10b, (%rcx,%r8)
	leaq	1(%r8), %r8
L_poly_tobytes$2:
	cmpq	$256, %rdi
	jb  	L_poly_tobytes$3
	jmp 	*%rdx
L_poly_sub$1:
	movq	$0, %r8
	jmp 	L_poly_sub$2
L_poly_sub$3:
	movw	(%rsi,%r8,2), %r9w
	movw	(%rdi,%r8,2), %r10w
	subw	%r10w, %r9w
	movw	%r9w, (%rcx,%r8,2)
	leaq	1(%r8), %r8
L_poly_sub$2:
	cmpq	$256, %r8
	jb  	L_poly_sub$3
	jmp 	*%r11
L_poly_ntt$1:
	leaq	glob_data + 448(%rip), %rsi
	movq	$0, %rdi
	movq	$128, %r8
	jmp 	L_poly_ntt$4
L_poly_ntt$5:
	movq	$0, %r11
	jmp 	L_poly_ntt$6
L_poly_ntt$7:
	leaq	1(%rdi), %rdi
	movw	(%rsi,%rdi,2), %r9w
	movq	%r11, %r10
	leaq	(%r11,%r8), %r11
	jmp 	L_poly_ntt$8
L_poly_ntt$9:
	leaq	(%r10,%r8), %rbx
	movw	(%rcx,%rbx,2), %r12w
	movswl	%r12w, %r12d
	movswl	%r9w, %r13d
	imull	%r13d, %r12d
	imull	$62209, %r12d, %r13d
	shll	$16, %r13d
	sarl	$16, %r13d
	imull	$3329, %r13d, %r13d
	subl	%r13d, %r12d
	sarl	$16, %r12d
	movw	(%rcx,%r10,2), %r13w
	movw	%r13w, %r14w
	subw	%r12w, %r14w
	movw	%r14w, (%rcx,%rbx,2)
	leaw	(%r12,%r13), %bx
	movw	%bx, (%rcx,%r10,2)
	leaq	1(%r10), %r10
L_poly_ntt$8:
	cmpq	%r11, %r10
	jb  	L_poly_ntt$9
	leaq	(%r10,%r8), %r11
L_poly_ntt$6:
	cmpq	$256, %r11
	jb  	L_poly_ntt$7
	shrq	$1, %r8
L_poly_ntt$4:
	cmpq	$2, %r8
	jnb 	L_poly_ntt$5
	movq	$0, %rsi
	jmp 	L_poly_ntt$2
L_poly_ntt$3:
	movw	(%rcx,%rsi,2), %di
	movswl	%di, %r8d
	imull	$20159, %r8d, %r8d
	sarl	$26, %r8d
	imull	$3329, %r8d, %r8d
	subw	%r8w, %di
	movw	%di, (%rcx,%rsi,2)
	leaq	1(%rsi), %rsi
L_poly_ntt$2:
	cmpq	$256, %rsi
	jb  	L_poly_ntt$3
	jmp 	*%rbp
L_poly_invntt$1:
	leaq	glob_data + 192(%rip), %rsi
	movq	$0, %rdi
	movq	$2, %r8
	jmp 	L_poly_invntt$4
L_poly_invntt$5:
	movq	$0, %r11
	jmp 	L_poly_invntt$6
L_poly_invntt$7:
	movw	(%rsi,%rdi,2), %r9w
	leaq	1(%rdi), %rdi
	movq	%r11, %r10
	leaq	(%r11,%r8), %r11
	jmp 	L_poly_invntt$8
L_poly_invntt$9:
	leaq	(%r10,%r8), %rbx
	movw	(%rcx,%rbx,2), %bp
	movw	(%rcx,%r10,2), %r12w
	leaw	(%rbp,%r12), %r13w
	movswl	%r13w, %r14d
	imull	$20159, %r14d, %r14d
	sarl	$26, %r14d
	imull	$3329, %r14d, %r14d
	subw	%r14w, %r13w
	movw	%r13w, (%rcx,%r10,2)
	subw	%bp, %r12w
	movswl	%r12w, %ebp
	movswl	%r9w, %r12d
	imull	%r12d, %ebp
	imull	$62209, %ebp, %r12d
	shll	$16, %r12d
	sarl	$16, %r12d
	imull	$3329, %r12d, %r12d
	subl	%r12d, %ebp
	sarl	$16, %ebp
	movw	%bp, (%rcx,%rbx,2)
	leaq	1(%r10), %r10
L_poly_invntt$8:
	cmpq	%r11, %r10
	jb  	L_poly_invntt$9
	leaq	(%r10,%r8), %r11
L_poly_invntt$6:
	cmpq	$256, %r11
	jb  	L_poly_invntt$7
	shlq	$1, %r8
L_poly_invntt$4:
	cmpq	$128, %r8
	jbe 	L_poly_invntt$5
	movw	254(%rsi), %si
	movq	$0, %rdi
	jmp 	L_poly_invntt$2
L_poly_invntt$3:
	movw	(%rcx,%rdi,2), %r8w
	movswl	%r8w, %r8d
	movswl	%si, %r9d
	imull	%r9d, %r8d
	imull	$62209, %r8d, %r9d
	shll	$16, %r9d
	sarl	$16, %r9d
	imull	$3329, %r9d, %r9d
	subl	%r9d, %r8d
	sarl	$16, %r8d
	movw	%r8w, (%rcx,%rdi,2)
	leaq	1(%rdi), %rdi
L_poly_invntt$2:
	cmpq	$256, %rdi
	jb  	L_poly_invntt$3
	jmp 	*%r15
L_poly_getnoise$1:
	movq	%rdx, (%rsp)
	movb	(%rax), %dl
	movb	%dl, 8(%rsp)
	movb	1(%rax), %dl
	movb	%dl, 9(%rsp)
	movb	2(%rax), %dl
	movb	%dl, 10(%rsp)
	movb	3(%rax), %dl
	movb	%dl, 11(%rsp)
	movb	4(%rax), %dl
	movb	%dl, 12(%rsp)
	movb	5(%rax), %dl
	movb	%dl, 13(%rsp)
	movb	6(%rax), %dl
	movb	%dl, 14(%rsp)
	movb	7(%rax), %dl
	movb	%dl, 15(%rsp)
	movb	8(%rax), %dl
	movb	%dl, 16(%rsp)
	movb	9(%rax), %dl
	movb	%dl, 17(%rsp)
	movb	10(%rax), %dl
	movb	%dl, 18(%rsp)
	movb	11(%rax), %dl
	movb	%dl, 19(%rsp)
	movb	12(%rax), %dl
	movb	%dl, 20(%rsp)
	movb	13(%rax), %dl
	movb	%dl, 21(%rsp)
	movb	14(%rax), %dl
	movb	%dl, 22(%rsp)
	movb	15(%rax), %dl
	movb	%dl, 23(%rsp)
	movb	16(%rax), %dl
	movb	%dl, 24(%rsp)
	movb	17(%rax), %dl
	movb	%dl, 25(%rsp)
	movb	18(%rax), %dl
	movb	%dl, 26(%rsp)
	movb	19(%rax), %dl
	movb	%dl, 27(%rsp)
	movb	20(%rax), %dl
	movb	%dl, 28(%rsp)
	movb	21(%rax), %dl
	movb	%dl, 29(%rsp)
	movb	22(%rax), %dl
	movb	%dl, 30(%rsp)
	movb	23(%rax), %dl
	movb	%dl, 31(%rsp)
	movb	24(%rax), %dl
	movb	%dl, 32(%rsp)
	movb	25(%rax), %dl
	movb	%dl, 33(%rsp)
	movb	26(%rax), %dl
	movb	%dl, 34(%rsp)
	movb	27(%rax), %dl
	movb	%dl, 35(%rsp)
	movb	28(%rax), %dl
	movb	%dl, 36(%rsp)
	movb	29(%rax), %dl
	movb	%dl, 37(%rsp)
	movb	30(%rax), %dl
	movb	%dl, 38(%rsp)
	movb	31(%rax), %dl
	movb	%dl, 39(%rsp)
	movb	%cl, 40(%rsp)
	leaq	41(%rsp), %rdx
	leaq	8(%rsp), %rcx
	leaq	-208(%rsp), %rsp
	leaq	L_poly_getnoise$4(%rip), %r14
	jmp 	L_shake256_128_33$1
L_poly_getnoise$4:
	leaq	208(%rsp), %rsp
	movq	(%rsp), %rcx
	movq	$0, %rdx
	movq	$0, %rsi
	jmp 	L_poly_getnoise$2
L_poly_getnoise$3:
	movb	41(%rsp,%rdx), %dil
	movb	%dil, %r8b
	andb	$85, %r8b
	shrb	$1, %dil
	andb	$85, %dil
	addb	%r8b, %dil
	movb	%dil, %r8b
	andb	$3, %r8b
	movb	%dil, %r9b
	shrb	$2, %r9b
	andb	$3, %r9b
	subb	%r9b, %r8b
	movsbw	%r8b, %r8w
	movw	%r8w, (%rcx,%rsi,2)
	movb	%dil, %r8b
	shrb	$4, %r8b
	andb	$3, %r8b
	shrb	$6, %dil
	andb	$3, %dil
	subb	%dil, %r8b
	movsbw	%r8b, %di
	leaq	1(%rsi), %rsi
	movw	%di, (%rcx,%rsi,2)
	leaq	1(%rdx), %rdx
	leaq	1(%rsi), %rsi
L_poly_getnoise$2:
	cmpq	$128, %rdx
	jb  	L_poly_getnoise$3
	jmp 	*%r13
L_i_poly_frommsg$1:
	movb	(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, (%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 2(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 4(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 6(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 8(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 10(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 12(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 14(%rdx)
	movb	1(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 16(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 18(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 20(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 22(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 24(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 26(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 28(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 30(%rdx)
	movb	2(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 32(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 34(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 36(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 38(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 40(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 42(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 44(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 46(%rdx)
	movb	3(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 48(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 50(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 52(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 54(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 56(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 58(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 60(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 62(%rdx)
	movb	4(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 64(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 66(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 68(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 70(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 72(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 74(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 76(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 78(%rdx)
	movb	5(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 80(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 82(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 84(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 86(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 88(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 90(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 92(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 94(%rdx)
	movb	6(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 96(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 98(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 100(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 102(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 104(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 106(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 108(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 110(%rdx)
	movb	7(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 112(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 114(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 116(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 118(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 120(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 122(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 124(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 126(%rdx)
	movb	8(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 128(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 130(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 132(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 134(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 136(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 138(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 140(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 142(%rdx)
	movb	9(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 144(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 146(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 148(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 150(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 152(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 154(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 156(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 158(%rdx)
	movb	10(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 160(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 162(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 164(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 166(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 168(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 170(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 172(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 174(%rdx)
	movb	11(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 176(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 178(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 180(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 182(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 184(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 186(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 188(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 190(%rdx)
	movb	12(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 192(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 194(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 196(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 198(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 200(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 202(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 204(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 206(%rdx)
	movb	13(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 208(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 210(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 212(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 214(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 216(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 218(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 220(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 222(%rdx)
	movb	14(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 224(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 226(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 228(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 230(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 232(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 234(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 236(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 238(%rdx)
	movb	15(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 240(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 242(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 244(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 246(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 248(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 250(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 252(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 254(%rdx)
	movb	16(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 256(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 258(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 260(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 262(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 264(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 266(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 268(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 270(%rdx)
	movb	17(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 272(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 274(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 276(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 278(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 280(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 282(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 284(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 286(%rdx)
	movb	18(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 288(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 290(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 292(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 294(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 296(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 298(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 300(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 302(%rdx)
	movb	19(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 304(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 306(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 308(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 310(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 312(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 314(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 316(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 318(%rdx)
	movb	20(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 320(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 322(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 324(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 326(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 328(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 330(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 332(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 334(%rdx)
	movb	21(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 336(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 338(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 340(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 342(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 344(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 346(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 348(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 350(%rdx)
	movb	22(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 352(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 354(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 356(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 358(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 360(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 362(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 364(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 366(%rdx)
	movb	23(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 368(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 370(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 372(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 374(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 376(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 378(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 380(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 382(%rdx)
	movb	24(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 384(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 386(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 388(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 390(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 392(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 394(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 396(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 398(%rdx)
	movb	25(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 400(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 402(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 404(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 406(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 408(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 410(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 412(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 414(%rdx)
	movb	26(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 416(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 418(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 420(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 422(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 424(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 426(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 428(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 430(%rdx)
	movb	27(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 432(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 434(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 436(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 438(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 440(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 442(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 444(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 446(%rdx)
	movb	28(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 448(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 450(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 452(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 454(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 456(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 458(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 460(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 462(%rdx)
	movb	29(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 464(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 466(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 468(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 470(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 472(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 474(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 476(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 478(%rdx)
	movb	30(%rcx), %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 480(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 482(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 484(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 486(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 488(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 490(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %r8w
	andw	$1, %r8w
	imulw	$1665, %r8w, %r8w
	movw	%r8w, 492(%rdx)
	shrb	$1, %dil
	movzbw	%dil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 494(%rdx)
	movb	31(%rcx), %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 496(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 498(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 500(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 502(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 504(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 506(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 508(%rdx)
	shrb	$1, %cl
	movzbw	%cl, %cx
	andw	$1, %cx
	imulw	$1665, %cx, %cx
	movw	%cx, 510(%rdx)
	jmp 	*%rsi
L_poly_frommsg$1:
	movb	(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, (%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 2(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 4(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 6(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 8(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 10(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 12(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 14(%rcx)
	movb	1(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 16(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 18(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 20(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 22(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 24(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 26(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 28(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 30(%rcx)
	movb	2(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 32(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 34(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 36(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 38(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 40(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 42(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 44(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 46(%rcx)
	movb	3(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 48(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 50(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 52(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 54(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 56(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 58(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 60(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 62(%rcx)
	movb	4(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 64(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 66(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 68(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 70(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 72(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 74(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 76(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 78(%rcx)
	movb	5(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 80(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 82(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 84(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 86(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 88(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 90(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 92(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 94(%rcx)
	movb	6(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 96(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 98(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 100(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 102(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 104(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 106(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 108(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 110(%rcx)
	movb	7(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 112(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 114(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 116(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 118(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 120(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 122(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 124(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 126(%rcx)
	movb	8(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 128(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 130(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 132(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 134(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 136(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 138(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 140(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 142(%rcx)
	movb	9(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 144(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 146(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 148(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 150(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 152(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 154(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 156(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 158(%rcx)
	movb	10(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 160(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 162(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 164(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 166(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 168(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 170(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 172(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 174(%rcx)
	movb	11(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 176(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 178(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 180(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 182(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 184(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 186(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 188(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 190(%rcx)
	movb	12(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 192(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 194(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 196(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 198(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 200(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 202(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 204(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 206(%rcx)
	movb	13(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 208(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 210(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 212(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 214(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 216(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 218(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 220(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 222(%rcx)
	movb	14(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 224(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 226(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 228(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 230(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 232(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 234(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 236(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 238(%rcx)
	movb	15(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 240(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 242(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 244(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 246(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 248(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 250(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 252(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 254(%rcx)
	movb	16(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 256(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 258(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 260(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 262(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 264(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 266(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 268(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 270(%rcx)
	movb	17(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 272(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 274(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 276(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 278(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 280(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 282(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 284(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 286(%rcx)
	movb	18(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 288(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 290(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 292(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 294(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 296(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 298(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 300(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 302(%rcx)
	movb	19(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 304(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 306(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 308(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 310(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 312(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 314(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 316(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 318(%rcx)
	movb	20(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 320(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 322(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 324(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 326(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 328(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 330(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 332(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 334(%rcx)
	movb	21(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 336(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 338(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 340(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 342(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 344(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 346(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 348(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 350(%rcx)
	movb	22(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 352(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 354(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 356(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 358(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 360(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 362(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 364(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 366(%rcx)
	movb	23(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 368(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 370(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 372(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 374(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 376(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 378(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 380(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 382(%rcx)
	movb	24(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 384(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 386(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 388(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 390(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 392(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 394(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 396(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 398(%rcx)
	movb	25(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 400(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 402(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 404(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 406(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 408(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 410(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 412(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 414(%rcx)
	movb	26(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 416(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 418(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 420(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 422(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 424(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 426(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 428(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 430(%rcx)
	movb	27(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 432(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 434(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 436(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 438(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 440(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 442(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 444(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 446(%rcx)
	movb	28(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 448(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 450(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 452(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 454(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 456(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 458(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 460(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 462(%rcx)
	movb	29(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 464(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 466(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 468(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 470(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 472(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 474(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 476(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 478(%rcx)
	movb	30(%rax), %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 480(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 482(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 484(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 486(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 488(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 490(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %di
	andw	$1, %di
	imulw	$1665, %di, %di
	movw	%di, 492(%rcx)
	shrb	$1, %sil
	movzbw	%sil, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 494(%rcx)
	movb	31(%rax), %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 496(%rcx)
	shrb	$1, %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 498(%rcx)
	shrb	$1, %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 500(%rcx)
	shrb	$1, %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 502(%rcx)
	shrb	$1, %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 504(%rcx)
	shrb	$1, %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 506(%rcx)
	shrb	$1, %al
	movzbw	%al, %si
	andw	$1, %si
	imulw	$1665, %si, %si
	movw	%si, 508(%rcx)
	shrb	$1, %al
	movzbw	%al, %ax
	andw	$1, %ax
	imulw	$1665, %ax, %ax
	movw	%ax, 510(%rcx)
	jmp 	*%rdx
L_poly_frommont$1:
	movw	$1353, %cx
	movq	$0, %rdx
	jmp 	L_poly_frommont$2
L_poly_frommont$3:
	movw	(%rax,%rdx,2), %si
	movswl	%si, %esi
	movswl	%cx, %edi
	imull	%edi, %esi
	imull	$62209, %esi, %edi
	shll	$16, %edi
	sarl	$16, %edi
	imull	$3329, %edi, %edi
	subl	%edi, %esi
	sarl	$16, %esi
	movw	%si, (%rax,%rdx,2)
	leaq	1(%rdx), %rdx
L_poly_frommont$2:
	cmpq	$256, %rdx
	jb  	L_poly_frommont$3
	jmp 	*%r8
L_poly_frombytes$1:
	movb	(%rsi), %r9b
	movb	1(%rsi), %r10b
	movb	2(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, (%rdi)
	movw	%r11w, 2(%rdi)
	movb	3(%rsi), %r9b
	movb	4(%rsi), %r10b
	movb	5(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 4(%rdi)
	movw	%r11w, 6(%rdi)
	movb	6(%rsi), %r9b
	movb	7(%rsi), %r10b
	movb	8(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 8(%rdi)
	movw	%r11w, 10(%rdi)
	movb	9(%rsi), %r9b
	movb	10(%rsi), %r10b
	movb	11(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 12(%rdi)
	movw	%r11w, 14(%rdi)
	movb	12(%rsi), %r9b
	movb	13(%rsi), %r10b
	movb	14(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 16(%rdi)
	movw	%r11w, 18(%rdi)
	movb	15(%rsi), %r9b
	movb	16(%rsi), %r10b
	movb	17(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 20(%rdi)
	movw	%r11w, 22(%rdi)
	movb	18(%rsi), %r9b
	movb	19(%rsi), %r10b
	movb	20(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 24(%rdi)
	movw	%r11w, 26(%rdi)
	movb	21(%rsi), %r9b
	movb	22(%rsi), %r10b
	movb	23(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 28(%rdi)
	movw	%r11w, 30(%rdi)
	movb	24(%rsi), %r9b
	movb	25(%rsi), %r10b
	movb	26(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 32(%rdi)
	movw	%r11w, 34(%rdi)
	movb	27(%rsi), %r9b
	movb	28(%rsi), %r10b
	movb	29(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 36(%rdi)
	movw	%r11w, 38(%rdi)
	movb	30(%rsi), %r9b
	movb	31(%rsi), %r10b
	movb	32(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 40(%rdi)
	movw	%r11w, 42(%rdi)
	movb	33(%rsi), %r9b
	movb	34(%rsi), %r10b
	movb	35(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 44(%rdi)
	movw	%r11w, 46(%rdi)
	movb	36(%rsi), %r9b
	movb	37(%rsi), %r10b
	movb	38(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 48(%rdi)
	movw	%r11w, 50(%rdi)
	movb	39(%rsi), %r9b
	movb	40(%rsi), %r10b
	movb	41(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 52(%rdi)
	movw	%r11w, 54(%rdi)
	movb	42(%rsi), %r9b
	movb	43(%rsi), %r10b
	movb	44(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 56(%rdi)
	movw	%r11w, 58(%rdi)
	movb	45(%rsi), %r9b
	movb	46(%rsi), %r10b
	movb	47(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 60(%rdi)
	movw	%r11w, 62(%rdi)
	movb	48(%rsi), %r9b
	movb	49(%rsi), %r10b
	movb	50(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 64(%rdi)
	movw	%r11w, 66(%rdi)
	movb	51(%rsi), %r9b
	movb	52(%rsi), %r10b
	movb	53(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 68(%rdi)
	movw	%r11w, 70(%rdi)
	movb	54(%rsi), %r9b
	movb	55(%rsi), %r10b
	movb	56(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 72(%rdi)
	movw	%r11w, 74(%rdi)
	movb	57(%rsi), %r9b
	movb	58(%rsi), %r10b
	movb	59(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 76(%rdi)
	movw	%r11w, 78(%rdi)
	movb	60(%rsi), %r9b
	movb	61(%rsi), %r10b
	movb	62(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 80(%rdi)
	movw	%r11w, 82(%rdi)
	movb	63(%rsi), %r9b
	movb	64(%rsi), %r10b
	movb	65(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 84(%rdi)
	movw	%r11w, 86(%rdi)
	movb	66(%rsi), %r9b
	movb	67(%rsi), %r10b
	movb	68(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 88(%rdi)
	movw	%r11w, 90(%rdi)
	movb	69(%rsi), %r9b
	movb	70(%rsi), %r10b
	movb	71(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 92(%rdi)
	movw	%r11w, 94(%rdi)
	movb	72(%rsi), %r9b
	movb	73(%rsi), %r10b
	movb	74(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 96(%rdi)
	movw	%r11w, 98(%rdi)
	movb	75(%rsi), %r9b
	movb	76(%rsi), %r10b
	movb	77(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 100(%rdi)
	movw	%r11w, 102(%rdi)
	movb	78(%rsi), %r9b
	movb	79(%rsi), %r10b
	movb	80(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 104(%rdi)
	movw	%r11w, 106(%rdi)
	movb	81(%rsi), %r9b
	movb	82(%rsi), %r10b
	movb	83(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 108(%rdi)
	movw	%r11w, 110(%rdi)
	movb	84(%rsi), %r9b
	movb	85(%rsi), %r10b
	movb	86(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 112(%rdi)
	movw	%r11w, 114(%rdi)
	movb	87(%rsi), %r9b
	movb	88(%rsi), %r10b
	movb	89(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 116(%rdi)
	movw	%r11w, 118(%rdi)
	movb	90(%rsi), %r9b
	movb	91(%rsi), %r10b
	movb	92(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 120(%rdi)
	movw	%r11w, 122(%rdi)
	movb	93(%rsi), %r9b
	movb	94(%rsi), %r10b
	movb	95(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 124(%rdi)
	movw	%r11w, 126(%rdi)
	movb	96(%rsi), %r9b
	movb	97(%rsi), %r10b
	movb	98(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 128(%rdi)
	movw	%r11w, 130(%rdi)
	movb	99(%rsi), %r9b
	movb	100(%rsi), %r10b
	movb	101(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 132(%rdi)
	movw	%r11w, 134(%rdi)
	movb	102(%rsi), %r9b
	movb	103(%rsi), %r10b
	movb	104(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 136(%rdi)
	movw	%r11w, 138(%rdi)
	movb	105(%rsi), %r9b
	movb	106(%rsi), %r10b
	movb	107(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 140(%rdi)
	movw	%r11w, 142(%rdi)
	movb	108(%rsi), %r9b
	movb	109(%rsi), %r10b
	movb	110(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 144(%rdi)
	movw	%r11w, 146(%rdi)
	movb	111(%rsi), %r9b
	movb	112(%rsi), %r10b
	movb	113(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 148(%rdi)
	movw	%r11w, 150(%rdi)
	movb	114(%rsi), %r9b
	movb	115(%rsi), %r10b
	movb	116(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 152(%rdi)
	movw	%r11w, 154(%rdi)
	movb	117(%rsi), %r9b
	movb	118(%rsi), %r10b
	movb	119(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 156(%rdi)
	movw	%r11w, 158(%rdi)
	movb	120(%rsi), %r9b
	movb	121(%rsi), %r10b
	movb	122(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 160(%rdi)
	movw	%r11w, 162(%rdi)
	movb	123(%rsi), %r9b
	movb	124(%rsi), %r10b
	movb	125(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 164(%rdi)
	movw	%r11w, 166(%rdi)
	movb	126(%rsi), %r9b
	movb	127(%rsi), %r10b
	movb	128(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 168(%rdi)
	movw	%r11w, 170(%rdi)
	movb	129(%rsi), %r9b
	movb	130(%rsi), %r10b
	movb	131(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 172(%rdi)
	movw	%r11w, 174(%rdi)
	movb	132(%rsi), %r9b
	movb	133(%rsi), %r10b
	movb	134(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 176(%rdi)
	movw	%r11w, 178(%rdi)
	movb	135(%rsi), %r9b
	movb	136(%rsi), %r10b
	movb	137(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 180(%rdi)
	movw	%r11w, 182(%rdi)
	movb	138(%rsi), %r9b
	movb	139(%rsi), %r10b
	movb	140(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 184(%rdi)
	movw	%r11w, 186(%rdi)
	movb	141(%rsi), %r9b
	movb	142(%rsi), %r10b
	movb	143(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 188(%rdi)
	movw	%r11w, 190(%rdi)
	movb	144(%rsi), %r9b
	movb	145(%rsi), %r10b
	movb	146(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 192(%rdi)
	movw	%r11w, 194(%rdi)
	movb	147(%rsi), %r9b
	movb	148(%rsi), %r10b
	movb	149(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 196(%rdi)
	movw	%r11w, 198(%rdi)
	movb	150(%rsi), %r9b
	movb	151(%rsi), %r10b
	movb	152(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 200(%rdi)
	movw	%r11w, 202(%rdi)
	movb	153(%rsi), %r9b
	movb	154(%rsi), %r10b
	movb	155(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 204(%rdi)
	movw	%r11w, 206(%rdi)
	movb	156(%rsi), %r9b
	movb	157(%rsi), %r10b
	movb	158(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 208(%rdi)
	movw	%r11w, 210(%rdi)
	movb	159(%rsi), %r9b
	movb	160(%rsi), %r10b
	movb	161(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 212(%rdi)
	movw	%r11w, 214(%rdi)
	movb	162(%rsi), %r9b
	movb	163(%rsi), %r10b
	movb	164(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 216(%rdi)
	movw	%r11w, 218(%rdi)
	movb	165(%rsi), %r9b
	movb	166(%rsi), %r10b
	movb	167(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 220(%rdi)
	movw	%r11w, 222(%rdi)
	movb	168(%rsi), %r9b
	movb	169(%rsi), %r10b
	movb	170(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 224(%rdi)
	movw	%r11w, 226(%rdi)
	movb	171(%rsi), %r9b
	movb	172(%rsi), %r10b
	movb	173(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 228(%rdi)
	movw	%r11w, 230(%rdi)
	movb	174(%rsi), %r9b
	movb	175(%rsi), %r10b
	movb	176(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 232(%rdi)
	movw	%r11w, 234(%rdi)
	movb	177(%rsi), %r9b
	movb	178(%rsi), %r10b
	movb	179(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 236(%rdi)
	movw	%r11w, 238(%rdi)
	movb	180(%rsi), %r9b
	movb	181(%rsi), %r10b
	movb	182(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 240(%rdi)
	movw	%r11w, 242(%rdi)
	movb	183(%rsi), %r9b
	movb	184(%rsi), %r10b
	movb	185(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 244(%rdi)
	movw	%r11w, 246(%rdi)
	movb	186(%rsi), %r9b
	movb	187(%rsi), %r10b
	movb	188(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 248(%rdi)
	movw	%r11w, 250(%rdi)
	movb	189(%rsi), %r9b
	movb	190(%rsi), %r10b
	movb	191(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 252(%rdi)
	movw	%r11w, 254(%rdi)
	movb	192(%rsi), %r9b
	movb	193(%rsi), %r10b
	movb	194(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 256(%rdi)
	movw	%r11w, 258(%rdi)
	movb	195(%rsi), %r9b
	movb	196(%rsi), %r10b
	movb	197(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 260(%rdi)
	movw	%r11w, 262(%rdi)
	movb	198(%rsi), %r9b
	movb	199(%rsi), %r10b
	movb	200(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 264(%rdi)
	movw	%r11w, 266(%rdi)
	movb	201(%rsi), %r9b
	movb	202(%rsi), %r10b
	movb	203(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 268(%rdi)
	movw	%r11w, 270(%rdi)
	movb	204(%rsi), %r9b
	movb	205(%rsi), %r10b
	movb	206(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 272(%rdi)
	movw	%r11w, 274(%rdi)
	movb	207(%rsi), %r9b
	movb	208(%rsi), %r10b
	movb	209(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 276(%rdi)
	movw	%r11w, 278(%rdi)
	movb	210(%rsi), %r9b
	movb	211(%rsi), %r10b
	movb	212(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 280(%rdi)
	movw	%r11w, 282(%rdi)
	movb	213(%rsi), %r9b
	movb	214(%rsi), %r10b
	movb	215(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 284(%rdi)
	movw	%r11w, 286(%rdi)
	movb	216(%rsi), %r9b
	movb	217(%rsi), %r10b
	movb	218(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 288(%rdi)
	movw	%r11w, 290(%rdi)
	movb	219(%rsi), %r9b
	movb	220(%rsi), %r10b
	movb	221(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 292(%rdi)
	movw	%r11w, 294(%rdi)
	movb	222(%rsi), %r9b
	movb	223(%rsi), %r10b
	movb	224(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 296(%rdi)
	movw	%r11w, 298(%rdi)
	movb	225(%rsi), %r9b
	movb	226(%rsi), %r10b
	movb	227(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 300(%rdi)
	movw	%r11w, 302(%rdi)
	movb	228(%rsi), %r9b
	movb	229(%rsi), %r10b
	movb	230(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 304(%rdi)
	movw	%r11w, 306(%rdi)
	movb	231(%rsi), %r9b
	movb	232(%rsi), %r10b
	movb	233(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 308(%rdi)
	movw	%r11w, 310(%rdi)
	movb	234(%rsi), %r9b
	movb	235(%rsi), %r10b
	movb	236(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 312(%rdi)
	movw	%r11w, 314(%rdi)
	movb	237(%rsi), %r9b
	movb	238(%rsi), %r10b
	movb	239(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 316(%rdi)
	movw	%r11w, 318(%rdi)
	movb	240(%rsi), %r9b
	movb	241(%rsi), %r10b
	movb	242(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 320(%rdi)
	movw	%r11w, 322(%rdi)
	movb	243(%rsi), %r9b
	movb	244(%rsi), %r10b
	movb	245(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 324(%rdi)
	movw	%r11w, 326(%rdi)
	movb	246(%rsi), %r9b
	movb	247(%rsi), %r10b
	movb	248(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 328(%rdi)
	movw	%r11w, 330(%rdi)
	movb	249(%rsi), %r9b
	movb	250(%rsi), %r10b
	movb	251(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 332(%rdi)
	movw	%r11w, 334(%rdi)
	movb	252(%rsi), %r9b
	movb	253(%rsi), %r10b
	movb	254(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 336(%rdi)
	movw	%r11w, 338(%rdi)
	movb	255(%rsi), %r9b
	movb	256(%rsi), %r10b
	movb	257(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 340(%rdi)
	movw	%r11w, 342(%rdi)
	movb	258(%rsi), %r9b
	movb	259(%rsi), %r10b
	movb	260(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 344(%rdi)
	movw	%r11w, 346(%rdi)
	movb	261(%rsi), %r9b
	movb	262(%rsi), %r10b
	movb	263(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 348(%rdi)
	movw	%r11w, 350(%rdi)
	movb	264(%rsi), %r9b
	movb	265(%rsi), %r10b
	movb	266(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 352(%rdi)
	movw	%r11w, 354(%rdi)
	movb	267(%rsi), %r9b
	movb	268(%rsi), %r10b
	movb	269(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 356(%rdi)
	movw	%r11w, 358(%rdi)
	movb	270(%rsi), %r9b
	movb	271(%rsi), %r10b
	movb	272(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 360(%rdi)
	movw	%r11w, 362(%rdi)
	movb	273(%rsi), %r9b
	movb	274(%rsi), %r10b
	movb	275(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 364(%rdi)
	movw	%r11w, 366(%rdi)
	movb	276(%rsi), %r9b
	movb	277(%rsi), %r10b
	movb	278(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 368(%rdi)
	movw	%r11w, 370(%rdi)
	movb	279(%rsi), %r9b
	movb	280(%rsi), %r10b
	movb	281(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 372(%rdi)
	movw	%r11w, 374(%rdi)
	movb	282(%rsi), %r9b
	movb	283(%rsi), %r10b
	movb	284(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 376(%rdi)
	movw	%r11w, 378(%rdi)
	movb	285(%rsi), %r9b
	movb	286(%rsi), %r10b
	movb	287(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 380(%rdi)
	movw	%r11w, 382(%rdi)
	movb	288(%rsi), %r9b
	movb	289(%rsi), %r10b
	movb	290(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 384(%rdi)
	movw	%r11w, 386(%rdi)
	movb	291(%rsi), %r9b
	movb	292(%rsi), %r10b
	movb	293(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 388(%rdi)
	movw	%r11w, 390(%rdi)
	movb	294(%rsi), %r9b
	movb	295(%rsi), %r10b
	movb	296(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 392(%rdi)
	movw	%r11w, 394(%rdi)
	movb	297(%rsi), %r9b
	movb	298(%rsi), %r10b
	movb	299(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 396(%rdi)
	movw	%r11w, 398(%rdi)
	movb	300(%rsi), %r9b
	movb	301(%rsi), %r10b
	movb	302(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 400(%rdi)
	movw	%r11w, 402(%rdi)
	movb	303(%rsi), %r9b
	movb	304(%rsi), %r10b
	movb	305(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 404(%rdi)
	movw	%r11w, 406(%rdi)
	movb	306(%rsi), %r9b
	movb	307(%rsi), %r10b
	movb	308(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 408(%rdi)
	movw	%r11w, 410(%rdi)
	movb	309(%rsi), %r9b
	movb	310(%rsi), %r10b
	movb	311(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 412(%rdi)
	movw	%r11w, 414(%rdi)
	movb	312(%rsi), %r9b
	movb	313(%rsi), %r10b
	movb	314(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 416(%rdi)
	movw	%r11w, 418(%rdi)
	movb	315(%rsi), %r9b
	movb	316(%rsi), %r10b
	movb	317(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 420(%rdi)
	movw	%r11w, 422(%rdi)
	movb	318(%rsi), %r9b
	movb	319(%rsi), %r10b
	movb	320(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 424(%rdi)
	movw	%r11w, 426(%rdi)
	movb	321(%rsi), %r9b
	movb	322(%rsi), %r10b
	movb	323(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 428(%rdi)
	movw	%r11w, 430(%rdi)
	movb	324(%rsi), %r9b
	movb	325(%rsi), %r10b
	movb	326(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 432(%rdi)
	movw	%r11w, 434(%rdi)
	movb	327(%rsi), %r9b
	movb	328(%rsi), %r10b
	movb	329(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 436(%rdi)
	movw	%r11w, 438(%rdi)
	movb	330(%rsi), %r9b
	movb	331(%rsi), %r10b
	movb	332(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 440(%rdi)
	movw	%r11w, 442(%rdi)
	movb	333(%rsi), %r9b
	movb	334(%rsi), %r10b
	movb	335(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 444(%rdi)
	movw	%r11w, 446(%rdi)
	movb	336(%rsi), %r9b
	movb	337(%rsi), %r10b
	movb	338(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 448(%rdi)
	movw	%r11w, 450(%rdi)
	movb	339(%rsi), %r9b
	movb	340(%rsi), %r10b
	movb	341(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 452(%rdi)
	movw	%r11w, 454(%rdi)
	movb	342(%rsi), %r9b
	movb	343(%rsi), %r10b
	movb	344(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 456(%rdi)
	movw	%r11w, 458(%rdi)
	movb	345(%rsi), %r9b
	movb	346(%rsi), %r10b
	movb	347(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 460(%rdi)
	movw	%r11w, 462(%rdi)
	movb	348(%rsi), %r9b
	movb	349(%rsi), %r10b
	movb	350(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 464(%rdi)
	movw	%r11w, 466(%rdi)
	movb	351(%rsi), %r9b
	movb	352(%rsi), %r10b
	movb	353(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 468(%rdi)
	movw	%r11w, 470(%rdi)
	movb	354(%rsi), %r9b
	movb	355(%rsi), %r10b
	movb	356(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 472(%rdi)
	movw	%r11w, 474(%rdi)
	movb	357(%rsi), %r9b
	movb	358(%rsi), %r10b
	movb	359(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 476(%rdi)
	movw	%r11w, 478(%rdi)
	movb	360(%rsi), %r9b
	movb	361(%rsi), %r10b
	movb	362(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 480(%rdi)
	movw	%r11w, 482(%rdi)
	movb	363(%rsi), %r9b
	movb	364(%rsi), %r10b
	movb	365(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 484(%rdi)
	movw	%r11w, 486(%rdi)
	movb	366(%rsi), %r9b
	movb	367(%rsi), %r10b
	movb	368(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 488(%rdi)
	movw	%r11w, 490(%rdi)
	movb	369(%rsi), %r9b
	movb	370(%rsi), %r10b
	movb	371(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 492(%rdi)
	movw	%r11w, 494(%rdi)
	movb	372(%rsi), %r9b
	movb	373(%rsi), %r10b
	movb	374(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 496(%rdi)
	movw	%r11w, 498(%rdi)
	movb	375(%rsi), %r9b
	movb	376(%rsi), %r10b
	movb	377(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 500(%rdi)
	movw	%r11w, 502(%rdi)
	movb	378(%rsi), %r9b
	movb	379(%rsi), %r10b
	movb	380(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 504(%rdi)
	movw	%r11w, 506(%rdi)
	movb	381(%rsi), %r9b
	movb	382(%rsi), %r10b
	movb	383(%rsi), %r11b
	movzbw	%r9b, %r9w
	movzbw	%r10b, %bx
	andw	$15, %bx
	shlw	$8, %bx
	orw 	%bx, %r9w
	movzbw	%r11b, %r11w
	shlw	$4, %r11w
	movzbw	%r10b, %r10w
	shrw	$4, %r10w
	orw 	%r10w, %r11w
	movw	%r9w, 508(%rdi)
	movw	%r11w, 510(%rdi)
	jmp 	*%r8
L_poly_decompress$1:
	movq	$0, %rdi
	movq	$0, %r8
	jmp 	L_poly_decompress$2
L_poly_decompress$3:
	movb	(%rcx,%rdi), %r9b
	movzbw	%r9b, %r10w
	movzbw	%r9b, %r9w
	andw	$15, %r10w
	shrw	$4, %r9w
	imulw	$3329, %r10w, %r10w
	imulw	$3329, %r9w, %r9w
	leaw	8(%r10), %r10w
	leaw	8(%r9), %r9w
	shrw	$4, %r10w
	shrw	$4, %r9w
	movw	%r10w, (%rsi,%r8,2)
	leaq	1(%r8), %r8
	movw	%r9w, (%rsi,%r8,2)
	leaq	1(%r8), %r8
	leaq	1(%rdi), %rdi
L_poly_decompress$2:
	cmpq	$128, %rdi
	jb  	L_poly_decompress$3
	jmp 	*%r11
L_i_poly_compress$1:
	leaq	L_i_poly_compress$4(%rip), %r10
	jmp 	L_poly_csubq$1
L_i_poly_compress$4:
	movq	$0, %rdx
	movq	$0, %rdi
	jmp 	L_i_poly_compress$2
L_i_poly_compress$3:
	movw	(%rsi,%rdi,2), %r8w
	movzwl	%r8w, %r8d
	shll	$4, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$15, %r8d
	leaq	1(%rdi), %rdi
	movw	(%rsi,%rdi,2), %r9w
	movzwl	%r9w, %r9d
	shll	$4, %r9d
	leal	1665(%r9), %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$15, %r9d
	shll	$4, %r9d
	orl 	%r9d, %r8d
	movb	%r8b, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	leaq	1(%rdi), %rdi
L_i_poly_compress$2:
	cmpq	$128, %rdx
	jb  	L_i_poly_compress$3
	jmp 	*%rcx
L_poly_compress$1:
	leaq	L_poly_compress$4(%rip), %r10
	jmp 	L_poly_csubq$1
L_poly_compress$4:
	movq	$0, %rdx
	movq	$0, %rdi
	jmp 	L_poly_compress$2
L_poly_compress$3:
	movw	(%rsi,%rdi,2), %r8w
	movzwl	%r8w, %r8d
	shll	$4, %r8d
	leal	1665(%r8), %r8d
	imull	$80635, %r8d, %r8d
	shrl	$28, %r8d
	andl	$15, %r8d
	leaq	1(%rdi), %rdi
	movw	(%rsi,%rdi,2), %r9w
	movzwl	%r9w, %r9d
	shll	$4, %r9d
	leal	1665(%r9), %r9d
	imull	$80635, %r9d, %r9d
	shrl	$28, %r9d
	andl	$15, %r9d
	shll	$4, %r9d
	orl 	%r9d, %r8d
	movb	%r8b, (%rax,%rdx)
	leaq	1(%rdx), %rdx
	leaq	1(%rdi), %rdi
L_poly_compress$2:
	cmpq	$128, %rdx
	jb  	L_poly_compress$3
	jmp 	*%rcx
L_poly_basemul$1:
	movq	%rdi, (%rsp)
	movq	$64, %rdi
	movq	$0, %rbx
	jmp 	L_poly_basemul$2
L_poly_basemul$3:
	leaq	glob_data + 448(%rip), %r8
	movw	(%r8,%rdi,2), %r8w
	leaq	1(%rdi), %rdi
	movw	(%rcx,%rbx,2), %r10w
	movw	(%rsi,%rbx,2), %r11w
	leaq	1(%rbx), %r12
	movw	(%rcx,%r12,2), %bx
	movw	(%rsi,%r12,2), %bp
	leaq	-1(%r12), %r12
	movswl	%bx, %r13d
	movswl	%bp, %r14d
	imull	%r14d, %r13d
	imull	$62209, %r13d, %r14d
	shll	$16, %r14d
	sarl	$16, %r14d
	imull	$3329, %r14d, %r14d
	subl	%r14d, %r13d
	sarl	$16, %r13d
	movswl	%r13w, %r13d
	movswl	%r8w, %r14d
	imull	%r14d, %r13d
	imull	$62209, %r13d, %r14d
	shll	$16, %r14d
	sarl	$16, %r14d
	imull	$3329, %r14d, %r14d
	subl	%r14d, %r13d
	sarl	$16, %r13d
	movswl	%r10w, %r14d
	movswl	%r11w, %r15d
	imull	%r15d, %r14d
	imull	$62209, %r14d, %r15d
	shll	$16, %r15d
	sarl	$16, %r15d
	imull	$3329, %r15d, %r15d
	subl	%r15d, %r14d
	sarl	$16, %r14d
	leaw	(%r13,%r14), %r13w
	movswl	%r10w, %r10d
	movswl	%bp, %ebp
	imull	%ebp, %r10d
	imull	$62209, %r10d, %ebp
	shll	$16, %ebp
	sarl	$16, %ebp
	imull	$3329, %ebp, %ebp
	subl	%ebp, %r10d
	sarl	$16, %r10d
	movswl	%bx, %ebx
	movswl	%r11w, %r11d
	imull	%r11d, %ebx
	imull	$62209, %ebx, %r11d
	shll	$16, %r11d
	sarl	$16, %r11d
	imull	$3329, %r11d, %r11d
	subl	%r11d, %ebx
	sarl	$16, %ebx
	leaw	(%r10,%rbx), %r10w
	movq	(%rsp), %r11
	movw	%r13w, (%r11,%r12,2)
	leaq	1(%r12), %rbx
	movw	%r10w, (%r11,%rbx,2)
	movq	%r11, 8(%rsp)
	negw	%r8w
	leaq	1(%rbx), %rbx
	movw	(%rcx,%rbx,2), %r10w
	movw	(%rsi,%rbx,2), %r11w
	leaq	1(%rbx), %r12
	movw	(%rcx,%r12,2), %bx
	movw	(%rsi,%r12,2), %bp
	leaq	-1(%r12), %r12
	movswl	%bx, %r13d
	movswl	%bp, %r14d
	imull	%r14d, %r13d
	imull	$62209, %r13d, %r14d
	shll	$16, %r14d
	sarl	$16, %r14d
	imull	$3329, %r14d, %r14d
	subl	%r14d, %r13d
	sarl	$16, %r13d
	movswl	%r13w, %r13d
	movswl	%r8w, %r8d
	imull	%r8d, %r13d
	imull	$62209, %r13d, %r8d
	shll	$16, %r8d
	sarl	$16, %r8d
	imull	$3329, %r8d, %r8d
	subl	%r8d, %r13d
	sarl	$16, %r13d
	movswl	%r10w, %r8d
	movswl	%r11w, %r14d
	imull	%r14d, %r8d
	imull	$62209, %r8d, %r14d
	shll	$16, %r14d
	sarl	$16, %r14d
	imull	$3329, %r14d, %r14d
	subl	%r14d, %r8d
	sarl	$16, %r8d
	leaw	(%r13,%r8), %r8w
	movswl	%r10w, %r10d
	movswl	%bp, %ebp
	imull	%ebp, %r10d
	imull	$62209, %r10d, %ebp
	shll	$16, %ebp
	sarl	$16, %ebp
	imull	$3329, %ebp, %ebp
	subl	%ebp, %r10d
	sarl	$16, %r10d
	movswl	%bx, %ebx
	movswl	%r11w, %r11d
	imull	%r11d, %ebx
	imull	$62209, %ebx, %r11d
	shll	$16, %r11d
	sarl	$16, %r11d
	imull	$3329, %r11d, %r11d
	subl	%r11d, %ebx
	sarl	$16, %ebx
	leaw	(%r10,%rbx), %r10w
	movq	8(%rsp), %r11
	movw	%r8w, (%r11,%r12,2)
	leaq	1(%r12), %r8
	movw	%r10w, (%r11,%r8,2)
	leaq	1(%r8), %rbx
L_poly_basemul$2:
	cmpq	$256, %rbx
	jb  	L_poly_basemul$3
	jmp 	*%r9
L_poly_csubq$1:
	movq	$0, %rdi
	jmp 	L_poly_csubq$2
L_poly_csubq$3:
	movw	(%rsi,%rdi,2), %r8w
	leaw	-3329(%r8), %r8w
	movw	%r8w, %r9w
	sarw	$15, %r9w
	andw	$3329, %r9w
	leaw	(%r8,%r9), %r8w
	movw	%r8w, (%rsi,%rdi,2)
	leaq	1(%rdi), %rdi
L_poly_csubq$2:
	cmpq	$256, %rdi
	jb  	L_poly_csubq$3
	jmp 	*%r10
L_poly_add2$1:
	movq	$0, %rdi
	jmp 	L_poly_add2$2
L_poly_add2$3:
	movw	(%rcx,%rdi,2), %r8w
	movw	(%rsi,%rdi,2), %r9w
	leaw	(%r8,%r9), %r8w
	movw	%r8w, (%rcx,%rdi,2)
	leaq	1(%rdi), %rdi
L_poly_add2$2:
	cmpq	$256, %rdi
	jb  	L_poly_add2$3
	jmp 	*%r10
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
	leaq	16(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_shake256_64$9(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_shake256_64$9:
	leaq	200(%rsp), %rsp
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
	leaq	16(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_shake256_64$8(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_shake256_64$8:
	leaq	200(%rsp), %rsp
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
	leaq	8(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_sha3_512_64$2(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_sha3_512_64$2:
	leaq	200(%rsp), %rsp
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
	leaq	8(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_isha3_256_32$2(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_isha3_256_32$2:
	leaq	200(%rsp), %rsp
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
L_isha3_256$1:
	movq	%rcx, (%rsp)
	leaq	32(%rsp), %rcx
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	movq	$0, 128(%rcx)
	movq	$0, 136(%rcx)
	movq	$0, 144(%rcx)
	movq	$0, 152(%rcx)
	movq	$0, 160(%rcx)
	movq	$0, 168(%rcx)
	movq	$0, 176(%rcx)
	movq	$0, 184(%rcx)
	movq	$0, 192(%rcx)
	movq	$136, %rcx
	jmp 	L_isha3_256$7
L_isha3_256$8:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movq	$0, %rdi
	jmp 	L_isha3_256$10
L_isha3_256$11:
	movq	(%rsi,%rdi,8), %r8
	xorq	%r8, 32(%rsp,%rdi,8)
	leaq	1(%rdi), %rdi
L_isha3_256$10:
	cmpq	%rdx, %rdi
	jb  	L_isha3_256$11
	leaq	(%rsi,%rcx), %rdx
	subq	%rcx, %rax
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	32(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_isha3_256$9(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_isha3_256$9:
	leaq	200(%rsp), %rsp
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
L_isha3_256$7:
	cmpq	%rcx, %rax
	jnb 	L_isha3_256$8
	movb	$6, %dl
	movq	%rax, %rdi
	shrq	$3, %rdi
	movq	$0, %r8
	jmp 	L_isha3_256$5
L_isha3_256$6:
	movq	(%rsi,%r8,8), %r9
	xorq	%r9, 32(%rsp,%r8,8)
	leaq	1(%r8), %r8
L_isha3_256$5:
	cmpq	%rdi, %r8
	jb  	L_isha3_256$6
	shlq	$3, %r8
	jmp 	L_isha3_256$3
L_isha3_256$4:
	movb	(%rsi,%r8), %dil
	xorb	%dil, 32(%rsp,%r8)
	leaq	1(%r8), %r8
L_isha3_256$3:
	cmpq	%rax, %r8
	jb  	L_isha3_256$4
	xorb	%dl, 32(%rsp,%r8)
	leaq	-1(%rcx), %rax
	xorb	$-128, 32(%rsp,%rax)
	leaq	32(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_isha3_256$2(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_isha3_256$2:
	leaq	200(%rsp), %rsp
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
L_shake128_squeezeblock$1:
	leaq	-200(%rsp), %rsp
	leaq	L_shake128_squeezeblock$2(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_shake128_squeezeblock$2:
	leaq	200(%rsp), %rsp
	movb	(%rcx), %dl
	movb	%dl, (%r13)
	movb	1(%rcx), %dl
	movb	%dl, 1(%r13)
	movb	2(%rcx), %dl
	movb	%dl, 2(%r13)
	movb	3(%rcx), %dl
	movb	%dl, 3(%r13)
	movb	4(%rcx), %dl
	movb	%dl, 4(%r13)
	movb	5(%rcx), %dl
	movb	%dl, 5(%r13)
	movb	6(%rcx), %dl
	movb	%dl, 6(%r13)
	movb	7(%rcx), %dl
	movb	%dl, 7(%r13)
	movb	8(%rcx), %dl
	movb	%dl, 8(%r13)
	movb	9(%rcx), %dl
	movb	%dl, 9(%r13)
	movb	10(%rcx), %dl
	movb	%dl, 10(%r13)
	movb	11(%rcx), %dl
	movb	%dl, 11(%r13)
	movb	12(%rcx), %dl
	movb	%dl, 12(%r13)
	movb	13(%rcx), %dl
	movb	%dl, 13(%r13)
	movb	14(%rcx), %dl
	movb	%dl, 14(%r13)
	movb	15(%rcx), %dl
	movb	%dl, 15(%r13)
	movb	16(%rcx), %dl
	movb	%dl, 16(%r13)
	movb	17(%rcx), %dl
	movb	%dl, 17(%r13)
	movb	18(%rcx), %dl
	movb	%dl, 18(%r13)
	movb	19(%rcx), %dl
	movb	%dl, 19(%r13)
	movb	20(%rcx), %dl
	movb	%dl, 20(%r13)
	movb	21(%rcx), %dl
	movb	%dl, 21(%r13)
	movb	22(%rcx), %dl
	movb	%dl, 22(%r13)
	movb	23(%rcx), %dl
	movb	%dl, 23(%r13)
	movb	24(%rcx), %dl
	movb	%dl, 24(%r13)
	movb	25(%rcx), %dl
	movb	%dl, 25(%r13)
	movb	26(%rcx), %dl
	movb	%dl, 26(%r13)
	movb	27(%rcx), %dl
	movb	%dl, 27(%r13)
	movb	28(%rcx), %dl
	movb	%dl, 28(%r13)
	movb	29(%rcx), %dl
	movb	%dl, 29(%r13)
	movb	30(%rcx), %dl
	movb	%dl, 30(%r13)
	movb	31(%rcx), %dl
	movb	%dl, 31(%r13)
	movb	32(%rcx), %dl
	movb	%dl, 32(%r13)
	movb	33(%rcx), %dl
	movb	%dl, 33(%r13)
	movb	34(%rcx), %dl
	movb	%dl, 34(%r13)
	movb	35(%rcx), %dl
	movb	%dl, 35(%r13)
	movb	36(%rcx), %dl
	movb	%dl, 36(%r13)
	movb	37(%rcx), %dl
	movb	%dl, 37(%r13)
	movb	38(%rcx), %dl
	movb	%dl, 38(%r13)
	movb	39(%rcx), %dl
	movb	%dl, 39(%r13)
	movb	40(%rcx), %dl
	movb	%dl, 40(%r13)
	movb	41(%rcx), %dl
	movb	%dl, 41(%r13)
	movb	42(%rcx), %dl
	movb	%dl, 42(%r13)
	movb	43(%rcx), %dl
	movb	%dl, 43(%r13)
	movb	44(%rcx), %dl
	movb	%dl, 44(%r13)
	movb	45(%rcx), %dl
	movb	%dl, 45(%r13)
	movb	46(%rcx), %dl
	movb	%dl, 46(%r13)
	movb	47(%rcx), %dl
	movb	%dl, 47(%r13)
	movb	48(%rcx), %dl
	movb	%dl, 48(%r13)
	movb	49(%rcx), %dl
	movb	%dl, 49(%r13)
	movb	50(%rcx), %dl
	movb	%dl, 50(%r13)
	movb	51(%rcx), %dl
	movb	%dl, 51(%r13)
	movb	52(%rcx), %dl
	movb	%dl, 52(%r13)
	movb	53(%rcx), %dl
	movb	%dl, 53(%r13)
	movb	54(%rcx), %dl
	movb	%dl, 54(%r13)
	movb	55(%rcx), %dl
	movb	%dl, 55(%r13)
	movb	56(%rcx), %dl
	movb	%dl, 56(%r13)
	movb	57(%rcx), %dl
	movb	%dl, 57(%r13)
	movb	58(%rcx), %dl
	movb	%dl, 58(%r13)
	movb	59(%rcx), %dl
	movb	%dl, 59(%r13)
	movb	60(%rcx), %dl
	movb	%dl, 60(%r13)
	movb	61(%rcx), %dl
	movb	%dl, 61(%r13)
	movb	62(%rcx), %dl
	movb	%dl, 62(%r13)
	movb	63(%rcx), %dl
	movb	%dl, 63(%r13)
	movb	64(%rcx), %dl
	movb	%dl, 64(%r13)
	movb	65(%rcx), %dl
	movb	%dl, 65(%r13)
	movb	66(%rcx), %dl
	movb	%dl, 66(%r13)
	movb	67(%rcx), %dl
	movb	%dl, 67(%r13)
	movb	68(%rcx), %dl
	movb	%dl, 68(%r13)
	movb	69(%rcx), %dl
	movb	%dl, 69(%r13)
	movb	70(%rcx), %dl
	movb	%dl, 70(%r13)
	movb	71(%rcx), %dl
	movb	%dl, 71(%r13)
	movb	72(%rcx), %dl
	movb	%dl, 72(%r13)
	movb	73(%rcx), %dl
	movb	%dl, 73(%r13)
	movb	74(%rcx), %dl
	movb	%dl, 74(%r13)
	movb	75(%rcx), %dl
	movb	%dl, 75(%r13)
	movb	76(%rcx), %dl
	movb	%dl, 76(%r13)
	movb	77(%rcx), %dl
	movb	%dl, 77(%r13)
	movb	78(%rcx), %dl
	movb	%dl, 78(%r13)
	movb	79(%rcx), %dl
	movb	%dl, 79(%r13)
	movb	80(%rcx), %dl
	movb	%dl, 80(%r13)
	movb	81(%rcx), %dl
	movb	%dl, 81(%r13)
	movb	82(%rcx), %dl
	movb	%dl, 82(%r13)
	movb	83(%rcx), %dl
	movb	%dl, 83(%r13)
	movb	84(%rcx), %dl
	movb	%dl, 84(%r13)
	movb	85(%rcx), %dl
	movb	%dl, 85(%r13)
	movb	86(%rcx), %dl
	movb	%dl, 86(%r13)
	movb	87(%rcx), %dl
	movb	%dl, 87(%r13)
	movb	88(%rcx), %dl
	movb	%dl, 88(%r13)
	movb	89(%rcx), %dl
	movb	%dl, 89(%r13)
	movb	90(%rcx), %dl
	movb	%dl, 90(%r13)
	movb	91(%rcx), %dl
	movb	%dl, 91(%r13)
	movb	92(%rcx), %dl
	movb	%dl, 92(%r13)
	movb	93(%rcx), %dl
	movb	%dl, 93(%r13)
	movb	94(%rcx), %dl
	movb	%dl, 94(%r13)
	movb	95(%rcx), %dl
	movb	%dl, 95(%r13)
	movb	96(%rcx), %dl
	movb	%dl, 96(%r13)
	movb	97(%rcx), %dl
	movb	%dl, 97(%r13)
	movb	98(%rcx), %dl
	movb	%dl, 98(%r13)
	movb	99(%rcx), %dl
	movb	%dl, 99(%r13)
	movb	100(%rcx), %dl
	movb	%dl, 100(%r13)
	movb	101(%rcx), %dl
	movb	%dl, 101(%r13)
	movb	102(%rcx), %dl
	movb	%dl, 102(%r13)
	movb	103(%rcx), %dl
	movb	%dl, 103(%r13)
	movb	104(%rcx), %dl
	movb	%dl, 104(%r13)
	movb	105(%rcx), %dl
	movb	%dl, 105(%r13)
	movb	106(%rcx), %dl
	movb	%dl, 106(%r13)
	movb	107(%rcx), %dl
	movb	%dl, 107(%r13)
	movb	108(%rcx), %dl
	movb	%dl, 108(%r13)
	movb	109(%rcx), %dl
	movb	%dl, 109(%r13)
	movb	110(%rcx), %dl
	movb	%dl, 110(%r13)
	movb	111(%rcx), %dl
	movb	%dl, 111(%r13)
	movb	112(%rcx), %dl
	movb	%dl, 112(%r13)
	movb	113(%rcx), %dl
	movb	%dl, 113(%r13)
	movb	114(%rcx), %dl
	movb	%dl, 114(%r13)
	movb	115(%rcx), %dl
	movb	%dl, 115(%r13)
	movb	116(%rcx), %dl
	movb	%dl, 116(%r13)
	movb	117(%rcx), %dl
	movb	%dl, 117(%r13)
	movb	118(%rcx), %dl
	movb	%dl, 118(%r13)
	movb	119(%rcx), %dl
	movb	%dl, 119(%r13)
	movb	120(%rcx), %dl
	movb	%dl, 120(%r13)
	movb	121(%rcx), %dl
	movb	%dl, 121(%r13)
	movb	122(%rcx), %dl
	movb	%dl, 122(%r13)
	movb	123(%rcx), %dl
	movb	%dl, 123(%r13)
	movb	124(%rcx), %dl
	movb	%dl, 124(%r13)
	movb	125(%rcx), %dl
	movb	%dl, 125(%r13)
	movb	126(%rcx), %dl
	movb	%dl, 126(%r13)
	movb	127(%rcx), %dl
	movb	%dl, 127(%r13)
	movb	128(%rcx), %dl
	movb	%dl, 128(%r13)
	movb	129(%rcx), %dl
	movb	%dl, 129(%r13)
	movb	130(%rcx), %dl
	movb	%dl, 130(%r13)
	movb	131(%rcx), %dl
	movb	%dl, 131(%r13)
	movb	132(%rcx), %dl
	movb	%dl, 132(%r13)
	movb	133(%rcx), %dl
	movb	%dl, 133(%r13)
	movb	134(%rcx), %dl
	movb	%dl, 134(%r13)
	movb	135(%rcx), %dl
	movb	%dl, 135(%r13)
	movb	136(%rcx), %dl
	movb	%dl, 136(%r13)
	movb	137(%rcx), %dl
	movb	%dl, 137(%r13)
	movb	138(%rcx), %dl
	movb	%dl, 138(%r13)
	movb	139(%rcx), %dl
	movb	%dl, 139(%r13)
	movb	140(%rcx), %dl
	movb	%dl, 140(%r13)
	movb	141(%rcx), %dl
	movb	%dl, 141(%r13)
	movb	142(%rcx), %dl
	movb	%dl, 142(%r13)
	movb	143(%rcx), %dl
	movb	%dl, 143(%r13)
	movb	144(%rcx), %dl
	movb	%dl, 144(%r13)
	movb	145(%rcx), %dl
	movb	%dl, 145(%r13)
	movb	146(%rcx), %dl
	movb	%dl, 146(%r13)
	movb	147(%rcx), %dl
	movb	%dl, 147(%r13)
	movb	148(%rcx), %dl
	movb	%dl, 148(%r13)
	movb	149(%rcx), %dl
	movb	%dl, 149(%r13)
	movb	150(%rcx), %dl
	movb	%dl, 150(%r13)
	movb	151(%rcx), %dl
	movb	%dl, 151(%r13)
	movb	152(%rcx), %dl
	movb	%dl, 152(%r13)
	movb	153(%rcx), %dl
	movb	%dl, 153(%r13)
	movb	154(%rcx), %dl
	movb	%dl, 154(%r13)
	movb	155(%rcx), %dl
	movb	%dl, 155(%r13)
	movb	156(%rcx), %dl
	movb	%dl, 156(%r13)
	movb	157(%rcx), %dl
	movb	%dl, 157(%r13)
	movb	158(%rcx), %dl
	movb	%dl, 158(%r13)
	movb	159(%rcx), %dl
	movb	%dl, 159(%r13)
	movb	160(%rcx), %dl
	movb	%dl, 160(%r13)
	movb	161(%rcx), %dl
	movb	%dl, 161(%r13)
	movb	162(%rcx), %dl
	movb	%dl, 162(%r13)
	movb	163(%rcx), %dl
	movb	%dl, 163(%r13)
	movb	164(%rcx), %dl
	movb	%dl, 164(%r13)
	movb	165(%rcx), %dl
	movb	%dl, 165(%r13)
	movb	166(%rcx), %dl
	movb	%dl, 166(%r13)
	movb	167(%rcx), %cl
	movb	%cl, 167(%r13)
	jmp 	*%r14
L_shake128_absorb34$1:
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	movq	$0, 128(%rcx)
	movq	$0, 136(%rcx)
	movq	$0, 144(%rcx)
	movq	$0, 152(%rcx)
	movq	$0, 160(%rcx)
	movq	$0, 168(%rcx)
	movq	$0, 176(%rcx)
	movq	$0, 184(%rcx)
	movq	$0, 192(%rcx)
	movb	(%rdx), %dil
	xorb	%dil, (%rcx)
	movb	1(%rdx), %dil
	xorb	%dil, 1(%rcx)
	movb	2(%rdx), %dil
	xorb	%dil, 2(%rcx)
	movb	3(%rdx), %dil
	xorb	%dil, 3(%rcx)
	movb	4(%rdx), %dil
	xorb	%dil, 4(%rcx)
	movb	5(%rdx), %dil
	xorb	%dil, 5(%rcx)
	movb	6(%rdx), %dil
	xorb	%dil, 6(%rcx)
	movb	7(%rdx), %dil
	xorb	%dil, 7(%rcx)
	movb	8(%rdx), %dil
	xorb	%dil, 8(%rcx)
	movb	9(%rdx), %dil
	xorb	%dil, 9(%rcx)
	movb	10(%rdx), %dil
	xorb	%dil, 10(%rcx)
	movb	11(%rdx), %dil
	xorb	%dil, 11(%rcx)
	movb	12(%rdx), %dil
	xorb	%dil, 12(%rcx)
	movb	13(%rdx), %dil
	xorb	%dil, 13(%rcx)
	movb	14(%rdx), %dil
	xorb	%dil, 14(%rcx)
	movb	15(%rdx), %dil
	xorb	%dil, 15(%rcx)
	movb	16(%rdx), %dil
	xorb	%dil, 16(%rcx)
	movb	17(%rdx), %dil
	xorb	%dil, 17(%rcx)
	movb	18(%rdx), %dil
	xorb	%dil, 18(%rcx)
	movb	19(%rdx), %dil
	xorb	%dil, 19(%rcx)
	movb	20(%rdx), %dil
	xorb	%dil, 20(%rcx)
	movb	21(%rdx), %dil
	xorb	%dil, 21(%rcx)
	movb	22(%rdx), %dil
	xorb	%dil, 22(%rcx)
	movb	23(%rdx), %dil
	xorb	%dil, 23(%rcx)
	movb	24(%rdx), %dil
	xorb	%dil, 24(%rcx)
	movb	25(%rdx), %dil
	xorb	%dil, 25(%rcx)
	movb	26(%rdx), %dil
	xorb	%dil, 26(%rcx)
	movb	27(%rdx), %dil
	xorb	%dil, 27(%rcx)
	movb	28(%rdx), %dil
	xorb	%dil, 28(%rcx)
	movb	29(%rdx), %dil
	xorb	%dil, 29(%rcx)
	movb	30(%rdx), %dil
	xorb	%dil, 30(%rcx)
	movb	31(%rdx), %dil
	xorb	%dil, 31(%rcx)
	movb	32(%rdx), %dil
	xorb	%dil, 32(%rcx)
	movb	33(%rdx), %dl
	xorb	%dl, 33(%rcx)
	xorb	$31, 34(%rcx)
	xorb	$-128, 167(%rcx)
	jmp 	*%rsi
L_sha3512_32$1:
	movq	%rsp, %rdx
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
	movb	(%rcx), %dl
	xorb	%dl, (%rsp)
	movb	1(%rcx), %dl
	xorb	%dl, 1(%rsp)
	movb	2(%rcx), %dl
	xorb	%dl, 2(%rsp)
	movb	3(%rcx), %dl
	xorb	%dl, 3(%rsp)
	movb	4(%rcx), %dl
	xorb	%dl, 4(%rsp)
	movb	5(%rcx), %dl
	xorb	%dl, 5(%rsp)
	movb	6(%rcx), %dl
	xorb	%dl, 6(%rsp)
	movb	7(%rcx), %dl
	xorb	%dl, 7(%rsp)
	movb	8(%rcx), %dl
	xorb	%dl, 8(%rsp)
	movb	9(%rcx), %dl
	xorb	%dl, 9(%rsp)
	movb	10(%rcx), %dl
	xorb	%dl, 10(%rsp)
	movb	11(%rcx), %dl
	xorb	%dl, 11(%rsp)
	movb	12(%rcx), %dl
	xorb	%dl, 12(%rsp)
	movb	13(%rcx), %dl
	xorb	%dl, 13(%rsp)
	movb	14(%rcx), %dl
	xorb	%dl, 14(%rsp)
	movb	15(%rcx), %dl
	xorb	%dl, 15(%rsp)
	movb	16(%rcx), %dl
	xorb	%dl, 16(%rsp)
	movb	17(%rcx), %dl
	xorb	%dl, 17(%rsp)
	movb	18(%rcx), %dl
	xorb	%dl, 18(%rsp)
	movb	19(%rcx), %dl
	xorb	%dl, 19(%rsp)
	movb	20(%rcx), %dl
	xorb	%dl, 20(%rsp)
	movb	21(%rcx), %dl
	xorb	%dl, 21(%rsp)
	movb	22(%rcx), %dl
	xorb	%dl, 22(%rsp)
	movb	23(%rcx), %dl
	xorb	%dl, 23(%rsp)
	movb	24(%rcx), %dl
	xorb	%dl, 24(%rsp)
	movb	25(%rcx), %dl
	xorb	%dl, 25(%rsp)
	movb	26(%rcx), %dl
	xorb	%dl, 26(%rsp)
	movb	27(%rcx), %dl
	xorb	%dl, 27(%rsp)
	movb	28(%rcx), %dl
	xorb	%dl, 28(%rsp)
	movb	29(%rcx), %dl
	xorb	%dl, 29(%rsp)
	movb	30(%rcx), %dl
	xorb	%dl, 30(%rsp)
	movb	31(%rcx), %cl
	xorb	%cl, 31(%rsp)
	xorb	$6, 32(%rsp)
	xorb	$-128, 71(%rsp)
	movq	%rsp, %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_sha3512_32$2(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_sha3512_32$2:
	leaq	200(%rsp), %rsp
	movb	(%rsp), %cl
	movb	%cl, (%rax)
	movb	1(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	2(%rsp), %cl
	movb	%cl, 2(%rax)
	movb	3(%rsp), %cl
	movb	%cl, 3(%rax)
	movb	4(%rsp), %cl
	movb	%cl, 4(%rax)
	movb	5(%rsp), %cl
	movb	%cl, 5(%rax)
	movb	6(%rsp), %cl
	movb	%cl, 6(%rax)
	movb	7(%rsp), %cl
	movb	%cl, 7(%rax)
	movb	8(%rsp), %cl
	movb	%cl, 8(%rax)
	movb	9(%rsp), %cl
	movb	%cl, 9(%rax)
	movb	10(%rsp), %cl
	movb	%cl, 10(%rax)
	movb	11(%rsp), %cl
	movb	%cl, 11(%rax)
	movb	12(%rsp), %cl
	movb	%cl, 12(%rax)
	movb	13(%rsp), %cl
	movb	%cl, 13(%rax)
	movb	14(%rsp), %cl
	movb	%cl, 14(%rax)
	movb	15(%rsp), %cl
	movb	%cl, 15(%rax)
	movb	16(%rsp), %cl
	movb	%cl, 16(%rax)
	movb	17(%rsp), %cl
	movb	%cl, 17(%rax)
	movb	18(%rsp), %cl
	movb	%cl, 18(%rax)
	movb	19(%rsp), %cl
	movb	%cl, 19(%rax)
	movb	20(%rsp), %cl
	movb	%cl, 20(%rax)
	movb	21(%rsp), %cl
	movb	%cl, 21(%rax)
	movb	22(%rsp), %cl
	movb	%cl, 22(%rax)
	movb	23(%rsp), %cl
	movb	%cl, 23(%rax)
	movb	24(%rsp), %cl
	movb	%cl, 24(%rax)
	movb	25(%rsp), %cl
	movb	%cl, 25(%rax)
	movb	26(%rsp), %cl
	movb	%cl, 26(%rax)
	movb	27(%rsp), %cl
	movb	%cl, 27(%rax)
	movb	28(%rsp), %cl
	movb	%cl, 28(%rax)
	movb	29(%rsp), %cl
	movb	%cl, 29(%rax)
	movb	30(%rsp), %cl
	movb	%cl, 30(%rax)
	movb	31(%rsp), %cl
	movb	%cl, 31(%rax)
	movb	32(%rsp), %cl
	movb	%cl, 32(%rax)
	movb	33(%rsp), %cl
	movb	%cl, 33(%rax)
	movb	34(%rsp), %cl
	movb	%cl, 34(%rax)
	movb	35(%rsp), %cl
	movb	%cl, 35(%rax)
	movb	36(%rsp), %cl
	movb	%cl, 36(%rax)
	movb	37(%rsp), %cl
	movb	%cl, 37(%rax)
	movb	38(%rsp), %cl
	movb	%cl, 38(%rax)
	movb	39(%rsp), %cl
	movb	%cl, 39(%rax)
	movb	40(%rsp), %cl
	movb	%cl, 40(%rax)
	movb	41(%rsp), %cl
	movb	%cl, 41(%rax)
	movb	42(%rsp), %cl
	movb	%cl, 42(%rax)
	movb	43(%rsp), %cl
	movb	%cl, 43(%rax)
	movb	44(%rsp), %cl
	movb	%cl, 44(%rax)
	movb	45(%rsp), %cl
	movb	%cl, 45(%rax)
	movb	46(%rsp), %cl
	movb	%cl, 46(%rax)
	movb	47(%rsp), %cl
	movb	%cl, 47(%rax)
	movb	48(%rsp), %cl
	movb	%cl, 48(%rax)
	movb	49(%rsp), %cl
	movb	%cl, 49(%rax)
	movb	50(%rsp), %cl
	movb	%cl, 50(%rax)
	movb	51(%rsp), %cl
	movb	%cl, 51(%rax)
	movb	52(%rsp), %cl
	movb	%cl, 52(%rax)
	movb	53(%rsp), %cl
	movb	%cl, 53(%rax)
	movb	54(%rsp), %cl
	movb	%cl, 54(%rax)
	movb	55(%rsp), %cl
	movb	%cl, 55(%rax)
	movb	56(%rsp), %cl
	movb	%cl, 56(%rax)
	movb	57(%rsp), %cl
	movb	%cl, 57(%rax)
	movb	58(%rsp), %cl
	movb	%cl, 58(%rax)
	movb	59(%rsp), %cl
	movb	%cl, 59(%rax)
	movb	60(%rsp), %cl
	movb	%cl, 60(%rax)
	movb	61(%rsp), %cl
	movb	%cl, 61(%rax)
	movb	62(%rsp), %cl
	movb	%cl, 62(%rax)
	movb	63(%rsp), %cl
	movb	%cl, 63(%rax)
	jmp 	*%r13
L_shake256_128_33$1:
	movq	%rdx, (%rsp)
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
	movb	(%rcx), %dl
	xorb	%dl, 8(%rsp)
	movb	1(%rcx), %dl
	xorb	%dl, 9(%rsp)
	movb	2(%rcx), %dl
	xorb	%dl, 10(%rsp)
	movb	3(%rcx), %dl
	xorb	%dl, 11(%rsp)
	movb	4(%rcx), %dl
	xorb	%dl, 12(%rsp)
	movb	5(%rcx), %dl
	xorb	%dl, 13(%rsp)
	movb	6(%rcx), %dl
	xorb	%dl, 14(%rsp)
	movb	7(%rcx), %dl
	xorb	%dl, 15(%rsp)
	movb	8(%rcx), %dl
	xorb	%dl, 16(%rsp)
	movb	9(%rcx), %dl
	xorb	%dl, 17(%rsp)
	movb	10(%rcx), %dl
	xorb	%dl, 18(%rsp)
	movb	11(%rcx), %dl
	xorb	%dl, 19(%rsp)
	movb	12(%rcx), %dl
	xorb	%dl, 20(%rsp)
	movb	13(%rcx), %dl
	xorb	%dl, 21(%rsp)
	movb	14(%rcx), %dl
	xorb	%dl, 22(%rsp)
	movb	15(%rcx), %dl
	xorb	%dl, 23(%rsp)
	movb	16(%rcx), %dl
	xorb	%dl, 24(%rsp)
	movb	17(%rcx), %dl
	xorb	%dl, 25(%rsp)
	movb	18(%rcx), %dl
	xorb	%dl, 26(%rsp)
	movb	19(%rcx), %dl
	xorb	%dl, 27(%rsp)
	movb	20(%rcx), %dl
	xorb	%dl, 28(%rsp)
	movb	21(%rcx), %dl
	xorb	%dl, 29(%rsp)
	movb	22(%rcx), %dl
	xorb	%dl, 30(%rsp)
	movb	23(%rcx), %dl
	xorb	%dl, 31(%rsp)
	movb	24(%rcx), %dl
	xorb	%dl, 32(%rsp)
	movb	25(%rcx), %dl
	xorb	%dl, 33(%rsp)
	movb	26(%rcx), %dl
	xorb	%dl, 34(%rsp)
	movb	27(%rcx), %dl
	xorb	%dl, 35(%rsp)
	movb	28(%rcx), %dl
	xorb	%dl, 36(%rsp)
	movb	29(%rcx), %dl
	xorb	%dl, 37(%rsp)
	movb	30(%rcx), %dl
	xorb	%dl, 38(%rsp)
	movb	31(%rcx), %dl
	xorb	%dl, 39(%rsp)
	movb	32(%rcx), %cl
	xorb	%cl, 40(%rsp)
	xorb	$31, 41(%rsp)
	xorb	$-128, 143(%rsp)
	leaq	8(%rsp), %rcx
	leaq	-200(%rsp), %rsp
	leaq	L_shake256_128_33$2(%rip), %r12
	jmp 	L__keccakf1600_ref$1
L_shake256_128_33$2:
	leaq	200(%rsp), %rsp
	movq	(%rsp), %rcx
	movb	8(%rsp), %dl
	movb	%dl, (%rcx)
	movb	9(%rsp), %dl
	movb	%dl, 1(%rcx)
	movb	10(%rsp), %dl
	movb	%dl, 2(%rcx)
	movb	11(%rsp), %dl
	movb	%dl, 3(%rcx)
	movb	12(%rsp), %dl
	movb	%dl, 4(%rcx)
	movb	13(%rsp), %dl
	movb	%dl, 5(%rcx)
	movb	14(%rsp), %dl
	movb	%dl, 6(%rcx)
	movb	15(%rsp), %dl
	movb	%dl, 7(%rcx)
	movb	16(%rsp), %dl
	movb	%dl, 8(%rcx)
	movb	17(%rsp), %dl
	movb	%dl, 9(%rcx)
	movb	18(%rsp), %dl
	movb	%dl, 10(%rcx)
	movb	19(%rsp), %dl
	movb	%dl, 11(%rcx)
	movb	20(%rsp), %dl
	movb	%dl, 12(%rcx)
	movb	21(%rsp), %dl
	movb	%dl, 13(%rcx)
	movb	22(%rsp), %dl
	movb	%dl, 14(%rcx)
	movb	23(%rsp), %dl
	movb	%dl, 15(%rcx)
	movb	24(%rsp), %dl
	movb	%dl, 16(%rcx)
	movb	25(%rsp), %dl
	movb	%dl, 17(%rcx)
	movb	26(%rsp), %dl
	movb	%dl, 18(%rcx)
	movb	27(%rsp), %dl
	movb	%dl, 19(%rcx)
	movb	28(%rsp), %dl
	movb	%dl, 20(%rcx)
	movb	29(%rsp), %dl
	movb	%dl, 21(%rcx)
	movb	30(%rsp), %dl
	movb	%dl, 22(%rcx)
	movb	31(%rsp), %dl
	movb	%dl, 23(%rcx)
	movb	32(%rsp), %dl
	movb	%dl, 24(%rcx)
	movb	33(%rsp), %dl
	movb	%dl, 25(%rcx)
	movb	34(%rsp), %dl
	movb	%dl, 26(%rcx)
	movb	35(%rsp), %dl
	movb	%dl, 27(%rcx)
	movb	36(%rsp), %dl
	movb	%dl, 28(%rcx)
	movb	37(%rsp), %dl
	movb	%dl, 29(%rcx)
	movb	38(%rsp), %dl
	movb	%dl, 30(%rcx)
	movb	39(%rsp), %dl
	movb	%dl, 31(%rcx)
	movb	40(%rsp), %dl
	movb	%dl, 32(%rcx)
	movb	41(%rsp), %dl
	movb	%dl, 33(%rcx)
	movb	42(%rsp), %dl
	movb	%dl, 34(%rcx)
	movb	43(%rsp), %dl
	movb	%dl, 35(%rcx)
	movb	44(%rsp), %dl
	movb	%dl, 36(%rcx)
	movb	45(%rsp), %dl
	movb	%dl, 37(%rcx)
	movb	46(%rsp), %dl
	movb	%dl, 38(%rcx)
	movb	47(%rsp), %dl
	movb	%dl, 39(%rcx)
	movb	48(%rsp), %dl
	movb	%dl, 40(%rcx)
	movb	49(%rsp), %dl
	movb	%dl, 41(%rcx)
	movb	50(%rsp), %dl
	movb	%dl, 42(%rcx)
	movb	51(%rsp), %dl
	movb	%dl, 43(%rcx)
	movb	52(%rsp), %dl
	movb	%dl, 44(%rcx)
	movb	53(%rsp), %dl
	movb	%dl, 45(%rcx)
	movb	54(%rsp), %dl
	movb	%dl, 46(%rcx)
	movb	55(%rsp), %dl
	movb	%dl, 47(%rcx)
	movb	56(%rsp), %dl
	movb	%dl, 48(%rcx)
	movb	57(%rsp), %dl
	movb	%dl, 49(%rcx)
	movb	58(%rsp), %dl
	movb	%dl, 50(%rcx)
	movb	59(%rsp), %dl
	movb	%dl, 51(%rcx)
	movb	60(%rsp), %dl
	movb	%dl, 52(%rcx)
	movb	61(%rsp), %dl
	movb	%dl, 53(%rcx)
	movb	62(%rsp), %dl
	movb	%dl, 54(%rcx)
	movb	63(%rsp), %dl
	movb	%dl, 55(%rcx)
	movb	64(%rsp), %dl
	movb	%dl, 56(%rcx)
	movb	65(%rsp), %dl
	movb	%dl, 57(%rcx)
	movb	66(%rsp), %dl
	movb	%dl, 58(%rcx)
	movb	67(%rsp), %dl
	movb	%dl, 59(%rcx)
	movb	68(%rsp), %dl
	movb	%dl, 60(%rcx)
	movb	69(%rsp), %dl
	movb	%dl, 61(%rcx)
	movb	70(%rsp), %dl
	movb	%dl, 62(%rcx)
	movb	71(%rsp), %dl
	movb	%dl, 63(%rcx)
	movb	72(%rsp), %dl
	movb	%dl, 64(%rcx)
	movb	73(%rsp), %dl
	movb	%dl, 65(%rcx)
	movb	74(%rsp), %dl
	movb	%dl, 66(%rcx)
	movb	75(%rsp), %dl
	movb	%dl, 67(%rcx)
	movb	76(%rsp), %dl
	movb	%dl, 68(%rcx)
	movb	77(%rsp), %dl
	movb	%dl, 69(%rcx)
	movb	78(%rsp), %dl
	movb	%dl, 70(%rcx)
	movb	79(%rsp), %dl
	movb	%dl, 71(%rcx)
	movb	80(%rsp), %dl
	movb	%dl, 72(%rcx)
	movb	81(%rsp), %dl
	movb	%dl, 73(%rcx)
	movb	82(%rsp), %dl
	movb	%dl, 74(%rcx)
	movb	83(%rsp), %dl
	movb	%dl, 75(%rcx)
	movb	84(%rsp), %dl
	movb	%dl, 76(%rcx)
	movb	85(%rsp), %dl
	movb	%dl, 77(%rcx)
	movb	86(%rsp), %dl
	movb	%dl, 78(%rcx)
	movb	87(%rsp), %dl
	movb	%dl, 79(%rcx)
	movb	88(%rsp), %dl
	movb	%dl, 80(%rcx)
	movb	89(%rsp), %dl
	movb	%dl, 81(%rcx)
	movb	90(%rsp), %dl
	movb	%dl, 82(%rcx)
	movb	91(%rsp), %dl
	movb	%dl, 83(%rcx)
	movb	92(%rsp), %dl
	movb	%dl, 84(%rcx)
	movb	93(%rsp), %dl
	movb	%dl, 85(%rcx)
	movb	94(%rsp), %dl
	movb	%dl, 86(%rcx)
	movb	95(%rsp), %dl
	movb	%dl, 87(%rcx)
	movb	96(%rsp), %dl
	movb	%dl, 88(%rcx)
	movb	97(%rsp), %dl
	movb	%dl, 89(%rcx)
	movb	98(%rsp), %dl
	movb	%dl, 90(%rcx)
	movb	99(%rsp), %dl
	movb	%dl, 91(%rcx)
	movb	100(%rsp), %dl
	movb	%dl, 92(%rcx)
	movb	101(%rsp), %dl
	movb	%dl, 93(%rcx)
	movb	102(%rsp), %dl
	movb	%dl, 94(%rcx)
	movb	103(%rsp), %dl
	movb	%dl, 95(%rcx)
	movb	104(%rsp), %dl
	movb	%dl, 96(%rcx)
	movb	105(%rsp), %dl
	movb	%dl, 97(%rcx)
	movb	106(%rsp), %dl
	movb	%dl, 98(%rcx)
	movb	107(%rsp), %dl
	movb	%dl, 99(%rcx)
	movb	108(%rsp), %dl
	movb	%dl, 100(%rcx)
	movb	109(%rsp), %dl
	movb	%dl, 101(%rcx)
	movb	110(%rsp), %dl
	movb	%dl, 102(%rcx)
	movb	111(%rsp), %dl
	movb	%dl, 103(%rcx)
	movb	112(%rsp), %dl
	movb	%dl, 104(%rcx)
	movb	113(%rsp), %dl
	movb	%dl, 105(%rcx)
	movb	114(%rsp), %dl
	movb	%dl, 106(%rcx)
	movb	115(%rsp), %dl
	movb	%dl, 107(%rcx)
	movb	116(%rsp), %dl
	movb	%dl, 108(%rcx)
	movb	117(%rsp), %dl
	movb	%dl, 109(%rcx)
	movb	118(%rsp), %dl
	movb	%dl, 110(%rcx)
	movb	119(%rsp), %dl
	movb	%dl, 111(%rcx)
	movb	120(%rsp), %dl
	movb	%dl, 112(%rcx)
	movb	121(%rsp), %dl
	movb	%dl, 113(%rcx)
	movb	122(%rsp), %dl
	movb	%dl, 114(%rcx)
	movb	123(%rsp), %dl
	movb	%dl, 115(%rcx)
	movb	124(%rsp), %dl
	movb	%dl, 116(%rcx)
	movb	125(%rsp), %dl
	movb	%dl, 117(%rcx)
	movb	126(%rsp), %dl
	movb	%dl, 118(%rcx)
	movb	127(%rsp), %dl
	movb	%dl, 119(%rcx)
	movb	128(%rsp), %dl
	movb	%dl, 120(%rcx)
	movb	129(%rsp), %dl
	movb	%dl, 121(%rcx)
	movb	130(%rsp), %dl
	movb	%dl, 122(%rcx)
	movb	131(%rsp), %dl
	movb	%dl, 123(%rcx)
	movb	132(%rsp), %dl
	movb	%dl, 124(%rcx)
	movb	133(%rsp), %dl
	movb	%dl, 125(%rcx)
	movb	134(%rsp), %dl
	movb	%dl, 126(%rcx)
	movb	135(%rsp), %dl
	movb	%dl, 127(%rcx)
	jmp 	*%r14
L__keccakf1600_ref$1:
	movq	$0, %rdx
	jmp 	L__keccakf1600_ref$2
L__keccakf1600_ref$3:
	movq	$0, %rsi
	xorq	(%rcx), %rsi
	xorq	40(%rcx), %rsi
	xorq	80(%rcx), %rsi
	xorq	120(%rcx), %rsi
	xorq	160(%rcx), %rsi
	movq	$0, %rdi
	xorq	8(%rcx), %rdi
	xorq	48(%rcx), %rdi
	xorq	88(%rcx), %rdi
	xorq	128(%rcx), %rdi
	xorq	168(%rcx), %rdi
	movq	$0, %r8
	xorq	16(%rcx), %r8
	xorq	56(%rcx), %r8
	xorq	96(%rcx), %r8
	xorq	136(%rcx), %r8
	xorq	176(%rcx), %r8
	movq	$0, %r9
	xorq	24(%rcx), %r9
	xorq	64(%rcx), %r9
	xorq	104(%rcx), %r9
	xorq	144(%rcx), %r9
	xorq	184(%rcx), %r9
	movq	$0, %r10
	xorq	32(%rcx), %r10
	xorq	72(%rcx), %r10
	xorq	112(%rcx), %r10
	xorq	152(%rcx), %r10
	xorq	192(%rcx), %r10
	movq	%rdi, %r11
	rolq	$1, %r11
	xorq	%r10, %r11
	movq	%r8, %rbx
	rolq	$1, %rbx
	xorq	%rsi, %rbx
	movq	%r9, %rbp
	rolq	$1, %rbp
	xorq	%rdi, %rbp
	rolq	$1, %r10
	xorq	%r8, %r10
	rolq	$1, %rsi
	xorq	%r9, %rsi
	xorq	%r11, (%rcx)
	xorq	%r11, 40(%rcx)
	xorq	%r11, 80(%rcx)
	xorq	%r11, 120(%rcx)
	xorq	%r11, 160(%rcx)
	xorq	%rbx, 8(%rcx)
	xorq	%rbx, 48(%rcx)
	xorq	%rbx, 88(%rcx)
	xorq	%rbx, 128(%rcx)
	xorq	%rbx, 168(%rcx)
	xorq	%rbp, 16(%rcx)
	xorq	%rbp, 56(%rcx)
	xorq	%rbp, 96(%rcx)
	xorq	%rbp, 136(%rcx)
	xorq	%rbp, 176(%rcx)
	xorq	%r10, 24(%rcx)
	xorq	%r10, 64(%rcx)
	xorq	%r10, 104(%rcx)
	xorq	%r10, 144(%rcx)
	xorq	%r10, 184(%rcx)
	xorq	%rsi, 32(%rcx)
	xorq	%rsi, 72(%rcx)
	xorq	%rsi, 112(%rcx)
	xorq	%rsi, 152(%rcx)
	xorq	%rsi, 192(%rcx)
	rolq	$0, (%rcx)
	rolq	$36, 40(%rcx)
	rolq	$3, 80(%rcx)
	rolq	$41, 120(%rcx)
	rolq	$18, 160(%rcx)
	rolq	$1, 8(%rcx)
	rolq	$44, 48(%rcx)
	rolq	$10, 88(%rcx)
	rolq	$45, 128(%rcx)
	rolq	$2, 168(%rcx)
	rolq	$62, 16(%rcx)
	rolq	$6, 56(%rcx)
	rolq	$43, 96(%rcx)
	rolq	$15, 136(%rcx)
	rolq	$61, 176(%rcx)
	rolq	$28, 24(%rcx)
	rolq	$55, 64(%rcx)
	rolq	$25, 104(%rcx)
	rolq	$21, 144(%rcx)
	rolq	$56, 184(%rcx)
	rolq	$27, 32(%rcx)
	rolq	$20, 72(%rcx)
	rolq	$39, 112(%rcx)
	rolq	$8, 152(%rcx)
	rolq	$14, 192(%rcx)
	movq	(%rcx), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rcx), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rcx), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rcx), %rsi
	movq	%rsi, 24(%rsp)
	movq	32(%rcx), %rsi
	movq	%rsi, 32(%rsp)
	movq	40(%rcx), %rsi
	movq	%rsi, 40(%rsp)
	movq	48(%rcx), %rsi
	movq	%rsi, 48(%rsp)
	movq	56(%rcx), %rsi
	movq	%rsi, 56(%rsp)
	movq	64(%rcx), %rsi
	movq	%rsi, 64(%rsp)
	movq	72(%rcx), %rsi
	movq	%rsi, 72(%rsp)
	movq	80(%rcx), %rsi
	movq	%rsi, 80(%rsp)
	movq	88(%rcx), %rsi
	movq	%rsi, 88(%rsp)
	movq	96(%rcx), %rsi
	movq	%rsi, 96(%rsp)
	movq	104(%rcx), %rsi
	movq	%rsi, 104(%rsp)
	movq	112(%rcx), %rsi
	movq	%rsi, 112(%rsp)
	movq	120(%rcx), %rsi
	movq	%rsi, 120(%rsp)
	movq	128(%rcx), %rsi
	movq	%rsi, 128(%rsp)
	movq	136(%rcx), %rsi
	movq	%rsi, 136(%rsp)
	movq	144(%rcx), %rsi
	movq	%rsi, 144(%rsp)
	movq	152(%rcx), %rsi
	movq	%rsi, 152(%rsp)
	movq	160(%rcx), %rsi
	movq	%rsi, 160(%rsp)
	movq	168(%rcx), %rsi
	movq	%rsi, 168(%rsp)
	movq	176(%rcx), %rsi
	movq	%rsi, 176(%rsp)
	movq	184(%rcx), %rsi
	movq	%rsi, 184(%rsp)
	movq	192(%rcx), %rsi
	movq	%rsi, 192(%rsp)
	movq	(%rsp), %rsi
	movq	%rsi, (%rcx)
	movq	40(%rsp), %rsi
	movq	%rsi, 128(%rcx)
	movq	80(%rsp), %rsi
	movq	%rsi, 56(%rcx)
	movq	120(%rsp), %rsi
	movq	%rsi, 184(%rcx)
	movq	160(%rsp), %rsi
	movq	%rsi, 112(%rcx)
	movq	8(%rsp), %rsi
	movq	%rsi, 80(%rcx)
	movq	48(%rsp), %rsi
	movq	%rsi, 8(%rcx)
	movq	88(%rsp), %rsi
	movq	%rsi, 136(%rcx)
	movq	128(%rsp), %rsi
	movq	%rsi, 64(%rcx)
	movq	168(%rsp), %rsi
	movq	%rsi, 192(%rcx)
	movq	16(%rsp), %rsi
	movq	%rsi, 160(%rcx)
	movq	56(%rsp), %rsi
	movq	%rsi, 88(%rcx)
	movq	96(%rsp), %rsi
	movq	%rsi, 16(%rcx)
	movq	136(%rsp), %rsi
	movq	%rsi, 144(%rcx)
	movq	176(%rsp), %rsi
	movq	%rsi, 72(%rcx)
	movq	24(%rsp), %rsi
	movq	%rsi, 40(%rcx)
	movq	64(%rsp), %rsi
	movq	%rsi, 168(%rcx)
	movq	104(%rsp), %rsi
	movq	%rsi, 96(%rcx)
	movq	144(%rsp), %rsi
	movq	%rsi, 24(%rcx)
	movq	184(%rsp), %rsi
	movq	%rsi, 152(%rcx)
	movq	32(%rsp), %rsi
	movq	%rsi, 120(%rcx)
	movq	72(%rsp), %rsi
	movq	%rsi, 48(%rcx)
	movq	112(%rsp), %rsi
	movq	%rsi, 176(%rcx)
	movq	152(%rsp), %rsi
	movq	%rsi, 104(%rcx)
	movq	192(%rsp), %rsi
	movq	%rsi, 32(%rcx)
	movq	8(%rcx), %rsi
	notq	%rsi
	andq	16(%rcx), %rsi
	xorq	(%rcx), %rsi
	movq	16(%rcx), %rdi
	notq	%rdi
	andq	24(%rcx), %rdi
	xorq	8(%rcx), %rdi
	movq	24(%rcx), %r8
	notq	%r8
	andq	32(%rcx), %r8
	xorq	16(%rcx), %r8
	movq	32(%rcx), %r9
	notq	%r9
	andq	(%rcx), %r9
	xorq	24(%rcx), %r9
	movq	(%rcx), %r10
	notq	%r10
	andq	8(%rcx), %r10
	xorq	32(%rcx), %r10
	movq	%rsi, (%rcx)
	movq	%rdi, 8(%rcx)
	movq	%r8, 16(%rcx)
	movq	%r9, 24(%rcx)
	movq	%r10, 32(%rcx)
	movq	48(%rcx), %rsi
	notq	%rsi
	andq	56(%rcx), %rsi
	xorq	40(%rcx), %rsi
	movq	56(%rcx), %rdi
	notq	%rdi
	andq	64(%rcx), %rdi
	xorq	48(%rcx), %rdi
	movq	64(%rcx), %r8
	notq	%r8
	andq	72(%rcx), %r8
	xorq	56(%rcx), %r8
	movq	72(%rcx), %r9
	notq	%r9
	andq	40(%rcx), %r9
	xorq	64(%rcx), %r9
	movq	40(%rcx), %r10
	notq	%r10
	andq	48(%rcx), %r10
	xorq	72(%rcx), %r10
	movq	%rsi, 40(%rcx)
	movq	%rdi, 48(%rcx)
	movq	%r8, 56(%rcx)
	movq	%r9, 64(%rcx)
	movq	%r10, 72(%rcx)
	movq	88(%rcx), %rsi
	notq	%rsi
	andq	96(%rcx), %rsi
	xorq	80(%rcx), %rsi
	movq	96(%rcx), %rdi
	notq	%rdi
	andq	104(%rcx), %rdi
	xorq	88(%rcx), %rdi
	movq	104(%rcx), %r8
	notq	%r8
	andq	112(%rcx), %r8
	xorq	96(%rcx), %r8
	movq	112(%rcx), %r9
	notq	%r9
	andq	80(%rcx), %r9
	xorq	104(%rcx), %r9
	movq	80(%rcx), %r10
	notq	%r10
	andq	88(%rcx), %r10
	xorq	112(%rcx), %r10
	movq	%rsi, 80(%rcx)
	movq	%rdi, 88(%rcx)
	movq	%r8, 96(%rcx)
	movq	%r9, 104(%rcx)
	movq	%r10, 112(%rcx)
	movq	128(%rcx), %rsi
	notq	%rsi
	andq	136(%rcx), %rsi
	xorq	120(%rcx), %rsi
	movq	136(%rcx), %rdi
	notq	%rdi
	andq	144(%rcx), %rdi
	xorq	128(%rcx), %rdi
	movq	144(%rcx), %r8
	notq	%r8
	andq	152(%rcx), %r8
	xorq	136(%rcx), %r8
	movq	152(%rcx), %r9
	notq	%r9
	andq	120(%rcx), %r9
	xorq	144(%rcx), %r9
	movq	120(%rcx), %r10
	notq	%r10
	andq	128(%rcx), %r10
	xorq	152(%rcx), %r10
	movq	%rsi, 120(%rcx)
	movq	%rdi, 128(%rcx)
	movq	%r8, 136(%rcx)
	movq	%r9, 144(%rcx)
	movq	%r10, 152(%rcx)
	movq	168(%rcx), %rsi
	notq	%rsi
	andq	176(%rcx), %rsi
	xorq	160(%rcx), %rsi
	movq	176(%rcx), %rdi
	notq	%rdi
	andq	184(%rcx), %rdi
	xorq	168(%rcx), %rdi
	movq	184(%rcx), %r8
	notq	%r8
	andq	192(%rcx), %r8
	xorq	176(%rcx), %r8
	movq	192(%rcx), %r9
	notq	%r9
	andq	160(%rcx), %r9
	xorq	184(%rcx), %r9
	movq	160(%rcx), %r10
	notq	%r10
	andq	168(%rcx), %r10
	xorq	192(%rcx), %r10
	movq	%rsi, 160(%rcx)
	movq	%rdi, 168(%rcx)
	movq	%r8, 176(%rcx)
	movq	%r9, 184(%rcx)
	movq	%r10, 192(%rcx)
	leaq	glob_data + 0(%rip), %rsi
	movq	(%rsi,%rdx), %rsi
	xorq	%rsi, (%rcx)
	leaq	8(%rdx), %rdx
L__keccakf1600_ref$2:
	cmpq	$192, %rdx
	jb  	L__keccakf1600_ref$3
	jmp 	*%r12
	.data
	.p2align	5
_glob_data:
glob_data:
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
