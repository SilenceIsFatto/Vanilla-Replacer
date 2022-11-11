import subprocess

import os
import time

cur_dir = "G:\Github Repos\Vanilla-Replacer" # REPLACE THIS WITH YOUR OWN PATH!

def arrayToSubstrings(in_file):

    def replaceThings(find,replace):
        with open(in_file, 'r+') as file:
            filedata = file.read()
            filedata_open = filedata.replace(find, replace)
            file.seek(0)
            file.truncate(0)
            #print(filedata_open)
            file.write(filedata_open)
            file.close()

    replaceThings("'[", "")
    replaceThings("]'", "")
    replaceThings("},", "}")
    replaceThings("'", '"')

    # for i in range(len(dirnames)):
    #     #in_file_path = f"{cur_dir}/configs/cfgUnits.hpp"
    #     #arrayToSubstrings(in_file_path)
    #     for filename_sub in os.listdir(f"{cur_dir}/configs/{dirnames[i]}"):
    #         if filename_sub.endswith(".hpp"):
    #             in_file_path = f"{cur_dir}/configs/{dirnames[i]}/{filename_sub}"
    #             arrayToSubstrings(in_file_path)
    #             time.sleep(0.1)
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
    #data = getDataFromClipboard()
    os.makedirs(file_path, exist_ok=True)
    with open(f"{file_path}/{file_name}", "a+") as cfg:
        data = cfg.read()
        cfg.seek(0, 0)
        cfg.write('\n')
        cfg.write(data)
        # cfg.seek(0)
        # cfg.truncate(0)
        cfg.write(file_data)
        cfg.close()
        time.sleep(10)
        arrayToSubstrings(f"{file_path}/{file_name}")
        clearWhitespace(f"{file_path}/{file_name}")
    return 1

def writeConfig(file_path, file_name, file_data):
    with open(f"{file_path}/{file_name}", "a+") as cfg:
        data = cfg.read()
        cfg.seek(0)

        directories = os.walk(f"{file_path}")
        dirpath, dirnames, filenames = next(directories)

        for i in range(len(dirnames)):
            #print(dirnames)
            #print(os.listdir(f"{file_path}/{dirnames[i]}"))
            for filename_sub in os.listdir(f"{file_path}/{dirnames[i]}"):
                print(filename_sub)
                if filename_sub.endswith(".hpp"):
                    string = f"#include {file_path}"
                    print(string)

writeConfig("G:\Github Repos\Vanilla-Replacer\Silence_VR_Templates", "config.cpp", "")