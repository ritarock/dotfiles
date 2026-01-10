## install Devbox

[Doc](https://www.jetify.com/docs/devbox/installing-devbox)

```bash
$ curl -fsSL https://get.jetify.com/devbox | bash
```

## install chezmoi

```bash
$ devbox global add chezmoi
```

## setup

```bash
$ chezmoi init ritarock
$ chezmoi apply --dry-run
$ chezmoi apply
```
