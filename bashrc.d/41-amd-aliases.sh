#!/usr/bin/env bash

# shellcheck disable=2139

if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" != "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]] || [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
  return
fi

if command -v nvidia-smi >/dev/null 2>&1; then
  nvidia_vars='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only '
else
  nvidia_vars=''
fi

# flatpak
alias bottles-cli="$nvidia_vars"'flatpak run --command=bottles-cli com.usebottles.bottles'
alias bottles="$nvidia_vars"'flatpak run com.usebottles.bottles'
alias enteauth='flatpak run io.ente.auth'
alias freecad="$nvidia_vars"'flatpak run org.freecad.FreeCAD'
alias freecadcmd='flatpak run --command=FreeCADCmd org.freecad.FreeCAD'
alias gimp="$nvidia_vars"'flatpak run org.gimp.GIMP'
alias handbrake-cli='flatpak run --command=HandBrakeCLI fr.handbrake.ghb'
alias handbrake='flatpak run fr.handbrake.ghb'
alias jdsp='flatpak run me.timschneeberger.jdsp4linux'
alias kdenlive="$nvidia_vars"'flatpak run org.kde.kdenlive'
alias krita="$nvidia_vars"'flatpak run org.kde.krita'
alias localsend='flatpak run org.localsend.localsend_app'
alias luanti="$nvidia_vars"'flatpak run org.luanti.luanti'
alias musescore="$nvidia_vars"'flatpak run org.musescore.MuseScore'
alias newsflash='flatpak run io.gitlab.news_flash.NewsFlash'
alias onionshare='flatpak run org.onionshare.OnionShare'
alias pied='flatpak run com.mikeasoft.pied'
alias puzzles="$nvidia_vars"'flatpak run uk.org.greenend.chiark.sgtatham.puzzles'
alias pysolfc="$nvidia_vars"'flatpak run io.sourceforge.pysolfc.PySolFC'
alias reversi="$nvidia_vars"'flatpak run org.gnome.Reversi'
alias steam="$nvidia_vars"'flatpak run com.valvesoftware.Steam'
alias supertux="$nvidia_vars"'flatpak run org.supertuxproject.SuperTux'
alias unciv="$nvidia_vars"'flatpak run io.github.yairm210.unciv'
alias vlc='flatpak run org.videolan.VLC'
alias voyager='flatpak run app.vger.voyager'
