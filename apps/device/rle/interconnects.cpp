#include <insider_itc.h>

#include "structure.h"

#include "app_rle_prefix_sum.cpp"
#include "app_rle_combine.cpp"
#include "app_rle_expand.cpp"

void interconnects() {
  ST_Queue<APP_Expand_Data> app_rle_expand_input_data(8);
  ST_Queue<APP_Data> app_rle_combine_input_data(8);

  app_rle_prefix_sum(dbg_peek_req, dbg_peek_resp, app_dram_read_req,
                     app_dram_read_resp, app_dram_write_req_data,
                     app_dram_write_req_apply, app_input_params, app_input_data,
                     app_rle_expand_input_data);
  app_rle_expand(app_rle_expand_input_data, app_rle_combine_input_data);
  app_rle_combine(app_rle_combine_input_data, app_output_data);
}
