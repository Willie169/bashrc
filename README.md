# bashrc

`.bashrc` of Ubuntu AMD, Ubuntu/Debian ARM proot, and Termux.

## Supported Environments

- [**Ubuntu AMD**](ubuntu-amd): designed for my [**ubuntu-setup-with-vnc-and-gpu**](https://github.com/Willie169/ubuntu-setup-with-vnc-and-gpu) repo.
- [**Ubuntu/Debian ARM Proot**](ubuntu-debian-arm-proot): designed for proot-distro in Termux for my [**termux-sh**](https://github.com/Willie169/termux-sh) repo.
- [**Termux**](termux): designed for Termux for my [**termux-sh**](https://github.com/Willie169/termux-sh) repo.

## Manual Installation

1. Clone the `bashrc.d` folder in the folder corresponding to your environment to `~` and rename it `.bashrc.d`.
2. Move the `bashrc.sh` out to `~` and rename it to `.bashrc`.
3. Run `source ~/.bashrc`.

## Script Installation

Prerequisites:
- `wget` is required, which can be installed via:
  - Non-root user: `sudo apt update && sudo apt install wget -y`
  - Root: `apt update && apt install wget -y`
  - Termux (not inside Proot): `pkg update && pkg install wget -y`
- Original `~/.bashrc` and `~/.bashrc.d` (if any) will be deleted.

Scripts:
<ul>
<li><strong>Ubuntu AMD</strong>:
<pre><code>cd ~
rm -f .bashrc
rm -f ~/.bashrc.d
mkdir ~/.bashrc.d
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/00-env.sh -O ~/.bashrc.d/00-env.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/10-exports.sh -O ~/.bashrc.d/10-exports.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/15-color.sh -O ~/.bashrc.d/15-color.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/20-aliases.sh -O ~/.bashrc.d/20-aliases.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/21-cxx.sh -O ~/.bashrc.d/21-cxx.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/22-java.sh -O ~/.bashrc.d/22-java.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/23-vnc.sh -O ~/.bashrc.d/23-vnc.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/24-flatpak.sh -O ~/.bashrc.d/24-flatpak.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/50-functions.sh -O ~/.bashrc.d/50-functions.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/60-completion.sh -O ~/.bashrc.d/60-completion.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/bashrc.sh -O ~/.bashrc
source ~/.bashrc
</code></pre></li>
<li><strong>Ubuntu/Debian ARM Proot</strong>:
<pre><code>cd ~
rm -f .bashrc
rm -f ~/.bashrc.d
mkdir ~/.bashrc.d
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/00-env.sh -O ~/.bashrc.d/00-env.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/10-exports.sh -O ~/.bashrc.d/10-exports.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/15-color.sh -O ~/.bashrc.d/15-color.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/20-aliases.sh -O ~/.bashrc.d/20-aliases.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/21-cxx.sh -O ~/.bashrc.d/21-cxx.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/22-java.sh -O ~/.bashrc.d/22-java.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/23-vnc.sh -O ~/.bashrc.d/23-vnc.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/24-flatpak.sh -O ~/.bashrc.d/24-flatpak.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/50-functions.sh -O ~/.bashrc.d/50-functions.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/60-completion.sh -O ~/.bashrc.d/60-completion.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/bashrc.sh -O ~/.bashrc
source ~/.bashrc
</code></pre></li>
<li><strong>Termux</strong>:
<pre><code>cd ~
rm -f .bashrc
rm -f ~/.bashrc.d
mkdir ~/.bashrc.d
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/00-env.sh -O ~/.bashrc.d/00-env.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/10-exports.sh -O ~/.bashrc.d/10-exports.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/15-color.sh -O ~/.bashrc.d/15-color.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/20-aliases.sh -O ~/.bashrc.d/20-aliases.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/21-cxx.sh -O ~/.bashrc.d/21-cxx.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/22-java.sh -O ~/.bashrc.d/22-java.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/23-vnc.sh -O ~/.bashrc.d/23-vnc.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/24-flatpak.sh -O ~/.bashrc.d/24-flatpak.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/50-functions.sh -O ~/.bashrc.d/50-functions.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/60-completion.sh -O ~/.bashrc.d/60-completion.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/bashrc.sh -O ~/.bashrc
source ~/.bashrc
</code></pre></li>
</ul>
