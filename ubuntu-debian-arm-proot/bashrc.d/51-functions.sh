#!/usr/bin/env bash

lizzieyzy() {
	(
		cd $HOME/.local/share/lizzieyzy && java -jar lizzie-yzy.jar "$@"
	)
}

clean_disk() {
	rm -rf ~/.cache/*
	logrotate /etc/logrotate.conf
	apt autoremove -y
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
		cd /usr/share/LaTeX-ToolKit
		git reset --hard
		git clean -d --force
		git pull --rebase
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
		rm -f /usr/local/bin/apktool || true
		wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
		chmod +x apktool
		mv apktool /usr/local/bin/
		rm -f /usr/local/bin/apktool_*.jar || true
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' iBotPeaches/Apktool 'apktool_*.jar'
		chmod +x apktool_*.jar
		mv apktool_*.jar /usr/local/bin/
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
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' kristoff-it/superhtml aarch64-linux.tar.xz
		tar -xJf aarch64-linux.tar.xz
		rm aarch64-linux.tar.xz
		mv superhtml ~/.local/bin/
		rm -f ~/.local/bin/rclone
		gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' gulp79/rclone-extra rclone-linux-arm64.zip
		unzip rclone-linux-arm64.zip
		rm rclone-linux-arm64.zip*
		mv rclone ~/.local/bin/
	)
}

update_bashrc() {
	(
		cd ~
		rm -f .bashrc 2>/dev/null || true
		rm -rf .bashrc.d 2>/dev/null || true
		mkdir .bashrc.d
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/00-env.sh -O ~/.bashrc.d/00-env.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/10-exports.sh -O ~/.bashrc.d/10-exports.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/15-color.sh -O ~/.bashrc.d/15-color.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/20-aliases.sh -O ~/.bashrc.d/20-aliases.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/21-cxx.sh -O ~/.bashrc.d/21-cxx.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/22-java.sh -O ~/.bashrc.d/22-java.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/23-vnc.sh -O ~/.bashrc.d/23-vnc.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/50-functions.sh -O ~/.bashrc.d/50-functions.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/60-completion.sh -O ~/.bashrc.d/60-completion.sh
		wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-debian-arm-proot/bashrc.d/bashrc -O ~/.bashrc
	)
}

update_all() {
	apt update
	apt upgrade -y
	apt autoremove -y
	apt clean
	apt autoclean
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
	update_bashrc
}
