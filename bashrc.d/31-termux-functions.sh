#!/usr/bin/env bash

if [[ "$HOME" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]]; then
  return
fi

phice() {
  (
    local port="${1:-5001}"
    cd ~/phice && uv run gunicorn -b 127.0.0.1:"$port" -w 4 "app:app"
  )
}

cyberchef() {
  (
    local port="${1:-8081}"
    sed -Ei "s/(listen[ \t]+)[0-9]*;/\1${port};/" "$PREFIX"/var/lib/proot-distro/containers/cyberchef/rootfs/etc/nginx/conf.d/default.conf
    proot-distro run cyberchef
    sed -Ei "s/(listen[ \t]+)[0-9]*;/\18081;/" "$PREFIX"/var/lib/proot-distro/containers/cyberchef/rootfs/etc/nginx/conf.d/default.conf
  )
}

stirlingpdf() {
  (
    local port="${1:-9000}"
    echo -e "server:\n  port: $port" | tee "$PREFIX"/var/lib/proot-distro/containers/stirling-pdf/rootfs/configs/custom_settings.yml >/dev/null
    proot-distro run stirling-pdf -e SECURITY_ENABLELOGIN=false -e LANGS=en_GB
    echo -e "server:\n  port: 9000" | tee "$PREFIX"/var/lib/proot-distro/containers/stirling-pdf/rootfs/configs/custom_settings.yml >/dev/null
  )
}

clean_disk() {
  rm -rf ~/.cache/*
  DEBIAN_FRONTEND=noninteractive apt autoremove -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  apt clean
  apt autoclean
  proot-distro clear-cache || true
}

update_config() {
  update_vim_config
  update_nvim_config
}

update_tools() {
  (
    cd ~ || exit
    ARCH=$(uname -m)
    pip3 install pip-autoremove plotly pydub requests selenium==4.9.1 setuptools==81.0.0 sympy
    if [ -f ~/.local/bin/yt-dlp ]; then
      rm -f /.local/bin/yt-dlp
      gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' yt-dlp/yt-dlp yt-dlp
      chmod +x yt-dlp
      mv yt-dlp ~/.local/bin/
    fi
    if [ -f ~/.local/bin/rclone ]; then
      rm -f ~/.local/bin/rclone
      gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' gulp79/rclone-extra rclone-android-all.zip
      unzip rclone-android-all.zip
      rm rclone-android-all.zip*
      if [[ "$ARCH" == "x86_64" || "$ARCH" == "amd64" ]]; then
        rm rclone-android-386
        mv rclone-android-amd64 rclone
        rm rclone-android-arm
        rm rclone-android-arm64
      elif [[ "$ARCH" =~ ^i[3-6]86$ ]]; then
        mv rclone-android-386 rclone
        rm rclone-android-amd64
        rm rclone-android-arm
        rm rclone-android-arm64
      elif [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
        rm rclone-android-386
        rm rclone-android-amd64
        rm rclone-android-arm
        mv rclone-android-arm64 rclone
      elif [[ "$ARCH" == arm* ]]; then
        rm rclone-android-386
        rm rclone-android-amd64
        mv rclone-android-arm rclone
        rm rclone-android-arm64
      else
        rm rclone-android-386
        rm rclone-android-amd64
        rm rclone-android-arm
        mv rm rclone-android-arm64 rclone
      fi
      mv rclone ~/.local/bin/
    fi
    update_config
    update_nvim_config_full
  )
}

update_pm() {
  pkg update
  DEBIAN_FRONTEND=noninteractive apt upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  DEBIAN_FRONTEND=noninteractive apt autoremove -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" -o Dpkg::Options::="--force-overwrite"
  apt clean
  apt autoclean
  uv self update
  uv tool upgrade --all
  npm update -g
}

update_all() {
  update_bashrc
  source ~/.bashrc
  update_pm
  update_tools
}

pdc() {
  cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/$1/rootfs/root" || return
}

pdl() {
  cmd=(proot-distro login "$1" --redirect-ports --isolated --get-proot-cmd)
  bind=(
    "/apex"
    "/data/app"
    "/data/dalvik-cache"
    "/data/misc/apexdata/com.android.art/dalvik-cache"
    "/linkerconfig/com.android.art/ld.config.txt"
    "/linkerconfig/ld.config.txt"
    "/odm"
    "/plat_property_contexts"
    "/product"
    "/property_contexts"
    "/system"
    "/system_ext"
    "/vendor"
    "/data/data/com.termux/files/usr/bin"
    "/data/data/com.termux/files/usr/libexec"
    "/data/data/com.termux/files/usr/lib"
    "/data/data/com.termux/files/home/shared	/root/shared"
  )
  for item in "${bind[@]}"; do
    # shellcheck disable=2086
    set -- $item
    first=$1
    second=$2
    [[ -e "$first" ]] || continue
    if [[ $# -ge 2 ]]; then
      cmd+=(--bind "$first:$second")
    else
      cmd+=(--bind "$first")
    fi
  done
  bash <("${cmd[@]}")
}

pdr() {
  cmd=(proot-distro run "$1" --redirect-ports --isolated --get-proot-cmd)
  shift
  args=("$@")
  bind=(
    "/apex"
    "/data/app"
    "/data/dalvik-cache"
    "/data/misc/apexdata/com.android.art/dalvik-cache"
    "/linkerconfig/com.android.art/ld.config.txt"
    "/linkerconfig/ld.config.txt"
    "/odm"
    "/plat_property_contexts"
    "/product"
    "/property_contexts"
    "/system"
    "/system_ext"
    "/vendor"
    "/data/data/com.termux/files/usr/bin"
    "/data/data/com.termux/files/usr/libexec"
    "/data/data/com.termux/files/usr/lib"
    "/data/data/com.termux/files/home/shared	/root/shared"
  )
  for item in "${bind[@]}"; do
    # shellcheck disable=2086
    set -- $item
    first=$1
    second=$2
    [[ -e "$first" ]] || continue
    if [[ $# -ge 2 ]]; then
      cmd+=(--bind "$first:$second")
    else
      cmd+=(--bind "$first")
    fi
  done
  cmd+=(-- "${args[@]}")
  bash <("${cmd[@]}")
}

tx11() {
  termux-x11 "$@"
}

xfce() {
  dbus-launch --exit-with-session xfce4-session >/dev/null 2>&1
}

xxfce() {
  if [ $# -ne 0 ]; then
    termux-x11 "$1" -xstartup "dbus-launch --exit-with-session xfce4-session"
  else
    termux-x11 :0 -xstartup "dbus-launch --exit-with-session xfce4-session"
  fi
}
