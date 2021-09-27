#!/usr/bin/env python

import json

#  <xbar.title>School Links</xbar.title>
#  <xbar.version>v1.0</xbar.version>
#  <xbar.author>Michael Kennedy</xbar.author>
#  <xbar.author.github>xNS5</xbar.author.github>
#  <xbar.desc>This plugin creates a menu for each class, and adds relevant
#   links as sub-menu items (e.g. zoom link, class website, etc) </xbar.desc>
# <xbar.dependencies>python</xbar.dependencies>

print("| image=iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAsQAAALEBxi1JjQAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAEOSURBVEiJ7da7LkRRFMbx3xnJqKahEzFPQCtBouYlNOINPAJPQcVLuEWl4BFGQUzrWh6JjMKezLHPdmTGISK+ZCU7/7X2t4p9ZaA2jpGjN2LkOMJM37RRaLCLE7SQjRgtnGJHQjmaqcSQGg9eJfVqMC95Naqq6tCPNris0feqRq9foG2Dw9UJrJOoW0U3xEpgG3iK5pZYjonILLVlu1jAEm4Ce8BsVPeOZcEsSzSoYv3xGa5xgX3cxWzYBkVlmMQa5jGNxQSTB1hlFrM4P4f7j9iW8iLfGtyQqYUvsh4esV7B/ohSe79Wr//r+tMGz77hyRwrJJYxhXO8jGjexKa3U74XJ9s49PVvy4HCt+UV8tptbiiF4tEAAAAASUVORK5CYII=")

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
      if(len(website) > 0):
          print("-- Class Website | href={}".format(website))
      if(len(canvas) > 0):
          print("-- Canvas | href={}".format(c['canvas']))
      if(len(zoom) > 0):
          print("-- Zoom | href={}".format(c['zoom']))






