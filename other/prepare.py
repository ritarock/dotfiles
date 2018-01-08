import subprocess

def start():
    check_git = ['git', '--version']
    try:
        pass
    except:
        print ("install git")

    check_dir = ['ls','~/.vim/pack/mypackage/start/']
    try:
        pass
    except:
        subprocess.run(['mkdir', '-p', '~/.vim/pack/mypackage/start/'])

if __name__ == '__main__':
    start()
