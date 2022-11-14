import subprocess

import os
import time

#cur_dir = "G:\Github Repos\Vanilla-Replacer" # REPLACE THIS WITH YOUR OWN PATH!

def arrayToSubstrings(in_file):

    def replaceThings(find,replace):
        with open(in_file, 'r+') as file:
            filedata = file.read()
            filedata_open = filedata.replace(find, replace)
            file.seek(0)
            file.truncate(0)
            file.write(filedata_open)
            file.close()

    replaceThings("'[", "")
    replaceThings("]'", "")
    replaceThings("},", "}")
    replaceThings("'", '"')

    return 1

def clearWhitespace(in_file):
    with open(in_file, 'r+') as file:
        lines = file.readlines()
        file.seek(0)
        file.truncate(0)
        filedata = file.read()
        for line in lines:
            if not line.isspace():
                file.write(line)
        file.close()

def writeLoadout(file_path, file_name, file_data):
    os.makedirs(file_path, exist_ok=True)
    with open(f"{file_path}/{file_name}", "a+") as cfg:
        data = cfg.read()
        cfg.seek(0, 0)
        cfg.write('\n')
        cfg.write(data)
        cfg.write(file_data)
        cfg.close()
        time.sleep(10)
        arrayToSubstrings(f"{file_path}/{file_name}")
        clearWhitespace(f"{file_path}/{file_name}")

    return 1

def writeConfig(file_path, file_name, file_data):

    def writeCfgPatches(file_data):
        with open(f"{file_path}/{file_name}", "w+") as config:
            cfgData = config.read()
            config.seek(0)
            config.truncate()
            config.write(file_data)
            config.close()

    def replaceConfigLines(stringToAppend):
        lineNum = 20 # we can assume that the line will always be 20, as cfgPatches is always the same
        with open(f"{file_path}/{file_name}", "r+") as config:
            cfgLines = config.readlines()
            cfgLines[:lineNum] = stringToAppend
            config.writelines(cfgLines)
            config.close()


    # opening folder
    classArr = ["\n\n\nclass CfgLoadoutReplacers\n{\n\n"]
    with open(f"{file_path}/{file_name}", "a+") as cfg:
        data = cfg.read()
        cfg.seek(0)

        # loop through each dir and get all dirpaths, names and filenames
        directories = os.walk(f"{file_path}")
        dirpath, dirnames, filenames = next(directories)

        # loop through each dir
        for i in range(len(dirnames)):
            # get each subfolder
            for subFolders in os.listdir(f"{file_path}/{dirnames[i]}"):
                print(subFolders)
                # get each file in them subfolders
                for k in os.listdir(f"{file_path}/{dirnames[i]}/{subFolders}"):
                    if k.endswith(".hpp"):
                        # filepath = f"#include \"configs\{subFolders}\{k}\""
                        filepath = f"#include \"configs\\{subFolders}\\{k}\""

                        classArr.append(filepath)

        # write cfgPatches to file
        #config.write(file_data)
        #config.close()

    classString = f"{classArr[0]}"

    # get every elemt after the first element
    for k in classArr[1:]:
        # join each element: k  onto the string
        classString += f"\t{k}\n"

    classString += "}"

    print(classString)

    writeCfgPatches(file_data)
    replaceConfigLines(classString)
    clearWhitespace(f"{file_path}/{file_name}")