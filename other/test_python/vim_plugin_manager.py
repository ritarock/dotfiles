import os
import subprocess
import json

def main():
    f = open('plugin_list.json','r')
    plugin_list = json.load(f)
    home_path = os.path.expanduser('~')
    path = home_path + '/.vim/pack/mypackage/start/'
    check_plugin = []
    now_plugin = os.listdir(path)
    add_list = []
    remove_list = []
    # print(len(now_plugin))
    if len(now_plugin) == 0:
        for plugin in plugin_list:
            add_list.append(plugin.split('/'))
            addfunc(add_list,home_path)
    else:
        for plugin in plugin_list:
            check_plugin.append(plugin.split('/'))
            # print(check_plugin)

            for now in now_plugin:
                for add in check_plugin:
                    if add[1] == now:
                        pass
                    else:
                        add_list.append(add)

    addfunc(add_list,home_path)

def addfunc(add_list,home_path):
    for plugin in add_list:
        git_url = 'https://github.com/'
        # print ('/'.join(plugin))
        repo = git_url + '/'.join(plugin) + '.git'
        path = home_path + '/.vim/pack/mypackage/start/'
        # print ('git clone' + repo + path)
        subprocess.run(['git','clone',repo,path])

if __name__ == '__main__':
    main()
