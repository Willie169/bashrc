#!/usr/bin/env bash

phice() {
	(
		local port="${1:-5001}"
		cd ~/phice && uv run gunicorn -b 127.0.0.1:"$port" -w 4 "app:app"
	)
}

lizzieyzy() {
	(
		cd $HOME/.local/share/lizzieyzy && java -jar lizzie-yzy.jar "$@"
	)
}

clean_disk() {
	sudo journalctl --vacuum-time=7d
	sudo systemd-tmpfiles --clean
	rm -rf ~/.cache/*
	sudo apt autoremove -y
	sudo apt clean
	sudo apt autoclean
	flatpak uninstall --unused -y || true
	brew update
	echo y | brew upgrade
	echo y | brew autoremove
	brew cleanup
}

update_texlive() {
	sudo /usr/local/texlive/2026/bin/x86_64-linux/tlmgr update --all --self --reinstall-forcibly-removed
}

update_latex() {
	(
		cd /usr/share/LaTeX-ToolKit
		sudo git reset --hard
		sudo git clean -d --force
		sudo git pull --rebase
		cd ~/texmf/tex/latex/physics-patch
		git reset --hard
		git clean -d --force
		git pull --rebase
	)
}

update_vim_config() {
	(
		sh ~/.vim_runtime/update.sh
	)
}

update_nvim_config() {
	(
		sh ~/.config/nvim/update.sh
	)
}

update_lizzieyzy_config() {
	(
		mkdir -p $HOME/.local/share/lizzieyzy
		rm $HOME/.local/share/lizzieyzy/config.txt 2>/dev/null || true
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/lizzieyzy/config.txt -O $HOME/.local/share/lizzieyzy/config.txt
		sed -i "s|\$((\$(nproc)/2))|$(($(nproc) / 2))|g; s|\$(nproc)|$(nproc)|g; s|\$HOME|$HOME|g; s|\$(hostname)|$(hostname)|g" $HOME/.local/share/lizzieyzy/config.txt
	)
}

update_cutechess_config() {
	(
		mkdir -p $HOME/.config/cutechess
		rm $HOME/.config/cutechess/engines.json 2>/dev/null || true
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/cutechess/engines.json -O $HOME/.config/cutechess/engines.json
		sed -i "s|\$(nproc)|$(nproc)|g; s|\$HOME|$HOME|g" $HOME/.config/cutechess/engines.json
	)
}

update_sylvan_config() {
	(
		mkdir -p $HOME/.config/EterCyber
		rm $HOME/.config/EterCyber/engines.json 2>/dev/null || true
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/sylvan/engines.json -O $HOME/.config/EterCyber/engines.json
		sed -i "s|\$(nproc)|$(nproc)|g; s|\$HOME|$HOME|g" $HOME/.config/EterCyber/engines.json
	)
}

update_tools() {
	(
		cd ~ || exit
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' yt-dlp/yt-dlp yt-dlp
		chmod +x yt-dlp
		mv yt-dlp ~/.local/bin/
		sudo rm -f /usr/local/bin/apktool || true
		wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
		chmod +x apktool
		sudo mv apktool /usr/local/bin/
		sudo rm -f /usr/local/bin/apktool_*.jar || true
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' iBotPeaches/Apktool 'apktool_*.jar'
		chmod +x apktool_*.jar
		sudo mv apktool_*.jar /usr/local/bin/
		rm -rf ~/jadx
		mkdir jadx
		cd jadx || exit
		gh_latest_r -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' skylot/jadx 'jadx-[0-9\.]*\.zip'
		unzip jadx*.zip
		rm jadx*.zip
		chmod +x bin/jadx
		chmod +x bin/jadx-gui
		cd ~ || exit
		rm -f ~/.local/bin/superhtml
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' kristoff-it/superhtml x86_64-linux-musl.tar.xz
		tar -xJf x86_64-linux-musl.tar.xz
		rm x86_64-linux-musl.tar.xz
		mv superhtml ~/.local/bin/
		sudo rm -rf /usr/local/java/ClipCascade-Server-JRE_21.jar
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' Sathvik-Rao/ClipCascade ClipCascade-Server-JRE_21.jar
		sudo mv ClipCascade-Server-JRE_21.jar /usr/local/java/
		cp ~/ClipCascade/DATA ~/.ClipCascade.DATA || true
		rm -rf ~/ClipCascade
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' Sathvik-Rao/ClipCascade ClipCascade_Linux.tar.xz
		tar -xJf ClipCascade_Linux.tar.xz
		rm ClipCascade_Linux.tar.xz
		[ -f ~/.ClipCascade.DATA ] && mv ~/.ClipCascade.DATA ~/ClipCascade/DATA
		rm -f ~/.local/bin/rclone
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' gulp79/rclone-extra rclone-linux-amd64.zip
		unzip rclone-linux-amd64.zip
		rm rclone-linux-amd64.zip*
		mv rclone ~/.local/bin/
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' rustdesk/rustdesk 'rustdesk-*-x86_64.deb'
		sudo apt install ./rustdesk-*-x86_64.deb -y
		rm rustdesk-*-x86_64.deb*
		rm -f ~/.local/bin/adb
		rm -f ~/.local/bin/scrcpy
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' Genymobile/scrcpy 'scrcpy-linux-x86_64-*.tar.gz'
		tar -xzf scrcpy-linux-x86_64-*.tar.gz
		mv scrcpy-linux-x86_64-*/adb ~/.local/bin/
		mv scrcpy-linux-x86_64-*/scrcpy ~/.local/bin/
		rm -r scrcpy-linux-x86_64-*
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' TheAssassin/AppImageLauncher 'appimagelauncher_*-*.*_amd64.deb'
		sudo apt install ./appimagelauncher_*-*.*_amd64.deb -y
		rm appimagelauncher_*-*.*_amd64.deb*
	)
}

update_pied() {
	(
		cd ~
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' Elleo/pied com.mikeasoft.pied.flatpak
		sudo flatpak install com.mikeasoft.pied.flatpak -y || true
		rm com.mikeasoft.pied.flatpak*
	)
}

update_bashrc() {
	(
		cd ~
		rm -f .bashrc 2>/dev/null || true
		rm -rf .bashrc.d 2>/dev/null || true
		mkdir .bashrc.d
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
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/bashrc -O ~/.bashrc
	)
}

update_all() {
	sudo -v
	while true; do
		sudo -nv
		sleep 29
	done &
	SUDOPIDFIRST=$!
	while true; do
		sudo -nv
		sleep 31
	done &
	SUDOPIDSECOND=$!
	sudo apt update
	sudo apt upgrade -y
	sudo apt autoremove -y
	sudo apt clean
	sudo apt autoclean
	echo y | sudo ubuntu-drivers install || true
	echo y | sudo ubuntu-drivers install || true
	echo y | sudo ubuntu-drivers install || true
	echo y | sudo ubuntu-drivers autoinstall || true
	echo y | sudo ubuntu-drivers autoinstall || true
	echo y | sudo ubuntu-drivers autoinstall || true
	flatpak update -y || true
	flatpak uninstall --unused -y || true
	sudo snap refresh || true
	brew update
	echo y | brew upgrade
	echo y | brew autoremove
	brew cleanup
	uv self update
	uv tool upgrade --all
	npm i -g npm
	npm update -g
	update_texlive
	update_latex
	update_vim_config
	update_nvim_config
	update_lizzieyzy_config
	update_cutechess_config
	update_sylvan_config
	update_tools
	update_pied
	update_bashrc
	kill "$SUDOPIDFIRST"
	kill "$SUDOPIDSECOND"
}

bind_waydroid() {
	(
		sudo mkdir -p /mnt/waydroid
		sudo bindfs --mirror=$(id -u) ~/.local/share/waydroid/data/media/0 /mnt/waydroid
	)
}

rvs() {
	if (($# == 0)); then
		remote-viewer spice://127.0.0.1:5930
	else
		remote-viewer spice://127.0.0.1:"$@"
	fi
}

dns_down() {
	sudo tee /etc/systemd/resolved.conf.d/resolved.conf >/dev/null <<'EOF'
[Resolve]
DNS=127.0.0.1
EOF
	sudo systemctl restart systemd-resolved
}

dns_up() {
	sudo tee /etc/systemd/resolved.conf.d/resolved.conf >/dev/null <<'EOF'
[Resolve]
DNS=127.0.0.1
FallbackDNS=1.1.1.1:53 1.0.0.1:53 2606:4700:4700::1111:53 2606:4700:4700::1001:53 94.140.14.140:53 94.140.14.141:53 2a10:50c0::1:ff:53 2a10:50c0::2:ff:53
Domains=~.
EOF
	sudo systemctl restart systemd-resolved
}

update_combinedfox() {
	./prefsCleaner.sh -s && ./overrides-updater.sh -su && ./updater.sh -su
}

prime-run() {
	__NV_PRIME_RENDER_OFFLOAD=1 \
		__GLX_VENDOR_LIBRARY_NAME=nvidia \
		__VK_LAYER_NV_optimus=NVIDIA_only \
		"$@"
}
