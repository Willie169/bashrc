#!/usr/bin/env bash

phice() {
	(
		local port="${1:-5001}"
		cd ~/phice && uv run gunicorn -b 127.0.0.1:"$port" -w 4 "app:app"
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
		cd /usr/share/LaTeX-ToolKit || exit
		sudo git reset --hard
		sudo git clean -d --force
		sudo git pull --rebase
		cd ~/texmf/tex/latex/physics-patch || exit
		git reset --hard
		git clean -d --force
		git pull --rebase
	)
}

update_bashrc() {
	(
		wget -qO- https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/install.sh | sh
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
		sudo rm -f /usr/local/bin/apktool || true
		wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
		chmod +x apktool
		sudo mv apktool /usr/local/bin/
		sudo rm -f /usr/local/bin/apktool_*.jar || true
		gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' iBotPeaches/Apktool 'apktool_*.jar'
		chmod +x apktool_*.jar
		sudo mv apktool_*.jar /usr/local/bin/
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
		gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' gulp79/rclone-extra rclone-linux-amd64.zip
		unzip rclone-linux-amd64.zip
		rm rclone-linux-amd64.zip*
		mv rclone ~/.local/bin/
		gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' rustdesk/rustdesk 'rustdesk-*-x86_64.deb'
		sudo apt install ./rustdesk-*-x86_64.deb -y
		rm rustdesk-*-x86_64.deb*
		rm -f ~/.local/bin/adb
		rm -f ~/.local/bin/scrcpy
		gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' Genymobile/scrcpy 'scrcpy-linux-x86_64-*.tar.gz'
		tar -xzf scrcpy-linux-x86_64-*.tar.gz
		mv scrcpy-linux-x86_64-*/adb ~/.local/bin/
		mv scrcpy-linux-x86_64-*/scrcpy ~/.local/bin/
		rm -r scrcpy-linux-x86_64-*
		gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' TheAssassin/AppImageLauncher 'appimagelauncher_*-*.*_amd64.deb'
		sudo apt install ./appimagelauncher_*-*.*_amd64.deb -y
		rm appimagelauncher_*-*.*_amd64.deb*
		update_config
		update_nvim_config_full
	)
}

update_pied() {
	(
		cd ~ || exit
		gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' Elleo/pied com.mikeasoft.pied.flatpak
		sudo flatpak install com.mikeasoft.pied.flatpak -y || true
		rm com.mikeasoft.pied.flatpak*
	)
}

update_pm() {
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
}

update_all() {
	update_bashrc
	source ~/.bashrc
	update_pm
	update_texlive
	update_latex
	update_tools
	update_pied
}

bind_waydroid() {
	(
		sudo mkdir -p /mnt/waydroid
		sudo bindfs --mirror="$(id -u)" "$HOME"/.local/share/waydroid/data/media/0 /mnt/waydroid
	)
}

rvs() {
	if (($# == 0)); then
		remote-viewer spice://127.0.0.1:5930
	else
		remote-viewer spice://127.0.0.1:"$1"
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
