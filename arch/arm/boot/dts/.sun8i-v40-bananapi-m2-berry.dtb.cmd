cmd_arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb := mkdir -p arch/arm/boot/dts/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.dts.tmp arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.d.dtc.tmp arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.dts.tmp ; cat arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.d.pre.tmp arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.d.dtc.tmp > arch/arm/boot/dts/.sun8i-v40-bananapi-m2-berry.dtb.d

source_arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb := arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts

deps_arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb := \
  arch/arm/boot/dts/sun8i-r40.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/sun8i-de2.h \
  scripts/dtc/include-prefixes/dt-bindings/clock/sun8i-r40-ccu.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/sun8i-r40-ccu.h \
  scripts/dtc/include-prefixes/dt-bindings/reset/sun8i-de2.h \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/axp22x.dtsi \

arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb: $(deps_arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb)

$(deps_arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dtb):
