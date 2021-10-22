#!/usr/bin/env /Users/michaelkennedy/.pyenv/shims/python3



import os
import darkdetect
from pathlib import Path
import base64


if darkdetect.isLight():
    with open("res/vm.png","rb") as black:
        print(" | image={}".format(base64.b64encode(black.read()).decode("utf-8")))
else:
    with open("res/vm-white.png", "rb") as white:
        print(" | image={}".format(base64.b64encode(white.read()).decode("utf-8")))


print("---")


for file in os.listdir("{}/Virtual Machines.localized".format(Path.home())):
    if file[0] != ".":
        print(file[0:len(file)-9])
        print('-- GUI | terminal=false bash="/Applications/VMware Fusion.app/Contents/Library/vmrun" param1=start param2="/Users/michaelkennedy/Virtual Machines.localized/{}"'.format(file))
        print('-- Headless | terminal=false bash="/Applications/VMware Fusion.app/Contents/Public/vmrun" param1=start param2="/Users/michaelkennedy/Virtual Machines.localized/{}" param3=nogui'.format(file))

