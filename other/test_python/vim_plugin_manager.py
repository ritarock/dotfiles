import os
import subprocess
import json
import shutil

def main():
    f = open('plugin_list.json','r')
    plugin_list = json.load(f)
    home_path = os.path.expanduser('~')
    path = home_path + '/.vim/pack/mypackage/start/'
    check_plugin = []
    now_plugin = os.listdir(path)
    add_list = []
    remove_list = []

    # 導入済みのプラグインがない
    if len(now_plugin) == 0:
        for plugin in plugin_list:
            add_list.append(plugin.split('/'))
    else:
        # plugin_list.josにあるプラグインを導入
        for add in plugin_list:
            add_list.append(add.split('/')[1])
            add_tmp = set(add_list)-set(now_plugin)
            add_list = list(add_tmp)
        # plugin_list.josにないプラグインを削除
        for plug in plugin_list:
            check_plugin.append(plug.split('/')[1])
            rm_tmp = set(now_plugin) - set(check_plugin)
            remove_list = list(rm_tmp)

    addfunc(add_list,home_path)
    removefunc(remove_list,home_path)

def addfunc(add_list,home_path):
    for plugin in add_list:
        git_url = 'https://github.com/'
        repo = git_url + '/'.join(plugin) + '.git'
        path = home_path + '/.vim/pack/mypackage/start/' + plugin[1]
        subprocess.run(['git','clone',repo,path])

def removefunc(remove_list,home_path):
    # print(remove_list)
    for plug in remove_list:
        path = home_path + '/.vim/pack/mypackage/start/' + plug
        print(path)
        shutil.rmtree(path)

if __name__ == '__main__':
    main()
