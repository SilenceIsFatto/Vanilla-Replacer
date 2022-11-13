import os
import subprocess
import time
import sys
from  PySide6 import QtCore, QtWidgets, QtGui
# from PySide6.QtCore import QtWidgets

class FileWidget(QtWidgets.QWidget):
    def __init_(self):
        super().__init__()

    def openFiles(self):
        self.dir_ = QtWidgets.QFileDialog.getExistingDirectory(None, 'Select project folder:', 'F:\\', QtWidgets.QFileDialog.ShowDirsOnly)
        
        paths = listFiles(self.dir_)

        return paths

def listFiles(in_path):

    directories = os.walk(f"{in_path}")
    dirpath, dirnames, filenames = next(directories)
    paths = []


    #for i in range(len(dirnames)):
    for folder in os.listdir(in_path):
        isFile = os.path.isfile(f"{folder}")
        notAllowed = ["@", ".git", ".vscode", "exclude.txt"]
        for folderName in notAllowed:
            if (folderName in str(folder)):
                isFile = True
            
        if (isFile == False):
            paths.append(f"{in_path}/{folder}")
            
    return paths
    
def load():

    app = QtWidgets.QApplication()
    widget = FileWidget()
    folders = widget.openFiles()

    return folders

print(load())