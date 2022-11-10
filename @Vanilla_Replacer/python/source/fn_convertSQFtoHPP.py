import os
import time

#cur_dir = os.getcwd()

cur_dir = "G:\Github Repos\Vanilla-Replacer\Silence_VR_Replace" # REPLACE THIS WITH YOUR OWN PATH!

print(cur_dir)

directories = os.walk(f"{cur_dir}/configs")
dirpath, dirnames, filenames = next(directories)

def arrayToSubstrings(in_file):

    def replaceThings(find,replace):
        with open(in_file_path, 'r+') as file:
            filedata = file.read()
            filedata_open = filedata.replace(find, replace)
            file.seek(0)
            file.truncate(0)
            #print(filedata_open)
            file.write(filedata_open)
            file.close()

            return ["Replaced stuff", find, replace]

    replaceThings("'[", "")
    replaceThings("]'", "")
    replaceThings("},", "}")
    replaceThings("'", '"')

for i in range(len(dirnames)):
    in_file_path = f"{cur_dir}/configs/cfgUnits.hpp"
    arrayToSubstrings(in_file_path)
    for filename_sub in os.listdir(f"{cur_dir}/configs/{dirnames[i]}"):
        if filename_sub.endswith(".hpp"):
            in_file_path = f"{cur_dir}/configs/{dirnames[i]}/{filename_sub}"
            arrayToSubstrings(in_file_path)
            time.sleep(0.1)