#!/usr/bin/env bash

# shellcheck disable=2139

if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" != "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]] || [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
  return
fi

if command -v nvidia-smi >/dev/null 2>&1; then
  export NVIDIA_VARS='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only '
else
  export NVIDIA_VARS=''
fi

# non-flatpak games
alias crawl-tiles="$NVIDIA_VARS"'crawl-tiles'
alias cutechess="$NVIDIA_VARS"'cutechess'
alias kmahjongg="$NVIDIA_VARS"'kmahjongg'
alias kmines="$NVIDIA_VARS"'kmines'
alias kpat="$NVIDIA_VARS"'kpat'
alias ksudoku="$NVIDIA_VARS"'ksudoku'
alias lizzieyzy="$NVIDIA_VARS"'lizzieyzy'
alias sylvan="$NVIDIA_VARS"'sylvan'

# flatpak
alias bottles-cli="$NVIDIA_VARS"'flatpak run --command=bottles-cli com.usebottles.bottles'
alias bottles="$NVIDIA_VARS"'flatpak run com.usebottles.bottles'
alias enteauth='flatpak run io.ente.auth'
alias freecad="$NVIDIA_VARS"'flatpak run org.freecad.FreeCAD'
alias freecadcmd='flatpak run --command=FreeCADCmd org.freecad.FreeCAD'
alias gimp="$NVIDIA_VARS"'flatpak run org.gimp.GIMP'
alias handbrake-cli='flatpak run --command=HandBrakeCLI fr.handbrake.ghb'
alias handbrake='flatpak run fr.handbrake.ghb'
alias jdsp='flatpak run me.timschneeberger.jdsp4linux'
alias kdenlive="$NVIDIA_VARS"'flatpak run org.kde.kdenlive'
alias krita="$NVIDIA_VARS"'flatpak run org.kde.krita'
alias localsend='flatpak run org.localsend.localsend_app'
alias luanti="$NVIDIA_VARS"'flatpak run org.luanti.luanti'
alias musescore="$NVIDIA_VARS"'flatpak run org.musescore.MuseScore'
alias newsflash='flatpak run io.gitlab.news_flash.NewsFlash'
alias onionshare='flatpak run org.onionshare.OnionShare'
alias pied='flatpak run com.mikeasoft.pied'
alias pysolfc="$NVIDIA_VARS"'flatpak run io.sourceforge.pysolfc.PySolFC'
alias reversi="$NVIDIA_VARS"'flatpak run org.gnome.Reversi'
alias steam="$NVIDIA_VARS"'flatpak run com.valvesoftware.Steam'
alias supertux="$NVIDIA_VARS"'flatpak run org.supertuxproject.SuperTux'
alias unciv="$NVIDIA_VARS"'flatpak run io.github.yairm210.unciv'
alias vlc='flatpak run org.videolan.VLC'
alias voyager='flatpak run app.vger.voyager'
alias wesnoth="$NVIDIA_VARS"'flatpak run org.wesnoth.Wesnoth'

alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias bridges='flatpak run --command=bridges uk.org.greenend.chiark.sgtatham.puzzles'
alias cube='flatpak run --command=cube uk.org.greenend.chiark.sgtatham.puzzles'
alias dominosa='flatpak run --command=dominosa uk.org.greenend.chiark.sgtatham.puzzles'
alias fifteen='flatpak run --command=fifteen uk.org.greenend.chiark.sgtatham.puzzles'
alias filling='flatpak run --command=filling uk.org.greenend.chiark.sgtatham.puzzles'
alias flip='flatpak run --command=flip uk.org.greenend.chiark.sgtatham.puzzles'
alias flood='flatpak run --command=flood uk.org.greenend.chiark.sgtatham.puzzles'
alias galaxies='flatpak run --command=galaxies uk.org.greenend.chiark.sgtatham.puzzles'
alias guess='flatpak run --command=guess uk.org.greenend.chiark.sgtatham.puzzles'
alias inertia='flatpak run --command=inertia uk.org.greenend.chiark.sgtatham.puzzles'
alias keen='flatpak run --command=keen uk.org.greenend.chiark.sgtatham.puzzles'
alias lightup='flatpak run --command=lightup uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
alias blackbox='flatpak run --command=blackbox uk.org.greenend.chiark.sgtatham.puzzles'
