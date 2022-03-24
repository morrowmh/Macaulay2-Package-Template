#!/usr/bin/env python3

pkg_name = "M2Template" # change this to the name of your package

with open("pkg_src/" + pkg_name + ".m2", "r") as file:
    lines = file.readlines()

# process load commands
reiterate = True
while reiterate:
    reiterate = False

    i = 0
    while True:
        if lines[i].startswith("load "):
            with open("pkg_src/" + lines[i].split("\"")[1]) as module_file:
                module_lines = module_file.readlines()
            
            length = len(module_lines)
            
            # insert lines from module
            for j in range(length):
                lines.insert(i + j, module_lines[j])
                if module_lines[j].startswith("load "): reiterate = True
            
            i = i + length # jump over inserted lines
            lines[i] = "\n" # remove load command
        else: i = i + 1

        if i >= len(lines): break

# output final package
with open(pkg_name + ".m2", "w") as output:
    output.writelines(lines)