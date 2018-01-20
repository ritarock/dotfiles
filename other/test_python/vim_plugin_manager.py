import subprocess
import os

def plug():
    pluginList = [
    'tomasr/molokai',
    'Townk/vim-autoclose'
    ]
    print(pluginList)
    addPlugin(pluginList)

def addPlugin(pluginList):
    for plugin in pluginList:
        # print(plugin)
        gitUrl = "https://github.com/"
        # print("git clone " + gitUrl + plugin + ".git" + " ~/.vim/pack/mypackage/start/")
        repo = gitUrl + plugin +'.git'
        subprocess.run(['git', 'clone', repo, ' ~/.vim/pack/mypackage/start/'],shell=True)


if __name__ == '__main__':
    plug()
