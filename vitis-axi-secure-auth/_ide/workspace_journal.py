# 2025-11-16T15:45:34.959029300
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-secure-auth")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../vivado-axi-secure-auth/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="secure_auth_app",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="secure_auth_app")
comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="secure_auth_app")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../platform/export/platform/hw/sdt/drivers/axi_trng_v1_0/src", files=["axi_trng.c", "axi_trng.h"], dest_dir_in_cmp = "src")

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../platform/export/platform/hw/sdt/drivers/axi_7seg_v1_0/src", files=["axi_7seg.c", "axi_7seg.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="secure_auth_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

