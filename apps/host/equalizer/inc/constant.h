#ifndef CONSTANT_H_
#define CONSTANT_H_

#define IMAGE_HEIGHT_PIXELS (15LL * 1024 * 128)
#define IMAGE_WIDTH_PIXELS (4096)
#define INPUT_SIZE                                                             \
  (IMAGE_HEIGHT_PIXELS * IMAGE_WIDTH_PIXELS * sizeof(unsigned short)) // 30 GiB

#endif
