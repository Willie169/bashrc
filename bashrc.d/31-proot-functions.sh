#!/usr/bin/env bash

if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" == "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]] || [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
  return
fi

clean_disk() {
  rm -rf ~/.cache/*
  DEBIAN_FRONTEND=noninteractive apt autoremove -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  apt clean
  apt autoclean
  brew update
  echo y | brew upgrade
  echo y | brew autoremove
  brew cleanup
}

update_texlive() {
  /usr/local/texlive/2026/bin/aarch64-linux/tlmgr update --all --self --reinstall-forcibly-removed
}

update_latex() {
  (
    cd /usr/share/LaTeX-ToolKit || exit
    git reset --hard
    git clean -d --force
    git pull --rebase
    cd ~/texmf/tex/latex/physics-patch || exit
    git reset --hard
    git clean -d --force
    git pull --rebase
  )
}

update_config() {
  update_vim_config
  update_nvim_config
  update_lizzieyzy_config
  update_cutechess_config
  update_sylvan_config
}

update_tools() {
  (
    cd ~ || exit
    cargo install stylua
    gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' yt-dlp/yt-dlp yt-dlp
    chmod +x yt-dlp
    mv yt-dlp ~/.local/bin/
    rm -f /usr/local/bin/apktool || true
    wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
    chmod +x apktool
    mv apktool /usr/local/bin/
    rm -f /usr/local/bin/apktool_*.jar || true
    gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' iBotPeaches/Apktool 'apktool_*.jar'
    chmod +x apktool_*.jar
    mv apktool_*.jar /usr/local/bin/
    rm -r ~/jadx
    mkdir jadx
    cd jadx || exit
    gh_release -r -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' skylot/jadx 'jadx-[0-9\.]*\.zip'
    unzip jadx*.zip
    rm jadx*.zip
    chmod +x bin/jadx
    chmod +x bin/jadx-gui
    cd ~ || exit
    rm -f ~/.local/bin/rclone
    gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' gulp79/rclone-extra rclone-linux-arm64.zip
    unzip rclone-linux-arm64.zip
    rm rclone-linux-arm64.zip*
    mv rclone ~/.local/bin/
    update_config
    update_nvim_config_full
  )
}

update_pm() {
  apt update
  DEBIAN_FRONTEND=noninteractive apt upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  DEBIAN_FRONTEND=noninteractive apt autoremove -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  DEBIAN_FRONTEND=noninteractive apt autoremove -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  apt clean
  apt autoclean
  locale-gen en_US.UTF-8
  brew update
  echo y | brew upgrade
  echo y | brew autoremove
  brew cleanup
  uv self update
  uv tool upgrade --all
  npm i -g npm
  npm update -g
}

update_all() {
  update_bashrc
  source ~/.bashrc
  update_pm
  update_texlive
  update_latex
  update_tools
}

xfce() {
  unset DBUS_SESSION_BUS_ADDRESS
  unset SESSION_MANAGER
  export GALLIUM_DRIVER=zink
  export MESA_GL_VERSION_OVERRIDE=4.3
  dbus-launch --exit-with-session xfce4-session
}
