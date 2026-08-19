#!/usr/bin/env bash

if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" != "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]] || [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
  return
fi

# flatpak
alias handbrake='flatpak run fr.handbrake.ghb'
alias handbrake-cli='flatpak run --command=HandBrakeCLI fr.handbrake.ghb'
alias enteauth='flatpak run io.ente.auth'
alias newsflash='flatpak run io.gitlab.news_flash.NewsFlash'
alias jdsp='flatpak run me.timschneeberger.jdsp4linux'
alias freecad='flatpak run org.freecad.FreeCAD'
alias freecadcmd='flatpak run --command=FreeCADCmd org.freecad.FreeCAD'
alias gimp='flatpak run org.gimp.GIMP'
alias kdenlive='flatpak run org.kde.kdenlive'
alias localsend='flatpak run org.localsend.localsend_app'
alias musescore='flatpak run org.musescore.MuseScore'
alias vlc='flatpak run org.videolan.VLC'
alias pied='flatpak run com.mikeasoft.pied'
if command -v nvidia-smi >/dev/null 2>&1; then
  alias bottles='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only flatpak run com.usebottles.bottles'
  alias bottles-cli='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only flatpak run --command=bottles-cli com.usebottles.bottles'
  alias steam='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only flatpak run com.valvesoftware.Steam'
  alias luanti='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only flatpak run org.luanti.luanti'
else
  alias bottles='flatpak run com.usebottles.bottles'
  alias bottles-cli='flatpak run --command=bottles-cli com.usebottles.bottles'
  alias steam='flatpak run com.valvesoftware.Steam'
  alias luanti='flatpak run org.luanti.luanti'
fi

# ~/Applications
alias altersend='AlterSend.AppImage'
alias kiwix='kiwix-desktop_x86_64.appimage'
