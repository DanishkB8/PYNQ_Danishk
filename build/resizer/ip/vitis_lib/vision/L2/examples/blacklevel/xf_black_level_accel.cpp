#ifndef __XF_BLACK_LEVEL_ACCEL_CPP__
#define __XF_BLACK_LEVEL_ACCEL_CPP__

// =========================================================================
// Required files
// =========================================================================

#include "common/xf_utility.hpp"

//#include "imgproc/xf_black_level.hpp"

#include "xf_black_level_config.h"

// =======================================================================
// H/W Acclerated functions that are visible to host
// =======================================================================

extern "C" {

void blackLevelCorrection_accel(ap_uint<IMAGE_PTR_WIDTH>* in_img_ptr,
                                ap_uint<IMAGE_PTR_WIDTH>* out_img_ptr,
                                int black_level,
                                float mul_value, // = 1/(white-black)
                                int height,
                                int width) {
// -----------------------------------------------
// HLS directives for ports
// -----------------------------------------------
// clang-format off
    #pragma HLS INTERFACE m_axi     port=in_img_ptr  offset=slave bundle=gmem_in_ptr
    #pragma HLS INTERFACE m_axi     port=out_img_ptr offset=slave bundle=gmem_out_ptr

    #pragma HLS INTERFACE s_axilite port=black_level
    #pragma HLS INTERFACE s_axilite port=mul_value
    #pragma HLS INTERFACE s_axilite port=height
    #pragma HLS INTERFACE s_axilite port=width
    #pragma HLS INTERFACE s_axilite port=return
    // clang-format on

    XF_CTUNAME(XF_SRC_T, XF_NPPC) bl = XF_CTUNAME(XF_SRC_T, XF_NPPC)(black_level);

    // -----------------------------------------------
    // Internal xf::Mat objects
    // -----------------------------------------------
    xf::cv::Mat<XF_SRC_T, XF_MAX_ROWS, XF_MAX_COLS, XF_NPPC> InImg(height, width);
    xf::cv::Mat<XF_SRC_T, XF_MAX_ROWS, XF_MAX_COLS, XF_NPPC> OutImg(height, width);

// -----------------------------------------------
// Actual Body
// -----------------------------------------------
// clang-format off
    #pragma HLS DATAFLOW
    // clang-format on

    // Convert input image pointer to xf::Mat
    xf::cv::Array2xfMat<IMAGE_PTR_WIDTH, XF_SRC_T, XF_MAX_ROWS, XF_MAX_COLS, XF_NPPC>(in_img_ptr, InImg);

    // Actual accelerator
    xf::cv::blackLevelCorrection<XF_SRC_T, XF_MAX_ROWS, XF_MAX_COLS, XF_NPPC, IMAGE_MUL_WIDTH, IMAGE_MUL_FL_BITS,
                                 XF_USE_DSP>(InImg, OutImg, bl, mul_value);

    // Convert output xf::Mat to image pointer
    xf::cv::xfMat2Array<IMAGE_PTR_WIDTH, XF_SRC_T, XF_MAX_ROWS, XF_MAX_COLS, XF_NPPC>(OutImg, out_img_ptr);

    return;
}
}

#endif // __XF_BLACK_LEVEL_ACCEL_CPP__
