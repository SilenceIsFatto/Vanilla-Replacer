import subprocess

import os
import time

cur_dir = "G:\Github Repos\Vanilla-Replacer" # REPLACE THIS WITH YOUR OWN PATH!

print(cur_dir)

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

clearWhitespace("G:\Github Repos\Vanilla-Replacer\Silence_VR_Template_RHS\configs\OPF_F\cfgLoadouts.hpp")

# def getDataFromClipboard():

#     data = subprocess.getoutput("powershell.exe -Command Get-Clipboard")
#     return data

# commented out due to security concerns, was originally meant to retrieve the config that gets exported by the SQF script

def writeLoadout(file_path, file_name, file_data):
    #data = getDataFromClipboard()
    os.makedirs(file_path, exist_ok=True)
    with open(f"{file_path}/{file_name}", "a+") as cfg:
        originalContent = cfg.read()
        cfg.seek(0, 0)
        cfg.write('\n')
        cfg.write(originalContent)
        # cfg.seek(0)
        # cfg.truncate(0)
        cfg.write(file_data)
        cfg.close()
        time.sleep(10)
        arrayToSubstrings(f"{file_path}/{file_name}")
        clearWhitespace(f"{file_path}/{file_name}")
    return 1