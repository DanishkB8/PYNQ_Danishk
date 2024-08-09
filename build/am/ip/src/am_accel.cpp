#include "ap_axi_sdata.h"
#include "hls_stream.h"

void am_accel(hls::stream<ap_axis<32,2,5,6>>& a,
              hls::stream<ap_axis<32,2,5,6>>& b,
              hls::stream<ap_axis<32,2,5,6>>& out)
{
#pragma HLS INTERFACE axis port=a
#pragma HLS INTERFACE axis port=b
#pragma HLS INTERFACE axis port=out
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS PIPELINE

    ap_axis<32,2,5,6> tmp1, tmp2, tmp3;

    while (1) {
        a.read(tmp1);
        b.read(tmp2);

        tmp3.data = tmp1.data * tmp2.data;
        tmp3.keep = tmp1.keep & tmp2.keep;  // Propagate the keep signal
        tmp3.strb = tmp1.strb & tmp2.strb;  // Propagate the strobe signal
        tmp3.user = tmp1.user;              // Propagate user-defined data
        tmp3.id = tmp1.id;                  // Propagate ID
        tmp3.dest = tmp1.dest;
        out.write(tmp3);

        if (tmp1.last) {
            break;
        }
    }
}

