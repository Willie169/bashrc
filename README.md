## bashrc

`.bashrc` of Ubuntu AMD, Ubuntu/Debian ARM proot, and Termux.

### Supported Environments

- Ubuntu AMD64: designed for Ubuntu derivatives for my [**ubuntu-setup-with-vnc-and-gpu**](https://github.com/Willie169/ubuntu-setup-with-vnc-and-gpu) repo.
- Ubuntu/Debian ARM Proot: designed for Ubuntu and Debian proot-distro in Termux for my [**termux-sh**](https://github.com/Willie169/termux-sh) repo.
- Termux: designed for Termux for my [**termux-sh**](https://github.com/Willie169/termux-sh) repo.

### Overrides

Put your overrides in `~/.bashrc.overrides`.

### Installation

Original `~/.bashrc` and `~/.bashrc.d` (if any) will be deleted. wget is required.

- Ubuntu AMD64:
  ```
  wget -qO- https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/install.sh | sh
  ```
- Ubuntu or Debian ARM64 Proot:
  ```
  wget -qO- https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/install.sh | sh
  ```
- Termux:
  ```
  wget -qO- https://raw.githubusercontent.com/Willie169/bashrc/main/termux/install.sh | sh
  ```

`source ~/.bashrc` to make it take effect in current shell.

### Update

```
source ~/.bashrc
update_bashrc
```

