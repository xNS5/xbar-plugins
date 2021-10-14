#!/usr/bin/env python3

from subprocess import Popen, PIPE

input_command="/usr/local/Cellar/switchaudio-osx/1.1.0/SwitchAudioSource -a -t input"
output_command="/usr/local/Cellar/switchaudio-osx/1.1.0/SwitchAudioSource -a -t output"
current_input="/usr/local/Cellar/switchaudio-osx/1.1.0/SwitchAudioSource -c -t input"
current_output="/usr/local/Cellar/switchaudio-osx/1.1.0/SwitchAudioSource -c -t output"

# shellcheck disable=SC1036
# shellcheck disable=SC2034
# shellcheck disable=SC1088
print("| image=iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAsQAAALEBxi1JjQAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAGsSURBVEiJvdY9a1RBFAbgZ5dFEVYjaqWFVuldkOAfCFpZGEhtF93CH6C1NmqpnaXF+oGVnZ0WfhQJCEYE0UZJkUaQuKubtbjn4ux4sxuTqy8MnM9558xczrnQwQo2MappbWIZnUYILdzGT/WghUvlfkN0E+detLOEQ2gkeiNsKdqRW6KLYRPNIClxE71Eb+ITFhLbAj6Gr0QPNxJ9iGYaUOJArJSgjZnENoP94TuBJziN83gsuYGc4CyO4wjOYU/FAXJsYE1x3wN8wY/S2UoCD+Mh9oX+AKfwZgrBGi7gGT7gYupMK1gPkh5e4KDiC9sV8ivaQF9R7rfdbl5FsB20FW9E8cCNrUN3RvAc10N+j8t1EyziVshncHdScGuScwus4m3IT01pLzup4K8wjWAR70K+ZryF1EKwgvshv1a0gVoJVnE15Ee4VwfBIFaJkaK39BNbP2yjCXljGywl+jHMZjFzfvcoIc9lMbM4muhLGFV9pl/xPbN9zk43CFuKdeNVovqKrijGZ4pXmE/0ebzMYu5E7h/Y7sjMUTUy0/nRxfC/DP1OkPyL35aTvwBTd4A0X7TPbgAAAABJRU5ErkJggg==")

print("---")

print("Output Device:")

to_print = None

with Popen(output_command.split(" "), stdout=PIPE) as output_devices, Popen(current_output.split(" "), stdout=PIPE) as current_output_device:
      output, error = output_devices.communicate()
      output_devices = output.decode("utf-8").split('\n')
      output, error = current_output_device.communicate()
      current_output_device = output.decode("utf-8").split('\n')[0]
      for i in output_devices:
        if(len(i) > 0):
          if current_output_device == i:
            to_print = "✔️ {}".format(i)
          else:
            to_print = "{}".format(i)
        print(to_print + " | refresh=true | shell=/usr/local/Cellar/switchaudio-osx/1.1.0/SwitchAudioSource param1=-t param2=output param3=-s param4=\"{}\" | terminal=true ".format(i))

#print("---")
#
#print("Input Device:")
#
#with Popen(input_command.split(" "), stdout=PIPE, shell=False) as input_devices, Popen(current_input.split(" "), stdout=PIPE, shell=False) as current_input_device:
#      output, error = input_devices.communicate()
#      input_devices = output.decode("utf-8").split('\n')
#      output, error = current_input_device.communicate()
#      current_input_device = output.decode("utf-8").split('\n')[0]
#      for i in input_devices:
#        if(len(i) > 0):
#          if current_input_device == i:
#            print("{} {} | refresh=true".format(checkmark, i))
#          else:
#            print("{} | refresh=true".format(i))






