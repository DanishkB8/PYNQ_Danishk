

IP := am

all: hls
	@echo "IP built successfully."

hls:
	vitis_hls -f script.tcl
	sed -i 's/<xilinx:family xilinx:lifeCycle="Pre-Production">zynq<\/xilinx:family>/<xilinx:family xilinx:lifeCycle="Pre-Production">zynq<\/xilinx:family><xilinx:family xilinx:lifeCycle="Pre-Production">zynquplus<\/xilinx:family><xilinx:family xilinx:lifeCycle="Pre-Production">zynquplusRFSOC<\/xilinx:family>/g' am_ip/solution1/impl/ip/component.xml


clean:
	rm -rf $(IP) *.log

