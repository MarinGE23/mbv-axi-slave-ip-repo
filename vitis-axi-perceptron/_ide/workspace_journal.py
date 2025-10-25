# 2025-10-25T12:23:34.122409900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-perceptron")

vitis.dispose()

