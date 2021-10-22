#!/usr/bin/env /Users/michaelkennedy/.pyenv/shims/python3

import base64
import json
import darkdetect

#  <xbar.title>School Links</xbar.title>
#  <xbar.version>v1.0</xbar.version>
#  <xbar.author>Michael Kennedy</xbar.author>
#  <xbar.author.github>xNS5</xbar.author.github>
#  <xbar.desc>This plugin creates a menu for each class, and adds relevant
#   links as sub-menu items (e.g. zoom link, class website, etc) </xbar.desc>
# <xbar.dependencies>python</xbar.dependencies>

if darkdetect.isLight():
    with open("res/class-open-file.png", "rb") as black:
         print("| image={}".format(base64.b64encode(black.read()).decode("utf-8")))
else:
     with open("res/class-open-file-white.png", "rb") as white:
         print("| image={}".format(base64.b64encode(white.read()).decode("utf-8")))


print("---")

# shellcheck disable=SC1036
with open('res/classes.json') as file:
    data = json.loads(file.read())
    classes = data['classes']
    for c in classes:
        name = c['name']
        number = c['number']
        website = c['website']
        canvas = c['canvas']
        zoom = c['zoom']
        print("{} (CSCI {})".format(name, number))
        if len(website) > 0:
            print("-- Class Website | href={}".format(website))
        if len(canvas) > 0:
            print("-- Canvas | href={}".format(c['canvas']))
        if len(zoom) > 0:
            print("-- Zoom | terminal=false bash=/usr/bin/open param1=-a param2=zoom.us param3=\'{}\'".format(c['zoom']))
