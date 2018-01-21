import os
import subprocess
import json

def plug():
    f = open('plugin_list.json','r')
    jsonData = json.load(f)
    addPlugin(jsonData)

def addPlugin(pluginList):
    for plugin in pluginList:
        gitUrl = "https://github.com/"
        repo = gitUrl + plugin +'.git'
        homePath = os.path.expanduser('~')
        path = homePath + "/.vim/pack/mypackage/start/" + plugin.split("/")[1]
        subprocess.run(['git','clone',repo,path])

if __name__ == '__main__':
    plug()
