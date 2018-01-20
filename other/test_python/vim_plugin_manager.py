import os
import subprocess
import json

def plug():
    f = open('plugin_list.json','r')
    jsonData = json.load(f)
    #print(jsonData)
    addPlugin(jsonData)

def addPlugin(pluginList):
    for plugin in pluginList:
        gitUrl = "https://github.com/"
        #print("git clone " + gitUrl + plugin + ".git" + " ~/.vim/pack/mypackage/start/")
        repo = gitUrl + plugin +'.git'
        homePath = os.path.expanduser('~')
        path = " " + homePath + "/.vim/pack/mypackage/start/"
        # print ('git clone' + repo + path)

        subprocess.run(['git','clone',repo,path])

if __name__ == '__main__':
    plug()
