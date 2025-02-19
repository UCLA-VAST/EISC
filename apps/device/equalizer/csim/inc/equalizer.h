#ifndef EQUALIZER_H_
#define EQUALIZER_H_

#define IMAGE_WIDTH_PIXELS (2048)
#define PIXEL_WIDTH_BITS (16)
#define HISTOGRAM_BITS (12)
#define READ_SIZE_BITS (512)
#define READ_PIXELS (READ_SIZE_BITS / PIXEL_WIDTH_BITS)
#define LINE_READS (IMAGE_WIDTH_PIXELS / READ_PIXELS)
#define IMAGE_READS (IMAGE_HEIGHT_PIXELS * LINE_READS)
#define HISTOGRAM_DEPTH (1 << HISTOGRAM_BITS)

#endif
