# 2025-10-02T05:15:47.186129900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-trng")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../vivado-axi-trng/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="trng_test_app",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="trng_test_app")
comp.build()

comp = client.get_component(name="trng_test_app")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../platform/hw/sdt/drivers/axi_trng_v1_0/src", files=["axi_trng.c", "axi_trng.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="trng_test_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

