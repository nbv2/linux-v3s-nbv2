cmd_arch/arm/boot/dts/sun4i-a10-mk802ii.dtb := mkdir -p arch/arm/boot/dts/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.dts.tmp arch/arm/boot/dts/sun4i-a10-mk802ii.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/sun4i-a10-mk802ii.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.d.dtc.tmp arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.dts.tmp ; cat arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.d.pre.tmp arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.d.dtc.tmp > arch/arm/boot/dts/.sun4i-a10-mk802ii.dtb.d

source_arch/arm/boot/dts/sun4i-a10-mk802ii.dtb := arch/arm/boot/dts/sun4i-a10-mk802ii.dts

deps_arch/arm/boot/dts/sun4i-a10-mk802ii.dtb := \
  arch/arm/boot/dts/sun4i-a10.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/thermal/thermal.h \
  scripts/dtc/include-prefixes/dt-bindings/dma/sun4i-a10.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/sun4i-a10-ccu.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/sun4i-a10-ccu.h \
  arch/arm/boot/dts/sunxi-common-regulators.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \

arch/arm/boot/dts/sun4i-a10-mk802ii.dtb: $(deps_arch/arm/boot/dts/sun4i-a10-mk802ii.dtb)

$(deps_arch/arm/boot/dts/sun4i-a10-mk802ii.dtb):
