#include <stdio.h>
#include "../polyvec.h"

int main(void)
{
  unsigned char in[KYBER_POLYVECCOMPRESSEDBYTES];
  polyvec r0, r1;
 
  FILE *urandom = fopen("/dev/urandom", "r");
  fread(in, 1, KYBER_POLYVECCOMPRESSEDBYTES, urandom);
  fclose(urandom);

  polyvec_decompress(&r0, in);
  polyvec_decompress_jazz(&r1, in);

  for(int i=0;i<KYBER_K;i++)
    for(int j=0;j<KYBER_N;j++)
      if(r0.vec[i].coeffs[j] != r1.vec[i].coeffs[j])
        printf("error polyvec_decompress %d,%d: %d, %d\n", i, j, r0.vec[i].coeffs[j], r1.vec[i].coeffs[j]);

  return 0;
}
