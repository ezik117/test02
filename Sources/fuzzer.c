#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "test.h"

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
  func((int)(*data));
  return 0;
}
