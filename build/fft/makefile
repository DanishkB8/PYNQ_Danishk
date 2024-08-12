

overlay_name := fft



block_design:
	vivado -mode batch -source $(overlay_name).tcl -notrace

bitstream:
	vivado -mode batch -source build_bitstream.tcl -notrace

check_timing:
	vivado -mode batch -source check_$(overlay_name).tcl -notrace

clean:
	rm -rf $(overlay_name) *.jou *.log NA .Xil

distclean: clean
	rm -rf  $(overlay_name).bit $(overlay_name).hwh
