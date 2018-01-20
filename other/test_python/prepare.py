import os
import subprocess

def start():
    print("check git")
    checkGit = ['git', '--version']
    try:
        print("installed git")
    except:
        print("install git!")
    homePath = os.path.expanduser('~')
    path = homePath + "/.vim/pack/mypackage/start/"
    if os.path.isdir(path):
        print("FINISH!")
    else:
        os.makedirs(path)
        print("FINISH!")


if __name__ == '__main__':
    start()
