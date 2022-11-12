import os
import subprocess

def packAllPbo(addonbuilder,in_path,out_path):

    directories = os.walk(f"{in_path}")
    dirpath, dirnames, filenames = next(directories)

    #for i in range(len(dirnames)):
    for folder in os.listdir(in_path):
        isFile = os.path.isfile(f"{folder}")
        notAllowed = ["@", ".git", ".vscode"]
        #reiterate through the notAllowed extensions or keywords, stops things like mod folders being packed
        for folderName in notAllowed:
            if (folderName in str(folder)):
                isFile = True

        if (isFile == False):
            subprocess.call([addonbuilder, f"{in_path}/{folder}", out_path, "-packonly", "-binarizeNoLogs"]) # use the exclude.txt to delete .bin file (f"-exclude={in_path}/exclude.txt")
        else:
            print(f"{folder} was aborted")

packAllPbo("F:\SteamLibrary\steamapps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe","G:\Github Repos\Vanilla-Replacer", "G:\Github Repos\Vanilla-Replacer\@Vanilla_Replacer\Addons")