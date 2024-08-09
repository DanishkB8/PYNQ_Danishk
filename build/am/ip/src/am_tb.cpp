#include <iostream>
#include "ap_axi_sdata.h"
#include "hls_stream.h"

using namespace std;

void am_accel(hls::stream<ap_axis<32,2,5,6>>& a,
              hls::stream<ap_axis<32,2,5,6>>& b,
              hls::stream<ap_axis<32,2,5,6>>& out);

int main()
{
    int samp = 10;
    hls::stream<ap_axis<32,2,5,6>> A, B, C;
    ap_axis<32,2,5,6> tmp, tmp2, tmp3;

    for (int i = 0; i < samp; ++i) {
        tmp.data = i;
        tmp2.data = i + 5;

        tmp.keep = 0xF;  // All bytes valid (0xF for 32 bits)
        tmp.strb = 0xF;  // All bytes valid
        tmp.user = 0x01; // Example user data
        tmp.id = 0x01;   // Example ID
        tmp.dest = 0x01; // Example destination

        if (i == samp - 1) {
            tmp.last = 1;
        } else {
            tmp.last = 0;
        }

        A.write(tmp);
        B.write(tmp2);
    }

    am_accel(A, B, C);

    while (!C.empty()) {
        C.read(tmp3);
        cout << tmp3.data;

    }

    return 0;
}
