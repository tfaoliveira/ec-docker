#include <stdio.h>
#include "../polyvec.h"
#include "../ntt.h"

void polyvec_setrandom(polyvec *r)
{
  FILE *urandom = fopen("/dev/urandom", "r");
  for(int i=0;i<KYBER_K;i++)
    fread(r->vec[i].coeffs, sizeof(int16_t), KYBER_N, urandom);

  polyvec_reduce(r);
  fclose(urandom);
}

int main(void)
{
  unsigned char out0[KYBER_POLYVECCOMPRESSEDBYTES];
  unsigned char out1[KYBER_POLYVECCOMPRESSEDBYTES];
  polyvec a;
  
  polyvec_setrandom(&a);

  polyvec_compress(out0, &a);
  polyvec_compress_jazz(out1, &a);

  for(int i=0;i<KYBER_POLYVECCOMPRESSEDBYTES;i++)
  {
    if(out0[i] != out1[i])
      printf("error polyvec_compress %d, %d, %d\n", i, out0[i], out1[i]);
  }

  return 0;
}
