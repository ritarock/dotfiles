import os
import subprocess

def start():
    print("check git")
    check_git = ['git', '--version']
    try:
        print("installed git")
    except:
        print("install git!")
    home_path = os.path.expanduser('~')
    path = home_path + "/.vim/pack/mypackage/start/"
    if os.path.isdir(path):
        print("FINISH!")
    else:
        os.makedirs(path)
        print("FINISH!")


if __name__ == '__main__':
    start()
