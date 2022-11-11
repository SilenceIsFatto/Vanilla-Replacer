import tkinter

def getDataFromClipboard():
    data = tkinter().clipboard_get()

    #print(data) debugging?

    return data