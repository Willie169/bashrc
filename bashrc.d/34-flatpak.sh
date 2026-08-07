#!/usr/bin/env bash

if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" != "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]] || [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
	return
fi

alias vokoscreenNG='flatpak run com.github.vkohaupt.vokoscreenNG'
alias bottles='flatpak run com.usebottles.bottles'
alias bottles-cli='flatpak run --command=bottles-cli com.usebottles.bottles'
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
alias luanti='flatpak run org.luanti.luanti'
alias musescore='flatpak run org.musescore.MuseScore'
alias vlc='flatpak run org.videolan.VLC'
alias pied='flatpak run com.mikeasoft.pied'
