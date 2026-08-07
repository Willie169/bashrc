## bashrc

`.bashrc` of Ubuntu AMD, Ubuntu/Debian ARM proot, and Termux.

### Supported Environments

- Ubuntu derivatives AMD64: designed for Ubuntu derivatives for my [**ubuntu-setup-with-vnc-and-gpu**](https://github.com/Willie169/ubuntu-setup-with-vnc-and-gpu) repo.
- Ubuntu or Debian ARM proot-distro: designed for Ubuntu and Debian proot-distro in Termux for my [**termux-sh**](https://github.com/Willie169/termux-sh) repo.
- Termux: designed for Termux for my [**termux-sh**](https://github.com/Willie169/termux-sh) repo.

### Customization

Put your prependings in `~/.bashrc.prepend` and your overrides in `~/.bashrc.overrides`.

### Installation

Original `~/.bashrc` and `~/.bashrc.d` (if any) will be deleted. git is required.

```
rm -rf ~/.bashrc ~/.bashrc.d
git clone --depth=1 https://github.com/Willie169/bashrc ~/.bashrc.d
ln -sf "${HOME}"/.bashrc.d/bashrc.d/bashrc "${HOME}"/.bashrc
```

`source ~/.bashrc` to make it take effect in current shell.

### Update

```
source ~/.bashrc
update_bashrc
```

