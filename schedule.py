#!/usr/bin/env /Users/michaelkennedy/.pyenv/shims/python3

import base64
import darkdetect
import subprocess
import json

if darkdetect.isLight():
     with open("res/schedule-icon.png", "rb") as black:
         print("| image={}".format(base64.b64encode(black.read()).decode("utf-8")))
else:
     with open("res/schedule-icon-white.png", "rb") as white:
         print("| image={}".format(base64.b64encode(white.read()).decode("utf-8")))



print("---")


# curr_window = json.loads(subprocess.run(["/usr/local/bin/yabai", "-m", "query", "--displays", "--display"], stdout=subprocess.PIPE).stdout.decode("utf-8"))
# w = curr_window['frame']['w']
# h = curr_window['frame']['h']
#
# if w <= 1680.0 and h <= 1050.0:
#     with open("res/schedule-1680x1050.png", "rb") as image_file:
#         print("| image={}".format(base64.b64encode(image_file.read()).decode("utf-8")))
# elif w <= 1920.0 and h <= 1080.0:
#     with open("res/schedule-1920x1080.png", "rb") as image_file:
#         print("| image={}".format(base64.b64encode(image_file.read()).decode("utf-8")))
# else:
#     with open("res/schedule.png", "rb") as image_file:
#         print("| image={}".format(base64.b64encode(image_file.read()).decode("utf-8")))

with open("res/schedule-1920x1080.png", "rb") as image_file:
    print("| image={}".format(base64.b64encode(image_file.read()).decode("utf-8")))
