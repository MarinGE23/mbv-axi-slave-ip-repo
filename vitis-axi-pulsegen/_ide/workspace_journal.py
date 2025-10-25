# 2025-10-25T12:23:51.046853400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-pulsegen")

comp = client.get_component(name="platform")
comp.build()

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

