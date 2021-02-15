### install Xcode
```
$ xcode-select --install
```

### install brew
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### install ansible
```
$ brew install ansible
$ ansible-galaxy collection install community.general
```

### setup
```
$ ansible-playbook -i hosts localhost.yml
```

