### install Xcode
```
$ xcode-select --install
```

### install brew
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### install ansible
```
$ brew install ansible
```

### setup
```
$ ansible-playbook setup.yml [[--extra-vars="not_development=true"]] --check
$ ansible-playbook setup.yml [[--extra-vars="not_development=true"]]
```
